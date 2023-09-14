<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="cv_proje.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h4>Mesaj Detayları</h4>


    <asp:TextBox ID="txtadsoyad" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
     <asp:TextBox ID="txtmail" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
     <asp:TextBox ID="txtkonu" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
    <br />
     <asp:TextBox ID="txtmesaj" TextMode="MultiLine" Height="100px" runat="server"  Enabled="false" CssClass="form-control"></asp:TextBox>


</asp:Content>
