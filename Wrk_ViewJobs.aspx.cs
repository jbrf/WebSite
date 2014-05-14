using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Wrk_ViewJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        var row = GridView1.SelectedRow;
        //int Id_Job = Convert.ToInt32(row.Cells[0].Text);
        int Id_Job = Convert.ToInt32(GridView1.SelectedDataKey.Value);

        Session["theJob"] = Id_Job;
        Response.Redirect("ViewJob.aspx");
    }
}