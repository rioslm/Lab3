//Leandra Rios Lab 3
//On my honor, I pledge to uphold the JMU Honor System.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Activity_
{
    private int activityID;
    private string activityDesc;
    private string lastupdatedby;
    private DateTime lastupdated;
    DateTime date = DateTime.Today;
    private char activeInd;

    public Activity_(int activityID, string activityDesc, char active)
    {
        setActivityID(activityID);
        setActivityDesc(activityDesc);
        setLastUpdatedBy("Leandra Rios");
        setLastUpdated();
        setActiveInd(active);
    }

    public char getActiveInd()
    {
        return this.activeInd;
    }

    public int getActivityID()
    {
        return this.activityID;
    }

    public string getActivitydesc()
    {
        return this.activityDesc;
    }

    public string getLastUpdatedBy()
    {
        string person;
        person = this.lastupdatedby;
        return person;
    }

    public DateTime getLastUpdated()
    {
        DateTime date;
        date = this.lastupdated;
        return date;
    }

    public void setActivityID(int activityid)
    {
        this.activityID = activityid;
    }

    public void setActivityDesc(string Activitydesc)
    {
        this.activityDesc = Activitydesc;
    }

    public void setLastUpdatedBy(string person)
    {
        this.lastupdatedby = person;
    }

    public void setLastUpdated()
    {
        DateTime date;
        date = DateTime.Today;
        this.lastupdated = date;
    }

    public void setActiveInd(char active)
    {
        this.activeInd = active;
    }
}