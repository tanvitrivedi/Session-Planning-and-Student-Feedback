<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WEBAPP.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Welcome to Registration Page...
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
Enter id:<asp:TextBox ID="reg_id" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="ID Required" ControlToValidate ="reg_id" ></asp:RequiredFieldValidator>
<br />
Password:<asp:TextBox ID="reg_pass" runat="server" TextMode="Password"></asp:TextBox><br />
Confirm Password:<asp:TextBox ID="reg_cpass" runat="server" TextMode="Password"></asp:TextBox>
<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password doesnt match" ControlToValidate="reg_cpass" ControlToCompare="reg_pass"></asp:CompareValidator>
<br />
Date:<asp:TextBox ID="day_today" runat="server"></asp:TextBox>
<br />
<asp:Button ID="Button1" runat="server" Text="Submit" Onclick="reg_button" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:adConnectionString %>" SelectCommand="SELECT * FROM [data]"></asp:SqlDataSource>
</form>
</asp:Content>
