using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
   

    }

    protected void studentButton_click(object sender, EventArgs e)
    {
        Response.Redirect("Student.aspx");
    }

    protected void activityButton_click(object sender, EventArgs e)
    {
        Response.Redirect("Activity.aspx");
    }

    protected void schoolButton_click(object sender, EventArgs e)
    {
        Response.Redirect("School.aspx");
    }
}
