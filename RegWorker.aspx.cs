using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegWorker : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void RegLuffare(object sender, EventArgs e)
    {
        if (RegPasswordUser.Value == RegPasswordRptUser.Value)
        {
            WrongPwLblUser.Visible = false;

            Workers worker = new Workers(){
                UserName = RegEmailUser.Value,
                Password = RegPasswordUser.Value
            };
            
            LuffarJobbDBEntities db = new LuffarJobbDBEntities();
            db.Workers.Add(worker);
            db.SaveChanges();

            ConfirmationLblUser.Visible = true;

            Session["user"] = RegEmailUser.Value;
            Response.Redirect("Wrk_ViewJobs.aspx");
        }
        else if (RegPasswordUser.Value != RegPasswordRptUser.Value) WrongPwLblUser.Visible = true;
    }
}