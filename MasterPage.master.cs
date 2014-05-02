using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session[Configuration.SESSION_USER] != null ? logoutTag.Visible = true : logoutTag.Visible = false) ;
        //else if (Session[Configuration.SESSION_EMPLOYER] != null ? logoutTag.Visible = true : logoutTag.Visible = false) ;

    }
    //protected void LogOut_Click(object sender, EventArgs e)
    //{
    //    if (Session[Configuration.SESSION_USER] != null)
    //    {
    //        Session[Configuration.SESSION_USER] = null;
    //        Response.Redirect("Default.aspx");
    //    }
    //    if (Session[Configuration.SESSION_EMPLOYER] != null)
    //    {
    //        Session[Configuration.SESSION_EMPLOYER] = null;
    //        Response.Redirect("Default.aspx");
    //    }
    //}
}
