<%@ Page Title="Student" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>
<%-- Leandra Rios Lab 3
    --On my honor, I pledge to uphold the JMU Honor System. /> --%>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <br />
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="StuNameSchool" runat="server" Text="Leandra Rios  -- "></asp:Label>
            <br />
        Student Information</strong><br />
        &nbsp;<br />
        First Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="FirstNameTextbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle Name:&nbsp;
        <asp:TextBox ID="MiddleNameTextbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;
        <asp:TextBox ID="LastNameTextbox" runat="server"></asp:TextBox>
        &nbsp; DOB (yyy-mm-dd):
        <asp:TextBox ID="DOBTextbox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="AgeLabel" runat="server" Text="Age: "></asp:Label>
        <br />
        <br />
        House Number:&nbsp;
        <asp:TextBox ID="HouseNumberTextbox" runat="server" Width="106px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Street:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="StreetTextbox" runat="server" Width="304px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City/County:
        <asp:TextBox ID="CityTextbox" runat="server"></asp:TextBox>
&nbsp;
        <br />
        <br />
        Country:&nbsp;
            <asp:DropDownList ID="CountryDropDown" runat="server" OnSelectedIndexChanged="CountryDropDown_SelectedIndexChanged">
<asp:ListItem>United States of America (USA)</asp:ListItem>
<asp:ListItem>Afghanistan</asp:ListItem>
<asp:ListItem>Albania</asp:ListItem>
<asp:ListItem>Algeria</asp:ListItem>
<asp:ListItem>Andorra</asp:ListItem>
<asp:ListItem>Angola</asp:ListItem>
<asp:ListItem>Anguilla</asp:ListItem>
<asp:ListItem>Antigua & Barbuda</asp:ListItem>
<asp:ListItem>Argentina</asp:ListItem>
<asp:ListItem>Armenia</asp:ListItem>
<asp:ListItem>Australia</asp:ListItem>
<asp:ListItem>Austria</asp:ListItem>
<asp:ListItem>Azerbaijan</asp:ListItem>
<asp:ListItem>Bahamas</asp:ListItem>
<asp:ListItem>Bahrain</asp:ListItem>
<asp:ListItem>Bangladesh</asp:ListItem>
<asp:ListItem>Barbados</asp:ListItem>
<asp:ListItem>Belarus</asp:ListItem>
<asp:ListItem>Belgium</asp:ListItem>
<asp:ListItem>Belize</asp:ListItem>
<asp:ListItem>Benin</asp:ListItem>
<asp:ListItem>Bermuda</asp:ListItem>
<asp:ListItem>Bhutan</asp:ListItem>
<asp:ListItem>Bolivia</asp:ListItem>
<asp:ListItem>Bosnia & Herzegovina</asp:ListItem>
<asp:ListItem>Botswana</asp:ListItem>
<asp:ListItem>Brazil</asp:ListItem>
<asp:ListItem>Brunei Darussalam</asp:ListItem>
<asp:ListItem>Bulgaria</asp:ListItem>
<asp:ListItem>Burkina Faso</asp:ListItem>
<asp:ListItem>Burundi</asp:ListItem>
<asp:ListItem>Cambodia</asp:ListItem>
<asp:ListItem>Cameroon</asp:ListItem>
<asp:ListItem>Canada</asp:ListItem>
<asp:ListItem>Cape Verde</asp:ListItem>
<asp:ListItem>Cayman Islands</asp:ListItem>
<asp:ListItem>Central African Republic</asp:ListItem>
<asp:ListItem>Chad</asp:ListItem>
<asp:ListItem>Chile</asp:ListItem>
<asp:ListItem>China</asp:ListItem>
<asp:ListItem>China - Hong Kong / Macau</asp:ListItem>
<asp:ListItem>Colombia</asp:ListItem>
<asp:ListItem>Comoros</asp:ListItem>
<asp:ListItem>Congo</asp:ListItem>
<asp:ListItem>Congo, Democratic Republic of (DRC)</asp:ListItem>
<asp:ListItem>Costa Rica</asp:ListItem>
<asp:ListItem>Croatia</asp:ListItem>
<asp:ListItem>Cuba</asp:ListItem>
<asp:ListItem>Cyprus</asp:ListItem>
<asp:ListItem>Czech Republic</asp:ListItem>
<asp:ListItem>Denmark</asp:ListItem>
<asp:ListItem>Djibouti</asp:ListItem>
<asp:ListItem>Dominica</asp:ListItem>
<asp:ListItem>Dominican Republic</asp:ListItem>
<asp:ListItem>Ecuador</asp:ListItem>
<asp:ListItem>El Salvador</asp:ListItem>
<asp:ListItem>Equatorial Guinea</asp:ListItem>
<asp:ListItem>Eritrea</asp:ListItem>
<asp:ListItem>Estonia</asp:ListItem>
<asp:ListItem>Ethiopia</asp:ListItem>
<asp:ListItem>Fiji</asp:ListItem>
<asp:ListItem>Finland</asp:ListItem>
<asp:ListItem>France</asp:ListItem>
<asp:ListItem>French Guiana</asp:ListItem>
<asp:ListItem>Gabon</asp:ListItem>
<asp:ListItem>Gambia</asp:ListItem>
<asp:ListItem>Georgia</asp:ListItem>
<asp:ListItem>Germany</asp:ListItem>
<asp:ListItem>Ghana</asp:ListItem>
<asp:ListItem>Great Britain</asp:ListItem>
<asp:ListItem>Greece</asp:ListItem>
<asp:ListItem>Grenada</asp:ListItem>
<asp:ListItem>Guadeloupe</asp:ListItem>
<asp:ListItem>Guatemala</asp:ListItem>
<asp:ListItem>Guinea</asp:ListItem>
<asp:ListItem>Guinea-Bissau</asp:ListItem>
<asp:ListItem>Guyana</asp:ListItem>
<asp:ListItem>Haiti</asp:ListItem>
<asp:ListItem>Honduras</asp:ListItem>
<asp:ListItem>Hungary</asp:ListItem>
<asp:ListItem>Iceland</asp:ListItem>
<asp:ListItem>India</asp:ListItem>
<asp:ListItem>Indonesia</asp:ListItem>
<asp:ListItem>Iran</asp:ListItem>
<asp:ListItem>Iraq</asp:ListItem>
<asp:ListItem>Israel and the Occupied Territories</asp:ListItem>
<asp:ListItem>Italy</asp:ListItem>
<asp:ListItem>Ivory Coast (Cote d'Ivoire)</asp:ListItem>
<asp:ListItem>Jamaica</asp:ListItem>
<asp:ListItem>Japan</asp:ListItem>
<asp:ListItem>Jordan</asp:ListItem>
<asp:ListItem>Kazakhstan</asp:ListItem>
<asp:ListItem>Kenya</asp:ListItem>
<asp:ListItem>Korea, Democratic Republic of (North Korea)</asp:ListItem>
<asp:ListItem>Korea, Republic of (South Korea)</asp:ListItem>
<asp:ListItem>Kosovo</asp:ListItem>
<asp:ListItem>Kuwait</asp:ListItem>
<asp:ListItem>Kyrgyz Republic (Kyrgyzstan)</asp:ListItem>
<asp:ListItem>Laos</asp:ListItem>
<asp:ListItem>Latvia</asp:ListItem>
<asp:ListItem>Lebanon</asp:ListItem>
<asp:ListItem>Lesotho</asp:ListItem>
<asp:ListItem>Liberia</asp:ListItem>
<asp:ListItem>Libya</asp:ListItem>
<asp:ListItem>Liechtenstein</asp:ListItem>
<asp:ListItem>Lithuania</asp:ListItem>
<asp:ListItem>Luxembourg</asp:ListItem>
<asp:ListItem>Macedonia, Republic of</asp:ListItem>
<asp:ListItem>Madagascar</asp:ListItem>
<asp:ListItem>Malawi</asp:ListItem>
<asp:ListItem>Malaysia</asp:ListItem>
<asp:ListItem>Maldives</asp:ListItem>
<asp:ListItem>Mali</asp:ListItem>
<asp:ListItem>Malta</asp:ListItem>
<asp:ListItem>Martinique</asp:ListItem>
<asp:ListItem>Mauritania</asp:ListItem>
<asp:ListItem>Mauritius</asp:ListItem>
<asp:ListItem>Mayotte</asp:ListItem>
<asp:ListItem>Mexico</asp:ListItem>
<asp:ListItem>Moldova, Republic of</asp:ListItem>
<asp:ListItem>Monaco</asp:ListItem>
<asp:ListItem>Mongolia</asp:ListItem>
<asp:ListItem>Montenegro</asp:ListItem>
<asp:ListItem>Montserrat</asp:ListItem>
<asp:ListItem>Morocco</asp:ListItem>
<asp:ListItem>Mozambique</asp:ListItem>
<asp:ListItem>Myanmar/Burma</asp:ListItem>
<asp:ListItem>Namibia</asp:ListItem>
<asp:ListItem>Nepal</asp:ListItem>
<asp:ListItem>New Zealand</asp:ListItem>
<asp:ListItem>Nicaragua</asp:ListItem>
<asp:ListItem>Niger</asp:ListItem>
<asp:ListItem>Nigeria</asp:ListItem>
<asp:ListItem>Norway</asp:ListItem>
<asp:ListItem>Oman</asp:ListItem>
<asp:ListItem>Pacific Islands</asp:ListItem>
<asp:ListItem>Pakistan</asp:ListItem>
<asp:ListItem>Panama</asp:ListItem>
<asp:ListItem>Papua New Guinea</asp:ListItem>
<asp:ListItem>Paraguay</asp:ListItem>
<asp:ListItem>Peru</asp:ListItem>
<asp:ListItem>Philippines</asp:ListItem>
<asp:ListItem>Poland</asp:ListItem>
<asp:ListItem>Portugal</asp:ListItem>
<asp:ListItem>Puerto Rico</asp:ListItem>
<asp:ListItem>Qatar</asp:ListItem>
<asp:ListItem>Reunion</asp:ListItem>
<asp:ListItem>Romania</asp:ListItem>
<asp:ListItem>Russian Federation</asp:ListItem>
<asp:ListItem>Rwanda</asp:ListItem>
<asp:ListItem>Saint Kitts and Nevis</asp:ListItem>
<asp:ListItem>Saint Lucia</asp:ListItem>
<asp:ListItem>Saint Vincent and the Grenadines</asp:ListItem>
<asp:ListItem>Samoa</asp:ListItem>
<asp:ListItem>Sao Tome and Principe</asp:ListItem>
<asp:ListItem>Saudi Arabia</asp:ListItem>
<asp:ListItem>Senegal</asp:ListItem>
<asp:ListItem>Serbia</asp:ListItem>
<asp:ListItem>Seychelles</asp:ListItem>
<asp:ListItem>Sierra Leone</asp:ListItem>
<asp:ListItem>Singapore</asp:ListItem>
<asp:ListItem>Slovak Republic (Slovakia)</asp:ListItem>
<asp:ListItem>Slovenia</asp:ListItem>
<asp:ListItem>Solomon Islands</asp:ListItem>
<asp:ListItem>Somalia</asp:ListItem>
<asp:ListItem>South Africa</asp:ListItem>
<asp:ListItem>South Sudan</asp:ListItem>
<asp:ListItem>Spain</asp:ListItem>
<asp:ListItem>Sri Lanka</asp:ListItem>
<asp:ListItem>Sudan</asp:ListItem>
<asp:ListItem>Suriname</asp:ListItem>
<asp:ListItem>Swaziland</asp:ListItem>
<asp:ListItem>Sweden</asp:ListItem>
<asp:ListItem>Switzerland</asp:ListItem>
<asp:ListItem>Syria</asp:ListItem>
<asp:ListItem>Tajikistan</asp:ListItem>
<asp:ListItem>Tanzania</asp:ListItem>
<asp:ListItem>Thailand</asp:ListItem>
<asp:ListItem>Netherlands</asp:ListItem>
<asp:ListItem>Timor Leste</asp:ListItem>
<asp:ListItem>Togo</asp:ListItem>
<asp:ListItem>Trinidad & Tobago</asp:ListItem>
<asp:ListItem>Tunisia</asp:ListItem>
<asp:ListItem>Turkey</asp:ListItem>
<asp:ListItem>Turkmenistan</asp:ListItem>
<asp:ListItem>Turks & Caicos Islands</asp:ListItem>
<asp:ListItem>Uganda</asp:ListItem>
<asp:ListItem>Ukraine</asp:ListItem>
<asp:ListItem>United Arab Emirates</asp:ListItem>
<asp:ListItem>Uruguay</asp:ListItem>
<asp:ListItem>Uzbekistan</asp:ListItem>
<asp:ListItem>Venezuela</asp:ListItem>
<asp:ListItem>Vietnam</asp:ListItem>
<asp:ListItem>Virgin Islands (UK)</asp:ListItem>
<asp:ListItem>Virgin Islands (US)</asp:ListItem>
<asp:ListItem>Yemen</asp:ListItem>
<asp:ListItem>Zambia</asp:ListItem>
<asp:ListItem>Zimbabwe</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="StateTextbox" runat="server" Width="315px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Zip Code:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="ZipTextbox" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        Academic Year:&nbsp;
        <asp:DropDownList ID="AcademicYearDrop" runat="server" OnSelectedIndexChanged="AcademicYearDrop_SelectedIndexChanged">
            <asp:ListItem>Academic Year</asp:ListItem>
            <asp:ListItem>Freshman</asp:ListItem>
            <asp:ListItem>Sophomore</asp:ListItem>
            <asp:ListItem>Junior</asp:ListItem>
            <asp:ListItem>Senior</asp:ListItem>
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Activity:"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:DropDownList
                        ID="ActivityDrop"
                        DataSourceID="srcActivity"
                        DataTextField="ActivityDescription"
                        DataValueField="ActivityID"
                        AppendDataBoundItems="true"
                        runat="server" OnSelectedIndexChanged="ActivityDrop_SelectedIndexChanged1">
                        <asp:ListItem>Select Activity</asp:ListItem>
                    </asp:DropDownList>

                    <asp:SqlDataSource
                        ID="srcActivity"
                        SelectCommand="SELECT ActivityID, ActivityDescription FROM ACTIVITY"
                        ConnectionString="Server=LEASPC\MSSQLSERVER01;Database=Lab3;Trusted_Connection=Yes;"
                        runat="server" />
        &nbsp;&nbsp;
        <br />
        <br />
        School ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="SchoolIDTextbox" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="PopulateButton" runat="server" Text="Populate" OnClick="PopulateButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="CommitButton" runat="server" Text="Commit" OnClick="CommitButton_Click" />
        &nbsp;&nbsp;
        <asp:Button ID="ClearButton" runat="server" Text="Clear" OnClick="ClearButton_Click" />
    &nbsp;&nbsp;
        &nbsp;<asp:Button ID="GridButton" runat="server" OnClick="Grid_Click" Text="Grid" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExitButton" runat="server" Text="Exit" OnClick="ExitButton_Click" />
        <br />
        <br />
         <asp:Label ID="UpdatedLabel" runat="server" Text="Last Updated By: "></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />

                <br />
            <asp:GridView 
                ID="table"
                DataSourceid="database"
                emptydatatext="No records in database"
                visible="true"
                runat="server">
                <RowStyle BackColor="LightCyan" />
                <AlternatingRowStyle BackColor="PaleTurquoise" />
                </asp:GridView>

                        <asp:SqlDataSource
                        ID="database"
                        SelectCommand="SELECT STUDENT.LastName, ACTIVITY.ActivityDescription FROM STUDENT INNER JOIN STUDENTACTIVITY ON STUDENT.StudentID=STUDENTACTIVITY.StudentID LEFT OUTER JOIN ACTIVITY ON STUDENTACTIVITY.ActivityID = ACTIVITY.ActivityID;"
                        ConnectionString = "Server=LEASPC\MSSQLSERVER01;Database=Lab3;Trusted_Connection=Yes;"
                        runat="server" />

                
        <br />


 


</asp:Content>

