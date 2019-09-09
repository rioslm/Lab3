//Leandra Rios Lab 3
//On my honor, I pledge to uphold the JMU Honor System.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class School : System.Web.UI.Page
{
    //Initializing Variables
    int schoolID = 0;
    string name = "";
    string nickname = "";
    string address = "";

    //Creating database connection

    System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
    //Create school object


    protected void Page_Load(object sender, EventArgs e)
    {
        //Checking to see if connection string is valid
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        try
        {
            sc.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            
        }
        catch
        {
            MessageBox.Show("Error");
        }
    }

    //Commit Button Actions
    protected void CommitButton_Click(object sender, EventArgs e)
    {
        name = SchoolNameTextbox.Text;
        nickname = SchoolNicknameTextbox.Text;
        address = SchoolAddressTextbox.Text;

        //School validation
        if(SchoolNameTextbox.Text == " " || SchoolNameTextbox.Text == "")
        {
            MessageBox.Show("Please Enter a School Name!");
        }
        else if(SchoolNicknameTextbox.Text == " " || SchoolNicknameTextbox.Text == "")
        {
            MessageBox.Show("Please Enter a School NickName!");
        }
              
        else if(SchoolAddressTextbox.Text == " " || SchoolAddressTextbox.Text == "")
        {
            MessageBox.Show("Please Enter a School Address!");
        }

        else
        {
            Schools school = new Schools(schoolID, name, nickname, address);
            //Establishes connection 
            //Open database connection
            sc.Open();
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand("LeandraRiosLab3", sc);
            insert.Connection = sc;

           insert.CommandType = CommandType.StoredProcedure;
                insert.Parameters.AddWithValue("@schoolName", name);
                insert.Parameters.AddWithValue("@schoolNickname", nickname);
                insert.Parameters.AddWithValue("@schoolAddress", address);
                insert.Parameters.AddWithValue("@lastUpdatedBy", school.getLastUpdatedBy());
                insert.Parameters.AddWithValue("@lastUpdated", school.getLastUpdated());
                insert.ExecuteNonQuery();

                sc.Close();
             

        }
    }

    protected void ClearButton_Click(object sender, EventArgs e)
    {
        //Clears all text boxes
        SchoolNameTextbox.Text = " ";
        SchoolNicknameTextbox.Text = " ";
        SchoolAddressTextbox.Text = " ";
    }


    protected void ExitButton_Click(object sender, EventArgs e)
    {
        System.Environment.Exit(-1);
    }

        }


    

