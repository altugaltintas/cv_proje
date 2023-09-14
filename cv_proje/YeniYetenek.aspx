<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="cv_proje.YeniYetenek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yeni yetenek ekleme sayfası</h4>
    <br />

  
    <div style="display: flex; flex-direction: row;">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Yetenek Açıklama" Width="800px" style="margin-left:20px;"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Derece" Width="200"></asp:TextBox>    
   </div>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click" Width="131px" style="margin-left:20px;" />
    
</asp:Content>
