//Leandra Rios Lab 3
//On my honor, I pledge to uphold the JMU Honor System.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SchoolActivity
/// </summary>
public class StudentActivity
{
    private int studentID;
    private int activityID;
    private string lastUpdatedBy;
    DateTime lastUpdated;
    DateTime date = DateTime.Today;

    public StudentActivity()
    {
        lastUpdatedBy = "Leandra Rios";
        DateTime date = DateTime.Today;
        string currentDate = date.ToString("yyyy-dd-MM");
        lastUpdated = date;
    }

    public StudentActivity(int studentid, int activityid)
    {
        setStudentID(studentid);
        setActivityID(activityid);
        setLastUpdatedBy("Leandra");
        setLastUpdated();

    }

    public void setStudentID(int id)
    {
        this.studentID = id;
    }

    public int getStudentID()
    {
        return this.studentID;
    }

    public void setActivityID(int actid)
    {
        this.activityID = actid;
    }

    public int getActivityID()
    {
        return this.activityID;
    }

    public void setLastUpdatedBy(string lastupdatedby)
    {
        this.lastUpdatedBy = lastupdatedby;
    }

    public string getLastUpdatedBy()
    {
        return this.lastUpdatedBy;
    }

    public void setLastUpdated()
    {
        string currentDate = date.ToString("yyyy-dd-MM");
        this.lastUpdatedBy = currentDate;
    }

    public DateTime getLastUpdated()
    {
        DateTime date;
        date = this.lastUpdated;
        return date;
    }
}