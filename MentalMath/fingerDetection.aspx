<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fingerDetection.aspx.cs" Inherits="MentalMath.fingerDetection" %>
<asp:Content ID="headContent" ContentPlaceHolderID="headMain" runat="server">
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
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
    <asp:HiddenField ID="hf" runat="server" ClientIDMode="Static" />
    <asp:HiddenField ID="result" runat="server" OnValueChanged="result_ValueChanged" ClientIDMode="Static" />


    <span id="text" style="font-size:20px;color:red"></span>

    <br />
    <span id="verifyans"></span> 
        <br />
        <br />
        <asp:Button ID="submit" runat="server" ClientIDMode="Static" OnClick="submit_Click" Text="Button" />

    </div>
  </div>
</div> 
    <script src="Scripts/mp7.js"></script>
</asp:Content>
