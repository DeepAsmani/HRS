using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using WebApp.Main;

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
            ProcessPart p1 = new ProcessPart();
            p1.LoginProcess(LoginList);
            LoginList.Add()


        }
    }
}