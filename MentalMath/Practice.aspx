<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Practice.aspx.cs" Inherits="MentalMath.Practice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMain" runat="server">
<style>
        .loader {
            position: absolute;
            left: 50%;
            top: 50%;
            z-index: 1;
            width: 120px;
            height: 120px;
            margin: -76px 0 0 -76px;
              border-top: 16px solid blue;
             border-right: 16px solid green;
             border-bottom: 16px solid red;
             border-left: 16px solid pink;
            border-radius: 50%;
            border-top: 16px solid #3498db;
            -webkit-animation: spin 2s linear infinite;
            animation: spin 2s linear infinite;
        }

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
        .hidden {
            display: none;
        }
    
    #overlay {
        position: fixed;
        display: none;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0,0,0,0.8);
        z-index: 2;
        cursor: pointer;
    }
  #images{
  position: fixed;
  top: 50%;
  left: 50%;
  font-size: 50px;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
         }
</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<div class="container">
<div class="loader" id="loaddiv"></div>
  <div class="row">
    <div class="col-sm-8">
    <video class="input_video" width="0">Loading</video>
    <canvas class="output_canvas" id="c"></canvas>
    </div>
    <div class="col-sm-4 text-center">
    <br />
    <span id="time"></span> <br />
    <asp:label ID="Questions" runat="server" ClientIDMode="Static"></asp:label>
    <br />
    <span id="text" style="font-size:20px;color:red"></span>
    <br />
        
        <span id="verifyans"></span><br />
        <br />
        <input id="hint" type="button" value="Hint" onclick="showHint()"/>
        <div id="overlay" onclick="off()">
            <div id="images">
            <img id="tenImage" src="" />
            <img src="" id="unitImage"/>
        </div>
        </div>
    </div>
  </div>
</div> 
    <script src="Scripts/mp_practice.js"></script>
</asp:Content>
