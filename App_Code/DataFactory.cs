using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;

/// <summary>
/// Summary description for DataFactory
/// </summary>
public class DataFactory
{

    static public Employers RetEmp(string username)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from e in db.Employers
                    where e.UserName == username
                    select e;
            return q.FirstOrDefault();
        }
    }

    static public Workers RetWork(string username)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from w in db.Workers
                    where w.UserName == username
                    select w;
            return q.FirstOrDefault();
        }
    }

    static public int RetEmpId(string username)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from e in db.Employers
                    where e.UserName == username
                    select e.Id_Employer;
            return q.FirstOrDefault();
        }
    }
    static public Jobs RetJob(int id)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from j in db.Jobs
                    where j.Id_Job == id
                    select j;
            return q.FirstOrDefault();
        }
    }
    static public string RetEmpUsername(int id)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from e in db.Employers
                    where e.Id_Employer == id
                    select e.UserName;
            return q.FirstOrDefault();
        }
    }

    static public void AddBid(Bids bid)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            db.Bids.Add(bid);

            db.SaveChanges();
        }
    }
    static public int GetLowestBid(int jobId)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from b in db.Bids
                    where b.Id_Job == jobId
                    orderby b.Bid ascending
                    select b.Bid;
            return q.FirstOrDefault();
        }
        
    }
}