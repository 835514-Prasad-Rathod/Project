﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4AD3360\SQLEXPRESS;Initial Catalog=vijayapur;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from HotelList", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Id";
            DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("update HotelList set Hotelname='" + TextBox2.Text + "',Address='" + TextBox3.Text + "' where Id='" + DropDownList1.Text + "'", con);
            cmd1.ExecuteNonQuery();
            Label4.Text = "Values Updated successfully";
            con.Close();
        }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from HotelList where Id='" + DropDownList1.Text + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        TextBox2.Text = dt.Rows[0]["Hotelname"].ToString();
        TextBox3.Text = dt.Rows[0][2].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("delete from HotelList where Id='" + DropDownList1.Text + "'", con);
            cmd1.ExecuteNonQuery();

            Label5.Text = "Values deleted successfully";
            con.Close();
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
 }

