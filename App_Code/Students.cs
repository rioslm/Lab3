//Leandra Rios Lab 3
//On my honor, I pledge to uphold the JMU Honor System.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Student
/// </summary>
public class Students
{
    private int studentID;
    private string firstName;
    private string lastName;
    private string middleName;
    private string address;
    private string houseNum;
    private string street;
    private string city;
    private string state;
    private string country;
    private string zip;
    private string DOB;
    private string academicyear;
    int schoolID;
    private string lastupdatedby;
    private DateTime lastupdated;
    private int counter = 1000;
    DateTime date = DateTime.Today;

    /*
    public Student()
    {
        studentID = 0;
        firstName = "";
        lastName = "";
        middleName = "";
        address = "";
        houseNum = 0;
        street = "";
        city = "";
        state = "";
        country = "";
        zip = 0;
        DOB = "";
        academicyear = "";
        schoolID = 0;
        lastupdatedby = "Leandra Rios";
        DateTime date = DateTime.Today;
        string currentDate = date.ToString("yyyy-dd-MM");
        lastupdated = date;
    }
    */

    public Students(int studentID, string first, string last, string middle, string houseNum, string street, string city, string country, string state, string zip, string DOB, string year, int schoolID)
    {
        setStudentID(studentID);
        setFirstName(first);
        setLastName(last);
        setMiddleName(middle);
        setHouseNum(houseNum);
        setStreet(street);
        setCity(city);
        setCountry(country);
        setState(state);
        setZip(zip);
        setDOB(DOB);
        setAcademicYear(year);
        setSchoolID(schoolID);
        setLastUpdatedBy("Leandra Rios");
        setLastUpdated();
    }

    public int getStudentID()
    {
        return this.studentID;
    }

    public string getFirstName()
    {
        string first = " ";
        first = this.firstName;
        return first;
    }

    public string getLastName()
    {
        string last = " ";
        last = this.lastName;
        return last;
    }

    public string getMiddleName()
    {
        string middle = " ";
        middle = this.middleName;
        return middle;
    }

    public string getHouseNum()
    {
        string num = "";
        num = houseNum;
        return num;
    }

    public string getStreet()
    {
        string street = " ";
        street = this.street;
        return street;
    }

    public string getCity()
    {
        string city = " ";
        city = this.city;
        return city;
    }

    public string getCountry()
    {
        string country = " ";
        country = this.country;
        return country;
    }

    public string getState()
    {
        string state = " ";
        state = this.state;
        return state;
    }

    public string getZip()
    {
        string zip = "";
        zip = this.zip;
        return zip;
    }

    public string getDOB()
    {
        string dob = "";
        dob = this.DOB;
        return dob;
    }

    public string getAcademicYear()
    {
        string year = " ";
        year = this.academicyear;
        return year;
    }

    public int getSchoolID()
    {
        int ID = 0;
        ID = this.schoolID;
        return ID;
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

    public void setSchoolID(int schID)
    {
        this.schoolID = schID;
    }

    public void setStudentID(int studentID)
    {
        this.studentID = studentID;
    }

    public void setFirstName(String firstName)
    {
        this.firstName = firstName;
    }

    public void setLastName(String lastName)
    {
        this.lastName = lastName;
    }

    public void setMiddleName(String middle)
    {
        this.middleName = middle;
    }

    public void setHouseNum(string houseNum)
    {
        this.houseNum = houseNum;
    }

    public void setStreet(string street)
    {
        this.street = street;
    }

    public void setCity(string city)
    {
        this.city = city;
    }

    public void setCountry(string country)
    {
        this.country = country;
    }

    public void setState(string state)
    {
        this.state = state;
    }

    public void setZip(string zip)
    {
        this.zip = zip;
    }

    public void setDOB(String DOB)
    {
        this.DOB = DOB;
    }

    public void setAcademicYear(String academicyear)
    {
        this.academicyear = academicyear;
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