using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Data.SqlClient;

public partial class Aspartame : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //Connecting to DB

        string connStr = "Server = localhost; Database = MyDb1; Integrated Security = true;";
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        //CREATE COMMAND
        SqlCommand cmd = new SqlCommand("SELECT [PName], [PDesc], [PHex] FROM [dbo].[products] WHERE [ID] = 2");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = conn;
        string temp1 = "";
        string temp2 = "";
        string temp3 = "";
        string temp4 = "";

        /* string connstr = "Server = WIN-GT9SRIRL0JP\\SQLEXPRESS; Database = MyDb; Integrated Security = true;";
            using (SqlConnection conn1 = new SqlConnection(connstr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter("SELECT [PImage] FROM [dbo]. [products]", conn))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    gvImages.DataSource = dt;
                    gvImages.DataBind();
                }
            } */

        //Read from DB
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            temp1 = reader["PName"].ToString();
            temp2 = reader["PDesc"].ToString();
            temp3 = reader["PHex"].ToString(); ;

        }

        conn.Close();
        ste1.Text = temp1;
        ste2.Text = temp2;
        ste3.Text = temp3;



    }
    //protected string abc = ste1;

}