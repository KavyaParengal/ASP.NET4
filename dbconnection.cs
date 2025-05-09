using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication4
{
    public class dbconnection
    {
        public SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Administrator\Documents\company_430437.mdf;Integrated Security=True");
        public void execute(SqlCommand cmd)
        {
            cmd.Connection = cn;
            if (cn.State == System.Data.ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }

        public SqlDataReader getresult(SqlCommand cmd)
        {
            cmd.Connection = cn;
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
            cn.Close();
        }
    }
}