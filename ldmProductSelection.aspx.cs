//Developer: Leonard McGhie
//Purpose:  Obtain user selected categorycode from URL and compare with manager selected discount category code.
//          Compute discount price and display in label.

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ldmProductSelection : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string strReqCategory = Request.QueryString["CategoryName"];    //Get CategoryName parameter from URL
            lblCategoryName.Text = "Products in the" + " " + strReqCategory + " " + "Category"; // Display the Category Name
        }

        string a = "";
        string strSaleVal = ((string)Application["AppDiscount"]);       //Get discoutn code from application
        if (strSaleVal != a)
        {
            lblTest.Text = "The special sale category of the week is: " + strSaleVal;
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
         
        string strDiscount = ((string)Application["appDiscount"]);      // get special discount code from application
        string strCompCategory = Request.QueryString["CategoryCode"];   //Compare redirected code with user selected category code

        double dblDiscount = 0.0; 
        double dblpriceValue = 0.0;
        GridView  theRow = GridView1;       
        
        string strout = theRow.SelectedRow.Cells[2].Text;
        string strTrimmed = (strout as string).Trim('$');          //Remove $ sign from value to prevent conversion errors
       
        dblpriceValue = Convert.ToDouble(strTrimmed);
        
        //if application value and selected value are the same then give 30% discount, else 15% discount
        if (strDiscount.Equals(strCompCategory))
        {
            dblDiscount = dblpriceValue * 0.7;          //special discount value
        }
        else if(!strDiscount.Equals(strCompCategory) || String.IsNullOrEmpty(strDiscount))
        {
            dblDiscount = dblpriceValue * 0.85;         //normal sale discount
        }
        //Display final price in label; to two decimal places
        lblDiscountedPrice.Text = "The sale price of this product in this week is: " + dblDiscount.ToString("C2");
      
    }
}
