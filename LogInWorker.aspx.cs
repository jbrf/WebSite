using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogInWorker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LogInWork(object sender, EventArgs e)
    {
        string userName = LogEmailUser.Value;
        string password = LogPasswordUser.Value;

        Workers currentWorker = DataFactory.RetWork(userName);
        if (currentWorker == null)
        {
            ErrorMsgLbl.Visible = true;
            return;
        }
        if (currentWorker.Password == password)
        {
            Session[Configuration.SessionUser] = currentWorker;
            Response.Redirect("Wrk_ViewJobs.aspx");
        }
        else
        {
            ErrorMsgLbl.Visible = true;
        }
    }
}