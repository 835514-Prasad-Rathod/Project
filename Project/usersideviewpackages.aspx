<%@ Page Title="" Language="C#" MasterPageFile="~/Touristchoice.master" AutoEventWireup="true" CodeFile="usersideviewpackages.aspx.cs" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 1008px; margin-left: 91px">
        <div style="height: 403px; margin-left: 0px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="330px" Width="761px">
                <Columns>
                    <asp:BoundField DataField="Packagename" HeaderText="Packagename" SortExpression="Packagename" />
                    <asp:BoundField DataField="PackageDescription" HeaderText="PackageDescription" SortExpression="PackageDescription" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/usersideBookig.aspx" Text="Book Here"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    <asp:Button ID="Button1" runat="server" PostBackUrl="~/usersideBookig.aspx" Text="Button" OnClick="Button1_Click" />
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vijayapurConnectionString %>" SelectCommand="SELECT * FROM [touristpackages1]"></asp:SqlDataSource>
            <asp:HyperLink ID="HyperLink1" runat="server"> Back</asp:HyperLink>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

