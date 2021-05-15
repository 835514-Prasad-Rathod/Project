using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["vijayapurConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "Select * from Registryy where username='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        sda.SelectCommand = com;
        sda.Fill(ds, "Registryy");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("Touristdashplan.aspx");
        }
        else
        {
            Label3.Text = "Invalid Username and Password";
        }

    }
}