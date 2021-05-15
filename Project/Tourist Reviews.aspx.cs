using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class Default9 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4AD3360\SQLEXPRESS;Initial Catalog=vijayapur;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
       SqlCommand cmd = new SqlCommand("insert into Reviews(Touristname,Reviews) values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
       cmd.ExecuteNonQuery();
       Label3.Text = "Reviews Submitted Succesfully";
       con.Close();
       TextBox2.Text = " ";
       TextBox1.Text = " ";
    }
    }