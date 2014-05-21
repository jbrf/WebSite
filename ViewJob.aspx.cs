using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class ViewJob : System.Web.UI.Page
{
    Jobs theJob;
    Workers currentWorker;
    int jobId;
    int currentBid;

    protected void Page_Init(object sender, EventArgs e)
    {
        jobId = (int)Session["theJob"];
        theJob = DataFactory.RetJob(jobId);
        currentBid = DataFactory.GetLowestBid(jobId);
        CommentTextArea.Value = null;
        try
        {
            FillUpComments();
        }
        catch (Exception)
        {
            AvailableCommentsLbl.Text = "Inga kommentarer";
        }

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

        else if (String.IsNullOrEmpty(theJob.Image))
        {
            ImageHprLnk.Visible = false;
            ImageJob.Visible = false;
        }

    }
    protected void SubmitBid_Click(object sender, EventArgs e)
    {
        jobId = (int)Session["theJob"];

        currentWorker = (Workers)Session["user"];
        int giveBid = Convert.ToInt32(Bidtxtbox.Text);
        int lowestBid = DataFactory.GetLowestBid(jobId);
        if (giveBid <= lowestBid || giveBid <= 0 || lowestBid == 0)
        {
            Bids bid = new Bids()
            {
                Bid = Convert.ToInt32(Bidtxtbox.Text),
                Id_Job = theJob.Id_Job,
                Id_Worker = currentWorker.Id_Worker
            };
            DataFactory.AddBid(bid);
            DataFactory.UpdateCurrentbid(jobId, giveBid);           
            Response.Redirect("ViewJob.aspx");
        }

        if (giveBid >= lowestBid)
        {
            ErrorInBidLbl.Text = "Ditt bud är för högt, det ligger redan ett lägre bud på detta jobb!";
        }

    }


    protected void SubmitCommentBtn_OnClick(object sender, EventArgs e)
    {
        if (CommentTextArea.Value != null)
        {
            currentWorker = (Workers)Session["user"];
            string comment = CommentTextArea.Value;
            string author = currentWorker.UserName;
            jobId = (int)Session["theJob"];

            JobComments jc = new JobComments()
            {
                Comment = comment,
                Author = author,
                Id_Job = jobId
            };
            LuffarJobbDBEntities db = new LuffarJobbDBEntities();
            db.JobComments.Add(jc);
            db.SaveChanges();

            CommentTextArea.Value = "";
            Response.Redirect(Request.RawUrl);
        }
        else
        {
            ErrorInBidLbl.Text = "Kan inte göra en tom kommentar";
        }
    }

    private void FillUpComments()
    {
        jobId = (int)Session["theJob"];
        StringBuilder sb = new StringBuilder();

        foreach (var c in DataFactory.GetJobComments(Convert.ToInt32(jobId)))
        {
            sb.Append(
                string.Format(
                    @"<table class='CommentsTable table'>
            <div class='col-md-3'>
            <tr>
                <th>Användare: </th>
                <td>{0}</td>
            </tr>
            </div>
            <br />
            <div class='col-md-3'>
            <tr>
                <th>Kommentar: </th>
                <td>{1}</td>
            </tr>         
            </div>
           </table>", c.Author, c.Comment));
        }
        AvailableCommentsLbl.Visible = true;
        AvailableCommentsLbl.Text = sb.ToString();
    }
}