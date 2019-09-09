//Leandra Rios Lab 3
//On my honor, I pledge to uphold the JMU Honor System.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for School
/// </summary>
public class Schools
{
    private int schoolID;
    private string name;
    private string nickName;
    private string address;
    private string lastupdatedby;
    private DateTime lastupdated;
    DateTime date = DateTime.Today;

    public Schools(int schoolID,string name,string nickName,string address)
    {
        setSchoolID(schoolID);
        setName(name);
        setnickName(nickName);
        setAddress(address);
        setLastUpdatedBy("Leandra Rios");
        setLastUpdated();
    }

    public void setSchoolID(int schID)
    {
        this.schoolID = schID;
    }

    public void setName(string name)
    {
        this.name = name;
    }

    public void setnickName(string nickName)
    {
        this.nickName = nickName;
    }

    public void setAddress(string address)
    {
        this.address = address;
    }

    public int getSchoolID()
    {
        int ID = 0;
        ID = this.schoolID;
        return ID;
    }

    public string getName()
    {
        string name = "";
        name = this.name;
        return name;
    }


    public string getNickName()
    {
        string nickName = "";
        nickName = this.nickName;
        return nickName;
    }

    public string getAddress()
    {
        string address = "";
        address = this.address;
        return address;
    }


    public DateTime getLastUpdated()
    {
        DateTime date;
        date = this.lastupdated;
        return date;
    }

    public string getLastUpdatedBy()
    {
        string person;
        person = this.lastupdatedby;
        return person;
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

}