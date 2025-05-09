using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            dbconnection dbconnection = new dbconnection();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "SELECT * FROM register WHERE empcode = @empcode AND password = @password";
            cmd.Parameters.AddWithValue("@empcode", int.Parse(TextBox1.Text)); 
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);
            System.Data.SqlClient.SqlDataReader dr = dbconnection.getresult(cmd);
            if (dr.Read())
            {
                string postValue = dr["post"].ToString();
                if(postValue == "Trainer")
                {
                    Response.Redirect("AddQns.aspx");
                }
                else if (postValue == "Trainee")
                {
                    Response.Redirect("ViewQns.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid employee code or password.Please register.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid employee code or password.Please register.');</script>");
            }
            dr.Close();
        }
    }
}