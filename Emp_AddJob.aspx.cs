using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emp_AddJob : System.Web.UI.Page
{
    private Employers _currentEmployer;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session[Configuration.SessionUser] == null) {
            Response.Redirect("Default.aspx");
        }
        _currentEmployer = (Employers)Session[Configuration.SessionUser];
        loggedInAsLbl.Text = _currentEmployer.UserName;
    }

    protected void AddNewJob(object sender, EventArgs e)
    {
        int empId = _currentEmployer.Id_Employer;
        string jobType = JobbTyp.Value;
        string jobDesc = JobbBeskrivning.Value;
        string jobReg = Community.Value;
        string path = "";

        if (FileUpload.PostedFile.ContentType == "image/jpeg")
        {
            path = "~/Images/JobPics/";
            path += jobType + Convert.ToString(empId);
            path += Path.GetExtension(FileUpload.PostedFile.FileName);

            FileUpload.SaveAs(Server.MapPath(path));
            StatusLbl.Text = "Upload status: File uploaded!";

        };

        Jobs job = new Jobs()
        {
            Id_Employer = empId,
            Type = jobType,
            Description = jobDesc,
            Region = jobReg,
            Image = path
        };

        LuffarJobbDBEntities db = new LuffarJobbDBEntities();
        db.Jobs.Add(job);
        db.SaveChanges();
        StatusLbl.Text = "Jobbet är upplagt";
    }
    protected void LogOutBtn_Click(object sender, EventArgs e)
    {
        Session[Configuration.SessionUser] = null;
        Response.Redirect("Default.aspx")
    }
}