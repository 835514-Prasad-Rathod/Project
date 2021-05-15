using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4AD3360\SQLEXPRESS;Initial Catalog=vijayapur;Integrated Security=True");
 protected void Page_Load(object sender, EventArgs e)
    {
     if (!IsPostBack)
     {
         Calendar1.Visible = false;
    }
 }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into bookingdetails(name,date,members) values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox2.Text + "')", con);
        cmd.ExecuteNonQuery();
        Label8.Text = "successfully booked ";
        con.Close();
        TextBox2.Text = " ";
        TextBox1.Text = " ";
        TextBox3.Text = " ";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
        {
            Calendar1.Visible = true;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox3.Text = Calendar1.SelectedDate.ToString();
        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}