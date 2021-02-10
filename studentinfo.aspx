<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentinfo.aspx.cs" Inherits="WEBAPP.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    Student information!!
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
         <h3>Display data by subject</h3>
           <select ID ="sub" runat="server">
            <option value="selected" selected disabled>Search by Subject</option>
           <option value="subject1"> Subject 1</option>
           <option value="subject2"> Subject 2 </option>
       </select><br />
        <h3> Display by Userid/Enrollnment No.</h3>
        <asp:TextBox runat="server" ID="enroll"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="search" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
       </form>
</asp:Content>
