<%@ Page Title="Activity" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Activity.aspx.cs" Inherits="Activity" %>

<%-- Leandra Rios Lab 3
    --On my honor, I pledge to uphold the JMU Honor System. /> --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <br />
        <strong>Leandra Rios<br />
        Activity Information</strong><br />
        &nbsp;<br />
        Activity Description:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="DescriptionTextbox" runat="server"></asp:TextBox>
       
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

            <br />
        <br />
       
        <asp:Button ID="CommitButton" runat="server" Text="Commit" OnClick="CommitButton_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" />
    &nbsp;&nbsp;
        <asp:Button ID="ExitButton" runat="server" Text="Exit" OnClick="ExitButton_Click" />
        &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <br />
                Activity Search:
                <asp:TextBox ID="SearchTextBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SearchButton" runat="server" OnClick="SearchButton_Click" Text="Search" />
        &nbsp;<br />
                <br />
    
                <asp:Label ID="ActivityLabel" runat="server" Text="Activity"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="ActIndLabel" runat="server" Text="ActInd"></asp:Label>&nbsp;&nbsp;<br />
                <br />
&nbsp;&nbsp;&nbsp;<asp:Label ID="NewActiveIndLabel" runat="server" Text="New ActiveInd: "></asp:Label>&nbsp;&nbsp;<br />
                <br />
                <asp:TextBox ID="ActIndUpdateTextbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="SaveButton" runat="server" OnClick="SaveButton_Click" Text="Save" />
&nbsp;&nbsp; <br />
</asp:Content>
