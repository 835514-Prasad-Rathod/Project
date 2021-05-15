<%@ Page Title="" Language="C#" MasterPageFile="~/Touristchoice.master" AutoEventWireup="true" CodeFile="Usersideplaces.aspx.cs" Inherits="Default8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="height: 260px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="238px">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                <asp:BoundField DataField="placefame" HeaderText="placefame" SortExpression="placefame" />
                <asp:ImageField DataImageUrlField="photo" HeaderText="photo">
                </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <asp:Image ID="Image1" runat="server" Height="28px" ImageUrl='<%# Eval("photo") %>' Width="27px" />
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vijayapurConnectionString %>" SelectCommand="SELECT * FROM [placedetails]"></asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/touristdashplan.aspx"> Back</asp:HyperLink>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        +</p>
    <p>
    </p>
</asp:Content>

