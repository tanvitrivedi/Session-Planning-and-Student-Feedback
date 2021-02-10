<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentpage.aspx.cs" Inherits="WEBAPP.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
Student Data Attendance
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<center>
<h1> Student Feedback along with attendance </h1>
    <form id="form1" runat="server">
        <div>
            Date:<asp:TextBox ID="day_today" runat="server"></asp:TextBox>
           <br /> 
            Subject Topics covered: <asp:TextBox ID="subject1" runat="server" ></asp:TextBox><br />
           Other Feedback: <asp:TextBox ID="feed" runat="server" ></asp:TextBox><br />

           <asp:Button ID="ssubmit_button" runat="server" Text="Submit" OnClick="ssubmit_button_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>    </center>
</asp:Content>
