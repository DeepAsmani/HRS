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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegBtn(object sender, EventArgs e)
        {
            if (InputPassword.Text == ConfirmPassword.Text)
            {
                List<String> RegList = new List<String>();

                RegList.Add(InputEmail.Text);
                RegList.Add(InputName.Text);
                RegList.Add(InputPassword.Text);
                //Process.ProcessPart p1 = new Process.ProcessPart();
                int values = RegProcess(RegList);
                if (values == 1)
                {
                    InputPassword.Text = "";
                    InputEmail.Text = "";
                    InputPassword.Text = "";
                    ConfirmPassword.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Sign Up Successful. Go to Login Page to Login');</script>");
                }
            }
        }
        public int RegProcess(List<String> RegList)
        {
            SqlConnection con = new SqlConnection("Data source=DEEPASMANI\\DEEP_ASMANI;Initial Catalog=HRS;Integrated Security=True");
            con.Open();
            //SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Customer WHERE CustomerEmail='" + RegList[0] + "' OR CustomerPhone ='"+RegList[3]+"'", con);
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Customer WHERE CustomerEmail='" + RegList[0] + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                con.Close();
                Response.Write("<script>alert('User Aready Exist with This USER ID. Try another.');</script>");
                return 1;
            }
            else
            {
                SqlCommand cmd = new SqlCommand("Insert into Customer(CustomerName,CustomerEmail,CustomerPassword) Values(@name,@email,@pass)", con);
                cmd.Parameters.AddWithValue("@name", RegList[1]);
                cmd.Parameters.AddWithValue("@email", RegList[0]);
                cmd.Parameters.AddWithValue("@pass", RegList[2]);
                cmd.ExecuteNonQuery();
                con.Close();
                return 0;
            }
        }
    }
}