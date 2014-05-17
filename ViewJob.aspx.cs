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
    int jobId;
    int currentBid;


    //protected string GetBid()
    //{
    //    string foo = Convert.ToString(DataFactory.GetLowestBid(jobId));
    //    if (foo == null) return "";
    //    else return foo;
    //}

    protected void Page_Init(object sender, EventArgs e)
    {
        jobId = (int)Session["theJob"];
        theJob = DataFactory.RetJob(jobId);
        currentBid = DataFactory.GetLowestBid(jobId);

        if (currentBid == 0)
        {
            CurrentbidLbl.Text = "Finns inget bud på detta jobb än";
        }

        else
        {
            CurrentbidLbl.Text = Convert.ToString(DataFactory.GetLowestBid(jobId));
        }

        TypeLbl.Text = theJob.Type;
        DescLbl.Text = theJob.Description;
        RegionLbl.Text = theJob.Region;
        Id_Employer.Text = DataFactory.RetEmpUsername(theJob.Id_Employer);
        if (!String.IsNullOrEmpty(theJob.Image))
        {
            ImageJob.ImageUrl = theJob.Image;
            ImageHprLnk.NavigateUrl = theJob.Image;
        }

        else if (String.IsNullOrEmpty(theJob.Image)) { 
            ImageHprLnk.Visible = false;
            ImageJob.Visible = false;
        }

    }
    protected void SubmitBid_Click(object sender, EventArgs e)
    {
        jobId = (int)Session["theJob"];

        Workers currentWorker = (Workers)Session[Configuration.SessionUser];
        int giveBid = Convert.ToInt32(Bidtxtbox.Text);
        int currentBid = DataFactory.GetLowestBid(jobId); //Convert.ToInt32(CurrentbidLbl.Text);
        if (giveBid <= currentBid || giveBid <= 0 || currentBid == 0)
        {
            Bids bid = new Bids()
            {
                Bid = Convert.ToInt32(Bidtxtbox.Text),
                Id_Job = theJob.Id_Job,
                Id_Worker = currentWorker.Id_Worker,
            };
            DataFactory.AddBid(bid);
            Response.Redirect("ViewJob.aspx");
        }

        if (giveBid >= currentBid)
        {
            ErrorInBidLbl.Text = "Ditt bud är för högt, det ligger redan ett lägre bud på detta jobb!";
        }

    }
}