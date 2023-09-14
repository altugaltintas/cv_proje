<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YetenekGüncelle.aspx.cs" Inherits="cv_proje.YetenekGüncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <h4>Yetenek güncelleme sayfası</h4>
    <br />

  
    <div style="display: flex; flex-direction: row;">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yetenek Açıklama" Width="800px" style="margin-left:20px;"></asp:TextBox>
     </div>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-group"  style="margin-left:20px;" OnClick="Button1_Click" />


</asp:Content>
