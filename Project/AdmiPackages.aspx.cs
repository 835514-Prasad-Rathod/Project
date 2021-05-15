using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class Default11 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4AD3360\SQLEXPRESS;Initial Catalog=vijayapur;Integrated Security=True");
     protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into PackageTable_1(Packagename,PackageDescription,Amount) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
        cmd.ExecuteNonQuery();
        Label4.Text = "successfully inserted";
        con.Close();
        TextBox1.Text = " ";
        TextBox2.Text = " ";
        TextBox3.Text = " ";
    
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}