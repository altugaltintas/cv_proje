<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="cv_proje.Hakkımda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px;">
        <tr>
            <th>ID</th>
            <th>Yetenek</th>
            <th>Sil</th>
            <th>Güncelle</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("ıd") %></td>
                    <td><%#Eval("yetenek") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"Yeteneksil.aspx?ıd="+Eval("ıd")%>' CssClass="btn btn-danger">Sil</asp:HyperLink>
                    </td>

                    <td><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"YetenekGüncelle.aspx?ıd="+Eval("ıd")%>' CssClass="btn btn-success">Güncelle</asp:HyperLink></td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    <a href="yeniyetenek.aspx" class="btn btn-primary" style="margin-left: 20px;">Yeni Yetenek</a>
</asp:Content>
