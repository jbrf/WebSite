using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogInEmployer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LogInEmpBtn_Click(object sender, EventArgs e)
    {
        string userName = LogEmailEmployer.Value;
        string password = LogPasswordEmployer.Value;

        Employers currentEmp = DataFactory.RetEmp(userName);
        if (currentEmp == null)
        {
            ErrorMsgLbl.Visible = true;
            return;
        }
        if (currentEmp.Password == password)
        {
            Session["user"] = currentEmp;
            Response.Redirect("Emp_AddJob.aspx");
        }
        else
        {
            ErrorMsgLbl.Visible = true;
        }
    }
}