using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Data.SqlClient;

public partial class Erythritol : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
      
    //Connecting to DB
    string connStr = "Server = localhost; Database = MyDb1; Integrated Security = true;";
        SqlConnection conn = new SqlConnection(connStr);
        conn.Open();

        //CREATE COMMAND
        SqlCommand cmd = new SqlCommand("SELECT [PName], [PDesc], [PHex] FROM [dbo].[products] WHERE [ID] = 3");
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.Connection = conn;
        string path = "/img/file.gif";
        string temp1 = "";
        string temp2 = "";
        string temp3 = "";
        string temp4 = "";


        //Read from DB
        SqlDataReader reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            temp1 = reader["PName"].ToString();
            temp2 = reader["PDesc"].ToString();
            temp3 = reader["PHex"].ToString();
            //temp4 = reader["PImage"].ToString();

        }

        conn.Close();
        ste1.Text = temp1;
        ste2.Text = temp2;
        ste3.Text = temp3;
        //ste3.Text = temp3;
        //string path = temp4;
    //private static string temp4;
    
}
    
}