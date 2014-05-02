using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegEmployer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitRegEmployerBtn_OnServerClick(object sender, EventArgs e)
    {
        if (RegPasswordEmployer.Value == RegPasswordRptEmployer.Value)
        {
            WrongPwLblEmployer.Visible = false;

            Employers emp = new Employers(){
                UserName = RegEmailEmployer.Value,
                Password = RegPasswordEmployer.Value
            };

            LuffarJobbDBEntities db = new LuffarJobbDBEntities();
            db.Employers.Add(emp);
            db.SaveChanges();

            ConfirmationLblEmployer.Visible = true;
        }
        else if (RegPasswordEmployer.Value != RegPasswordRptEmployer.Value) WrongPwLblEmployer.Visible = true;
    }
}