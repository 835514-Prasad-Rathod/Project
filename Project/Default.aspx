<%@ Page Title="" Language="C#" MasterPageFile="~/Touristchoice.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div>
<table style=" border:1px solid" align="center">
<tr>
<td colspan="2" align="center">
<b>Send Mail using gmail credentials in asp.net</b>
</td>
</tr>
<tr>
<td>
Gmail Username:
</td>
<td>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter Valida Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td>
Gmail Password:
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Subject:
</td>
<td>
<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
To:
</td>
<td>
<asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtTo" ErrorMessage="Enter Valida Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</td>
</tr>
<tr>
<td valign="top">
Body:
</td>
<td>
<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" Text="Send" runat="server" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
</div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

