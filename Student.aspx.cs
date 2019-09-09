//Leandra Rios Lab 3
//On my honor, I pledge to uphold the JMU Honor System.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Text;
using System.Windows.Forms;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Student : System.Web.UI.Page
{
    //Initializing variables
    int studentid = 0;
    string first = "";
    string middle = "";
    string last = "";
    string houseNum = "";
    string street = "";
    string city = "";
    string country = "";
    string state = "";
    string zip = "";
    string DOB = "";
    string year = "";
    string activity = "";
    int schoolID = 0;

    //Creating database connection
    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();

    protected void Page_Load(object sender, EventArgs e)
    {
        //Checking to see if connection string is valid
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        try
        {
            sc.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            // sc.ConnectionString = @"Server=LEASPC\MSSQLSERVER01; Database=Lab2; Integrated Security = True; Trusted_Connection = Yes";
        }
        catch
        {
            MessageBox.Show("Error");
        }

        table.Visible = false;
        ActivityDrop.SelectedIndex = 1;
    }

    //Commit Button Actions
    protected void CommitButton_Click(object sender, EventArgs e)
    {

        //Validation
        if (FirstNameTextbox.Text == "" | FirstNameTextbox.Text == " " | FirstNameTextbox.Text == null)
        {
            MessageBox.Show("Please enter first name!");
            return;
        }

        if (LastNameTextbox.Text == "" | LastNameTextbox.Text == " " | LastNameTextbox.Text == null)
        {
            MessageBox.Show("Please enter a last name!");
            return;
        }

        if (MiddleNameTextbox.Text == "" | MiddleNameTextbox.Text == " " | MiddleNameTextbox.Text == null)
        {
            MessageBox.Show("Please enter a middle name!");
            return;
        }

        if (SchoolIDTextbox.Text == "" | SchoolIDTextbox.Text == " " | SchoolIDTextbox.Text == null)
        {
            MessageBox.Show("Please enter the school ID of the school this student attends!");
            return;
        }

        int n;
        bool isNumeric = int.TryParse(HouseNumberTextbox.Text, out n);

        if (HouseNumberTextbox.Text == "" | HouseNumberTextbox.Text == " " | HouseNumberTextbox.Text == null | isNumeric == false)
        {
            MessageBox.Show("Please enter a valid house number!");
            return;
        }

        if (StreetTextbox.Text == "" | StreetTextbox.Text == " " | StreetTextbox.Text == null)
        {
            MessageBox.Show("Please enter a valid street!");
            return;
        }

        int j;
        bool isNumeric2 = int.TryParse(ZipTextbox.Text, out n);
        if (ZipTextbox.Text == "" | ZipTextbox.Text == " " | ZipTextbox.Text == null | isNumeric2 == false)
        {
            MessageBox.Show("Please enter a valid Zip Code!");
            return;
        }

        first = FirstNameTextbox.Text;
        middle = MiddleNameTextbox.Text;
        last = LastNameTextbox.Text;
        houseNum = HouseNumberTextbox.Text;
        street = StreetTextbox.Text;
        city = CityTextbox.Text;
        country = CountryDropDown.SelectedItem.Text;
        int countryOption = CountryDropDown.SelectedIndex;
        state = StateTextbox.Text;
        zip = ZipTextbox.Text;
        schoolID = Convert.ToInt32(SchoolIDTextbox.Text);
        DOB = DOBTextbox.Text;
        int activityid = ActivityDrop.SelectedIndex;
        year = AcademicYearDrop.Text;
        string schoolName = " ";


        if (SchoolIDTextbox.Text == "" | SchoolIDTextbox.Text == " ")
        {
            MessageBox.Show("Please enter the school ID of the school this student attends!");
            return;
        }

        else
        {
            //gets school from database to display at the top of student form
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand("SELECT SchoolName FROM SCHOOL WHERE SchoolID=@ID", sc);
            insert.Connection = sc;
            insert.Parameters.Add(new SqlParameter("@ID", schoolID));
            SqlDataReader reader = insert.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    schoolName = reader["SchoolName"].ToString();
                }
            }

        }
        sc.Close();
        StuNameSchool.Text = first + " " + last + " -- " + schoolName;

        if (CountryDropDown.SelectedIndex != CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)"))) && state != "")
        {
            MessageBox.Show("Counrties Outside of the US do not need a state!");
        }

        else
        {
            Students student = new Students(studentid, first, last, middle, houseNum, street, city, country, state, zip, DOB, year, schoolID);

            //Open database connection
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            insert.CommandText = "INSERT INTO STUDENT VALUES(@FirstName, @LastName, @MiddleName, @HouseNumber, @Street, @CityCounty, @HomeState, @Country, @Zip, @DateOfBirth, @AcademicYear, @SchoolID, @LastUpdatedBy, @LastUpdated); SELECT SCOPE_IDENTITY()";
            insert.Parameters.Add(new SqlParameter("@FirstName", student.getFirstName()));
            insert.Parameters.Add(new SqlParameter("@LastName", student.getLastName()));
            insert.Parameters.Add(new SqlParameter("@MiddleName", student.getMiddleName()));
            insert.Parameters.Add(new SqlParameter("@HouseNumber", student.getHouseNum()));
            insert.Parameters.Add(new SqlParameter("@Street", student.getStreet()));
            insert.Parameters.Add(new SqlParameter("@CityCounty", student.getCity()));
            insert.Parameters.Add(new SqlParameter("@HomeState", student.getState()));
            insert.Parameters.Add(new SqlParameter("@Country", student.getCountry()));
            insert.Parameters.Add(new SqlParameter("@Zip", student.getZip()));
            insert.Parameters.Add(new SqlParameter("@DateOfBirth", student.getDOB()));
            insert.Parameters.Add(new SqlParameter("@AcademicYear", student.getAcademicYear()));
            insert.Parameters.Add(new SqlParameter("@SchoolID", student.getSchoolID()));
            insert.Parameters.Add(new SqlParameter("@LastUpdatedBy", student.getLastUpdatedBy()));
            insert.Parameters.Add(new SqlParameter("@LastUpdated", student.getLastUpdated()));

            int lastID = Convert.ToInt32(insert.ExecuteScalar());

            insert.CommandText = "INSERT INTO STUDENTACTIVITY VALUES (@StuID, @ActivityID, @LastUpdateBy, @LastUpdate)";
            insert.Parameters.Add(new SqlParameter("@StuID", lastID));
            insert.Parameters.Add(new SqlParameter("@ActivityID", activityid));
            insert.Parameters.Add(new SqlParameter("@LastUpdateBy", student.getLastUpdatedBy()));
            insert.Parameters.Add(new SqlParameter("@LastUpdate", student.getLastUpdated()));

            insert.ExecuteNonQuery();

            //Closes connection
            sc.Close();
            UpdatedLabel.Text = "Last Updated By: " + student.getLastUpdatedBy() + " " + student.getLastUpdated();
        }
    }

    protected void ClearButton_Click(object sender, EventArgs e)
    {
        //Clears all text boxes
        FirstNameTextbox.Text = " ";
        MiddleNameTextbox.Text = " ";
        LastNameTextbox.Text = " ";
        DOBTextbox.Text = " ";
        HouseNumberTextbox.Text = " ";
        StreetTextbox.Text = " ";
        CityTextbox.Text = " ";
        CountryDropDown.SelectedIndex = CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)")));
        StateTextbox.Text = " ";
        ZipTextbox.Text = " ";
        AcademicYearDrop.SelectedIndex = AcademicYearDrop.Items.IndexOf(AcademicYearDrop.Items.FindByValue("Academic Year"));
        ActivityDrop.SelectedIndex = ActivityDrop.Items.IndexOf(ActivityDrop.Items.FindByValue("Select Activity"));
        SchoolIDTextbox.Text = " ";
        StateTextbox.Enabled = true;
        table.Visible = false;
    }

    protected void ExitButton_Click(object sender, EventArgs e)
    {
        System.Environment.Exit(-1);
    }

    protected void PopulateButton_Click(object sender, EventArgs e)
    {
        //Creates random number and randomly inserts one of the four students below
        Random rnd = new Random();
        int populate = rnd.Next(0, 3);

        switch (populate)
        {

            case 0:
                FirstNameTextbox.Text = "Megan";
                MiddleNameTextbox.Text = "Alex";
                LastNameTextbox.Text = "Morgan";
                DOBTextbox.Text = "2000-05-30";
                HouseNumberTextbox.Text = "2301";
                StreetTextbox.Text = "Columbia Pike";
                CityTextbox.Text = "Arlington";
                CountryDropDown.SelectedIndex = CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("Germany")));
                if (CountryDropDown.SelectedIndex != CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)"))))
                {
                    state = " ";
                }
                else
                {
                    StateTextbox.Text = "VA";
                }
                ZipTextbox.Text = "22204";
                AcademicYearDrop.SelectedIndex = AcademicYearDrop.Items.IndexOf(AcademicYearDrop.Items.FindByValue("Freshman"));
                ActivityDrop.SelectedIndex = 1;
                SchoolIDTextbox.Text = "1";
                break;

            case 1:
                FirstNameTextbox.Text = "Jacob";
                MiddleNameTextbox.Text = "Rodney";
                LastNameTextbox.Text = "Lancaster";
                DOBTextbox.Text = "1990-05-30";
                HouseNumberTextbox.Text = "2301";
                StreetTextbox.Text = "Columbia Pike";
                CityTextbox.Text = "Arlington";
                CountryDropDown.SelectedIndex = CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("Iran")));
                if (CountryDropDown.SelectedIndex != CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)"))))
                {
                    state = " ";

                }
                else
                {
                    StateTextbox.Text = "VA";
                }
                ZipTextbox.Text = "22204";
                AcademicYearDrop.SelectedIndex = AcademicYearDrop.Items.IndexOf(AcademicYearDrop.Items.FindByValue("Sophomore"));
                ActivityDrop.SelectedIndex = 1;
                SchoolIDTextbox.Text = "1";
                break;

            case 2:
                FirstNameTextbox.Text = "Deborah";
                MiddleNameTextbox.Text = "Beth";
                LastNameTextbox.Text = "White";
                DOBTextbox.Text = "1982-05-30";
                HouseNumberTextbox.Text = "2301";
                StreetTextbox.Text = "Columbia Pike";
                CityTextbox.Text = "Arlington";
                CountryDropDown.SelectedIndex = CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)")));
                if (CountryDropDown.SelectedIndex != CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)"))))
                {
                    state = " ";

                }
                else
                {
                    StateTextbox.Text = "VA";
                }
                ZipTextbox.Text = "22204";
                AcademicYearDrop.SelectedIndex = AcademicYearDrop.Items.IndexOf(AcademicYearDrop.Items.FindByValue("Junior"));
                ActivityDrop.SelectedIndex = 1;
                SchoolIDTextbox.Text = "1";
                break;

            case 3:
                FirstNameTextbox.Text = "Darnell";
                MiddleNameTextbox.Text = "Jermaine";
                LastNameTextbox.Text = "Louis";
                DOBTextbox.Text = "1996-05-30";
                HouseNumberTextbox.Text = "2301";
                StreetTextbox.Text = "Columbia Pike";
                CityTextbox.Text = "Arlington";
                CountryDropDown.SelectedIndex = CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("Australia")));
                if (CountryDropDown.SelectedIndex != CountryDropDown.Items.IndexOf((CountryDropDown.Items.FindByValue("United States of America (USA)"))))
                {
                    state = " ";
                }
                else
                {
                    StateTextbox.Text = "VA";
                }
                ZipTextbox.Text = "22204";
                AcademicYearDrop.SelectedIndex = AcademicYearDrop.Items.IndexOf(AcademicYearDrop.Items.FindByValue("Senior"));
                ActivityDrop.SelectedIndex = 1;
                SchoolIDTextbox.Text = "1";
                break;
        }

    }

    protected void ActivityDrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        ActivityDrop.SelectedValue = ActivityDrop.SelectedItem.Value;
    }

    protected void AcademicYearDrop_SelectedIndexChanged(object sender, EventArgs e)
    {
        AcademicYearDrop.SelectedValue = AcademicYearDrop.SelectedItem.Value;
    }

    //This method calculates age
    public int findAge(string dob)
    {
        int age = 0;
        DateTime date = DateTime.Today;
        string currentDate = date.ToString("yyyy-MM-dd");
        String[] today = currentDate.Split('-');
        String[] birth = dob.Split('-');

        int current = Int32.Parse(today[0]);
        int input = Int32.Parse(birth[0]);

        age = current - input;

        return age;
    }


    protected void CountryDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (CountryDropDown.SelectedIndex.ToString() != "United States of America (USA)")
        {

            StateTextbox.Enabled = false;
        }
        else
        {
            StateTextbox.Enabled = true;
        }
    }

    protected void Grid_Click(object sender, EventArgs e)
    {
        table.Visible = true;
    }




    protected void ActivityDrop_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}




