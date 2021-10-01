<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lesson1.aspx.cs" Inherits="MentalMath.Lesson1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="text-center">

    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                <asp:Label ID="lblCount" runat="server" />
    <br />
    <br />
    <asp:Image ID="image" runat="server" />
    <br />
    <br />
                <asp:Button Text="Increament counter" OnClick="IncreamentCounter" runat="server" />

         </ContentTemplate>
    </asp:UpdatePanel>
    <br />


</div>
</asp:Content>
