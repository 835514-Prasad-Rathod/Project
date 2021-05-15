<%@ Page Title="" Language="C#" MasterPageFile="~/Touristchoice.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <div style="height: 357px; width: 1241px; margin-right: 0px;">
        <table style="width: 100%; height: 108px">
            <tr>
                <td>
                    <img alt="" src="Photos/12kamaan.jpg" style="width: 148px; height: 122px" /><img alt="" src="Photos/hotel%20megharaj.jpg" style="width: 206px; height: 123px" /><img alt="" src="Photos/kyrid%20hote.jpg" style="width: 224px; height: 123px; margin-top: 0px" /><img alt="" src="Photos/IMG_20190224_115235.jpg" style="width: 244px; height: 123px" /><img alt="" src="Photos/IMG_20190224_115225.jpg" style="width: 220px; height: 123px" /><img alt="" src="Photos/IMG_20190224_115125.jpg" style="width: 181px; height: 123px" /></td>
            </tr>
        </table>
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Lime" PostBackUrl="~/History.aspx">History of Vijayaour</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Red" PostBackUrl="~/Reachvijayapur.aspx">How to Reach Bijapur</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" ForeColor="#FF33CC" PostBackUrl="~/Tourist Reviews.aspx">Tourist Reviews</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/map.aspx">Map</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server"> Back</asp:HyperLink>
    </div>
</div>
</asp:Content>

 