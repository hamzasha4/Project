<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Practice.aspx.cs" Inherits="MentalMath.Practice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headMain" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<div class="container">
  <div class="row">
    <div class="col-sm-8">
    <video class="input_video" width="0">Loading</video>
    <canvas class="output_canvas" id="c"></canvas>
    </div>
    <div class="col-sm-4 text-center">
    <br />
    <span id="time">00:00</span> <br />
    <asp:label ID="Questions" runat="server" ClientIDMode="Static"></asp:label>
    <br />
    <span id="text" style="font-size:20px;color:red"></span>
    <br />
        
        <span id="verifyans"></span><br />
        <br />
        <input id="hint" type="button" value="Hint" onclick="showHint()"/>
        <div class="text-center">
            <img id="tenImage" src="" /></div>
            <img src="" id="unitImage"/>
    </div>
  </div>
</div> 
    <script src="Scripts/mp_practice.js"></script>
</asp:Content>
