<%@ Page Title="" Language="C#" MasterPageFile="~/Touristchoice.master" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div style="height: 671px; width: 673px">
        +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Admi Dashoard"></asp:Label>
        <br />
        <asp:Menu ID="Menu2" runat="server">
            <Items>
                <asp:MenuItem Text="Hotels" Value="Hotels" NavigateUrl="~/AdmiHotelList.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Add tourist Places" Value="Add tourist Places" NavigateUrl="~/AdmiTouristplaces.aspx"></asp:MenuItem>
                <asp:MenuItem Text="View bookings" Value="View ookigs" NavigateUrl="~/AdmiViewbookigs.aspx"></asp:MenuItem>
                <asp:MenuItem Text="Add Packages" Value="Add Packages" NavigateUrl="~/AdmiPackages.aspx"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle BackColor="White" ForeColor="#663300" VerticalPadding="45px" />
        </asp:Menu>
        
</div>
    </div>
</asp:Content>

