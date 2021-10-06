const videoElement = document.getElementsByClassName('input_video')[0];
const canvasElement = document.getElementsByClassName('output_canvas')[0];
const canvasCtx = canvasElement.getContext('2d');
const text = document.getElementById("text");
const canvas = document.querySelector("#c");
var check = true;
const q = document.getElementById("hf");
alert(q.value);
const qbox = document.getElementById("Questions");
var myTimer;
const qobj = JSON.parse(q.value);

const verifyans = document.getElementById("verifyans");
const resultbox = document.getElementById("result");
const button = document.getElementById("submit");
var quizcompleted = false;
canvas.style.width = '100%';
canvas.width = canvas.offsetWidth;
canvas.height = window.innerHeight / 1.5;

var qcount = 0;
var check_count = 0;

var timeleft = 10;


scores = []


function timeCount() {

    if (timeleft <= 0) {
        clearInterval(myTimer);
        myTimer = setInterval(timeCount, 1000);
        timeleft = 10;
        score = { id: qobj[qcount].id, result: false }
        scores.push(score);
        qcount++;
        verifyans.textContent = "Wrong";
    }


    else {
        document.getElementById("time").innerHTML = timeleft + " seconds remaining";

    }
    timeleft -= 1;
}

function getCount(landmarks, isRightHand) {
    var thumb = false;
    var index = false;
    var middle = false;
    var fore = false;
    var pinky = false;
    var count = 0;


    if (isRightHand) {
        if (landmarks[3].y > landmarks[4].y && landmarks[3].x <= landmarks[4].x) {
            thumb = true;
        }
    }
    else if (!isRightHand) {
        if (landmarks[3].y > landmarks[4].y && landmarks[3].x >= landmarks[4].x) {
            thumb = true;
        }
    }
    if (landmarks[6].y > landmarks[8].y) {
        index = true;
    }
    if (landmarks[10].y > landmarks[12].y) {
        middle = true;
    }
    if (landmarks[14].y > landmarks[16].y) {
        fore = true;
    }
    if (landmarks[19].y > landmarks[20].y) {
        pinky = true;
    }


    if (index  && middle == false && fore == false && pinky == false) {
        count = 1;
        if (thumb == true) { count = count + 5; }

    }

    if (index == true && middle == true && fore == false && pinky == false) {
        count = 2;
        if (thumb == true) { count = count + 5; }
    }

    if (index == true && middle == true && fore == true && pinky == false) {
        count = 3;
        if (thumb == true) { count = count + 5; }
    }

    if (index == true && middle == true && fore == true && pinky == true) {
        count = 4;
        if (thumb == true) { count = count + 5; }
    }
    if (thumb == true && index == false && middle == false && fore == false && pinky == false) {
        count = 5;
    }

    if (isRightHand) {
        return count;
    }
    else if (!isRightHand) {
        return count * 10;
    }

}

function onResults(results) {
    if (check) {
        qbox.textContent = qobj[qcount].question
        myTimer = setInterval(timeCount, 1000);
        check = false;
        var element = document.getElementById("loaddiv");
        element.classList.add("hidden");
    }
    
    videoElement.width = 0;
    canvasCtx.save();
    canvasCtx.clearRect(0, 0, canvasElement.width, canvasElement.height);
    canvasCtx.drawImage(
        results.image, 0, 0, canvasElement.width, canvasElement.height);

    var count = 0;
    var count_ten = 0;
    if (results.multiHandLandmarks && results.multiHandedness) {

        for (let i = 0; i < results.multiHandLandmarks.length; i++) {
            const classification = results.multiHandedness[i];
            const isRightHand = classification.label === 'Left';
            const landmarks = results.multiHandLandmarks[i];


            if (isRightHand) {
                count = getCount(landmarks, isRightHand);

            }

            if (!isRightHand) {
                count_ten = getCount(landmarks, isRightHand);
            }

            drawConnectors(
                canvasCtx, landmarks, HAND_CONNECTIONS,
                { color: isRightHand ? '#00FF00' : '#FF0000' }),
                drawLandmarks(canvasCtx, landmarks, {
                    color: isRightHand ? '#00FF00' : '#FF0000',
                    fillColor: isRightHand ? '#FF0000' : '#00FF00',
                    radius: (x) => {
                        return lerp(x.from.z, -0.15, .1, 10, 1);
                    }
                });
        }
    }

    var detectValue = count_ten + count;
    console.log(detectValue);

    if (qcount < qobj.length) {
        if (detectValue == parseInt(qobj[qcount].ans)) {
            check_count++;
            if (check_count >= 10) {
                verifyans.textContent = "Correct";
                score = { id: qobj[qcount].id, result: true }
                scores.push(score);
                qcount++;
                check_count = 0;
                clearInterval(myTimer);
                myTimer = setInterval(timeCount, 1000);
                timeleft = 10;
            }
        }
        else {
            check_count = 0;
        }
    }

    if (qcount < qobj.length) {
        qbox.textContent = qobj[qcount].question;


    }
    else {
        qbox.textContent = "Quiz Completed"
        quizcompleted = true
        resultbox.value = JSON.stringify(scores);
        if (check == true) {
            submit.click();
            check = false;

        }

    }


    var c = count_ten + count;
    text.innerHTML = c.toString();
    canvasCtx.restore();
}

const hands = new Hands({
    locateFile: (file) => {
        return `https://cdn.jsdelivr.net/npm/@mediapipe/hands/${file}`;
    }
});
hands.setOptions({
    maxNumHands: 2,
    minDetectionConfidence: 0.5,
    minTrackingConfidence: 0.5
});
hands.onResults(onResults);

const camera = new Camera(videoElement, {
    onFrame: async () => {
        await hands.send({ image: videoElement });
    },
    width: 1280,
    height: 720
});
camera.start();