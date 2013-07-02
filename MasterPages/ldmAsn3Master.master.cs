//Developer:Leonard McGhie
//Purpose: Append categorycode and categoryname to URL then redirect to product selection page.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ldmAsn3Master : System.Web.UI.MasterPage
{
   
    protected void lsbCategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strCategoryCode = lsbCategory.SelectedValue;         //Get selected listbox category code
        string strCategoryName = lsbCategory.SelectedItem.Text;     //Get selected listbox category name
        
        //Append category code and name to url
        string strRedirect;
        strRedirect = "ldmProductSelection.aspx?CategoryCode=" + strCategoryCode + "&CategoryName=" + strCategoryName;
        Response.Redirect(strRedirect);    //Redirect to ldmProductSelection page
             
        
    }
}
