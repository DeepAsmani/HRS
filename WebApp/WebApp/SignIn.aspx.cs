using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApp
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginCick(object sender, EventArgs e)
        {
            List<String> LoginList = new List<String>();
            LoginList.Add(InputEmail.Text);
            LoginList.Add(InputPassword.Text);
            int values = LoginProcess(LoginList);
            if (values == 1)
            {
                InputPassword.Text = "";
                InputEmail.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Sign IN Successful....');</script>");
            }

        }

        public int LoginProcess(List<String> LoginList)
        {
            SqlConnection con = new SqlConnection("Data source=DEEPASMANI\\DEEP_ASMANI;Initial Catalog=HRS;Integrated Security=True");
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Customer WHERE CustomerEmail='" + LoginList[0] + "' AND CustomerPassword ='" + LoginList[1] + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                con.Close();
                Response.Write("<script>alert('Account Not Availble...');</script>");
                return 1;
            }
            con.Close();
            return 0;
        }
    }
}