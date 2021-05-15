using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn  = new SqlConnection(ConfigurationManager.ConnectionStrings["vijayapurConnectionString"].ConnectionString);            
        conn.Open();

            try
            {
                string insertquery = "INSERT INTO Registryy(username,first_name,last_name,email,address,mobile,password)values(@username,@first_name,@last_name,@email,@address,@mobile,@password)";
                SqlCommand Com = new SqlCommand(insertquery, conn);
                Com.Parameters.AddWithValue("@username", TextBox1.Text);
                Com.Parameters.AddWithValue("@first_name", TextBox2.Text);
                Com.Parameters.AddWithValue("@last_name", TextBox3.Text);
                Com.Parameters.AddWithValue("@email", TextBox4.Text);
                Com.Parameters.AddWithValue("@address", TextBox5.Text);
                Com.Parameters.AddWithValue("@mobile", TextBox6.Text);
                Com.Parameters.AddWithValue("@password", TextBox7.Text);
                Com.ExecuteNonQuery();
                Response.Write("regestration is done successfu!!");
                Response.Redirect("userlogi.aspx");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error:" + ex.ToString());
            }

    }
}