using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ViewJob : System.Web.UI.Page
{
    Jobs theJob;

    protected void Page_Init(object sender, EventArgs e)
    {
        int jobId = (int)Session["theJob"];
        theJob = DataFactory.RetJob(jobId);

        TypeLbl.Text = theJob.Type;
        DescLbl.Text = theJob.Description;
        RegionLbl.Text = theJob.Region;
        CurrentbidLbl.Text = Convert.ToString(DataFactory.GetLowestBid(jobId));
        Id_Employer.Text = DataFactory.RetEmpUsername(theJob.Id_Employer);
        if (!String.IsNullOrEmpty(theJob.Image))
        {

            ImageJob.ImageUrl = theJob.Image;
            ImageHprLnk.NavigateUrl = theJob.Image;
        }

        else if (String.IsNullOrEmpty(theJob.Image)) theDiv.Visible = false;

    }
    protected void SubmitBid_Click(object sender, EventArgs e)
    {
        Workers currentWorker = (Workers)Session[Configuration.SessionUser];

        Bids bid = new Bids()
        {
            Bid = Convert.ToInt32(Bidtxtbox.Text),
            Id_Job = theJob.Id_Job,
            Id_Worker = currentWorker.Id_Worker,
        };
        DataFactory.AddBid(bid);
        Response.Redirect("ViewJob.aspx");
    }
}