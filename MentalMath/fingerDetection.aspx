<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fingerDetection.aspx.cs" Inherits="MentalMath.fingerDetection" %>
<asp:Content ID="headContent" ContentPlaceHolderID="headMain" runat="server">

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
    <span id="time">00:00</span> <br />
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
