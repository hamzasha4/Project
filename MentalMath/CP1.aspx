<%@ Page Title="Qs" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CP1.aspx.cs" Inherits="MentalMath.CP1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   
    <div class="text-center">

        <br />
        <asp:Label ID="QuestionTextBox" runat="server" Text="" ClientIDMode="Static"></asp:Label>
        <br />
        <br />
        -<asp:TextBox ID="AnswerTextBox" runat="server" ClientIDMode="Static"></asp:TextBox>
        
        <br />
        <br />
        <input id="checkbutton" type="button" value="Check" autofocus="autofocus" onclick="myfunc()"/><br />

        <br />
        <br />
        <asp:Button ID="SubmitButton" runat="server" OnClick="Button1_Click" Text="Next" />

    </div>

    <script>

        function myfunc() {
            var qs = document.getElementById("QuestionTextBox").textContent;
            var num = "";
            sum = 0;
            for (var i = 0; i < qs.length; qs++) {
                if (qs[i] != "" || qs[i] != "+") {
                    num = num + qs[i];
                }
                    
                else if(qs[i] == '+') {
                    sum = sum + parseInt(num);
                    num = "";
                }
        
            }
            alert(sum);
        }
    </script>
   
</asp:Content>
