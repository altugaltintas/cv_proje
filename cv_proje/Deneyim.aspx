<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Deneyim.aspx.cs" Inherits="cv_proje.Deneyim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-bordered" style="margin-left: 20px; margin-right:auto;">
        <tr>
            <th>ID</th>
            <th>Ad-Soyad</th>
            <th>Eğitim</th>
            <th>İş deneyim</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <asp:Repeater ID="Repeater2" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ıd") %></td>
                    <td><%#Eval("bilgiler") %></td>
                    <td><%#Eval("egitim") %></td>
                    <td><%#Eval("isdeneyim") %></td>
                    <td><a href="#" class="btn btn-danger">Sil</a></td>
                    <td><a href="#" class="btn btn-success">Güncelle</a></td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
</asp:Content>
