﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Bids
{
    public int Id_Bid { get; set; }
    public int Id_Job { get; set; }
    public int Id_Worker { get; set; }
    public int Bid { get; set; }

    public virtual Jobs Jobs { get; set; }
    public virtual Workers Workers { get; set; }
}

public partial class Employers
{
    public Employers()
    {
        this.Jobs = new HashSet<Jobs>();
    }

    public int Id_Employer { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }

    public virtual ICollection<Jobs> Jobs { get; set; }
}

public partial class JobComments
{
    public int Id_JobComment { get; set; }
    public int Id_Job { get; set; }
    public string Comment { get; set; }
    public string Author { get; set; }

    public virtual Jobs Jobs { get; set; }
}

public partial class Jobs
{
    public Jobs()
    {
        this.Bids = new HashSet<Bids>();
        this.JobComments = new HashSet<JobComments>();
    }

    public int Id_Job { get; set; }
    public int Id_Employer { get; set; }
    public string Type { get; set; }
    public string Description { get; set; }
    public string Region { get; set; }
    public Nullable<int> CurrentBid { get; set; }
    public string Image { get; set; }

    public virtual ICollection<Bids> Bids { get; set; }
    public virtual Employers Employers { get; set; }
    public virtual ICollection<JobComments> JobComments { get; set; }
}

public partial class Workers
{
    public Workers()
    {
        this.Bids = new HashSet<Bids>();
    }

    public int Id_Worker { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }

    public virtual ICollection<Bids> Bids { get; set; }
}
