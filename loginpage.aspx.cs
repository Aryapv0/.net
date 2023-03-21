using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblErrorMessage.Visible = false;
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        using (SqlConnection sqlCon = new SqlConnection(@"Data Source=LAPTOP-LSTTFTJH\SQLEXPRESS01;initial Catalog=LoginDB;integrated security=true;"))
        {
            sqlCon.Open();
            string query = "SELECT COUNT(1) FROM UserDetails WHERE username=@username AND password=@password";
            SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
            sqlCmd.parameters.AddWithValues("@username",txtUserName.Text.Trim());
            sqlCmd.parameters.AddWithValues("@password",txtPassword.Text.Trim());
            int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
            if (count == 1)
            {
                Session["Username"] = txtUserName.Text.Trim();
                Response.Redirect("Dashboard.aspx");
            }
            else { lblErrorMessage.Visible = true; }
        }
    }
}