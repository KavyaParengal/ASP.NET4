using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace WebApplication4
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == "1")
            {
                Panel3.Visible = true;
                Panel2.Visible = false;
            }
            else if (DropDownList1.SelectedValue == "2")
            {
                Panel2.Visible = true;
                Panel3.Visible = false;
            }
        }

        protected void Btnregister_Click(object sender, EventArgs e)
        {
            dbconnection db1 = new dbconnection();
            SqlCommand cmd = new SqlCommand();
            List<string> subjectList = new List<string>();
            cmd.CommandText = "insert into register values(@empcode_value,@post_value,@name_value,@password_value,@dept_value,@subject_value)";
            cmd.Parameters.AddWithValue("@empcode_value", int.Parse(Txtempcode.Text));
            cmd.Parameters.AddWithValue("@post_value", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@name_value", Txtname.Text);
            cmd.Parameters.AddWithValue("@password_value", Txtpass.Text);
            if (Txtdept.Text == "")
            {
                cmd.Parameters.AddWithValue("@dept_value", " ");
            }
            else
            {
                cmd.Parameters.AddWithValue("@dept_value", Txtdept.Text);
            }
            if (CheckBoxList1.SelectedItem == null) 
            {
                cmd.Parameters.AddWithValue("@subject_value", "");
            }
            else
            {
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    if (item.Selected)
                    {
                        subjectList.Add(item.Text);
                    }
                }
                cmd.Parameters.AddWithValue("@subject_value", string.Join(",", subjectList));
            }
            db1.execute(cmd);
            Response.Write("<script>alert('Registration Successfully!');</script>");
            Response.Redirect("Login.aspx");
            //cmd.CommandText = "insert into register values(@id_value,@empcode_value,@post_value,@password_value)";
            //cmd.Parameters.AddWithValue("@id_value", int.Parse(Txtempcode.Text));
            //cmd.Parameters.AddWithValue("@empcode_value", int.Parse(Txtempcode.Text));
            //cmd.Parameters.AddWithValue("@post_value", DropDownList1.SelectedItem.Text);
            //cmd.Parameters.AddWithValue("@password_value", Txtpass.Text);
        }
    }
}