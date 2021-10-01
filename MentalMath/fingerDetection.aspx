<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fingerDetection.aspx.cs" Inherits="MentalMath.fingerDetection" %>
<asp:Content ID="headContent" ContentPlaceHolderID="headMain" runat="server">
      <style>
      canvas {
          -webkit-transform: scaleX(-1);
          transform: scaleX(-1);
      }
      video {
          -webkit-transform: scaleX(-1);
          transform: scaleX(-1);
      }
  </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />


<div class="container">
  <div class="row">
    <div class="col-sm-8">
    <video class="input_video" width="0">Loading</video>
    <canvas class="output_canvas" id="c"></canvas>
    </div>
    <div class="col-sm-4 text-center">
    <br />
    <asp:label ID="Questions" runat="server" ClientIDMode="Static"></asp:label>
    <br />
    <asp:HiddenField ID="hf" runat="server" ClientIDMode="Static" />
    <span id="text" style="font-size:20px;color:red"></span>
    <br />
    <span id="verifyans"></span> 
    </div>
  </div>
</div> 
    <script src="Scripts/mp2.js"></script>
</asp:Content>
