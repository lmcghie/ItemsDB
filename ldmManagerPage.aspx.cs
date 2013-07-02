//Developer:Leonard McGhie
//Purpose: Select special sale code from user and push the value into the application
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ldmManagerPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDiscount.Focus();        //Focus onload

    }

    protected void btnDiscount_Click(object sender, EventArgs e)
    {
        //Get user input and convert it uppercase(assuming all category codes are uppercase).
        string strDiscount = txtDiscount.Text.ToUpper();  
        Application.Lock();         //Prevent simultaneous editing

        Application["appDiscount"] = strDiscount; //Push the specified value into the application
        Application.UnLock();

        //Testing
        string strout = txtDiscount.Text;
        Label1.Text = "Special sale on products with the category code of: " + strout; 
    }
}