using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebApp.Main
{
    public class ProcessPart
    {
        public SqlConnection con = new SqlConnection("Data source=DEEPASMANI\\DEEP_ASMANI;Initial Catalog=HRS;Integrated Security=True");
        public void LoginProcess(List<String> LoginList)
        {
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM Custmer WHERE CustomerEmail='" + LoginList[0] + "' AND CustomerPassword = '" + LoginList[1] + "'", con);
            DataTable dt = new DataTable();
        }
        public void LoginProcess()
        {

        }
    }
}