<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WEBAPP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
Welcome To Login Page..
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<form id="form1" runat="server">
        <div>
            UserId<asp:TextBox ID="login" runat="server"></asp:TextBox><br />
            Password<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem> Faculty</asp:ListItem>
            </asp:DropDownList>
        </div>
            <asp:Button ID="Button1" runat="server" Text="Submit" Onclick="Button1_Click1" />
                </form> 
</center>
</asp:Content>
