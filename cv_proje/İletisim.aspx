<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="cv_proje.İletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <table class="table table-bordered" style="margin-left: 20px; margin-right: 20px;">
        <tr>
            <th>ID</th>
            <th>Ad Soyad</th>
            <th>Mail</th>
            <th>Konu</th>
            <th>Mesajı Gör</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("id")%></td>
                    <td><%#Eval("adsoyad") %></td>
                    <td><%#Eval("mail") %></td>
                    <td><%#Eval("konu") %></td>                
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#"Mesajdetay.aspx?ıd="+Eval("id")%>' CssClass="btn btn-warning" BackColor="#9900FF">Mesajı Gör</asp:HyperLink>
                    </td>

                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
</asp:Content>
