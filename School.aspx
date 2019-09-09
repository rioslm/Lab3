<%@ Page Title="School" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="School.aspx.cs" Inherits="School" %>

<%-- Leandra Rios Lab 3
    --On my honor, I pledge to uphold the JMU Honor System. /> --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <br />
        <strong>Leandra Rios<br />
        School Information</strong><br />
        &nbsp;<br />
        School Name:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="SchoolNameTextbox" runat="server"></asp:TextBox>

        <br />
        <br />
        School Nickname:&nbsp;
        <asp:TextBox ID="SchoolNicknameTextbox" runat="server" Width="294px"></asp:TextBox>
        <br />
        <br />
            School Address:&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="SchoolAddressTextbox" runat="server" Width="294px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
       
        <asp:Button ID="CommitButton" runat="server" Text="Commit" OnClick="CommitButton_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" />
    &nbsp;&nbsp;
        <asp:Button ID="ExitButton" runat="server" Text="Exit" OnClick="ExitButton_Click" />
        <br />
        <br />

 

</asp:Content>

