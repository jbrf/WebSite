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
            var q = from u in db.Employers
                    where u.UserName == username
                    select u;
            return q.FirstOrDefault();
        }
    }

    static public Workers RetWork(string username)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from u in db.Workers
                    where u.UserName == username
                    select u;
            return q.FirstOrDefault();
        }
    }

    static public int RetEmpId(string username)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from u in db.Employers
                    where u.UserName == username
                    select u.Id_Employer;
            return q.FirstOrDefault();
        }
    }

    static public Jobs RetImage(int jobid)
    {
        using (LuffarJobbDBEntities db = new LuffarJobbDBEntities())
        {
            var q = from u in db.Jobs
                    where u.Id_Job == jobid
                    select u;
            return q.FirstOrDefault();
        }
    }
}