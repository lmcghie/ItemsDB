<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        //Intialize value on application start.
        //Avoids initialization error if application value is not set by ldmmanagerPage.aspx when the application first loads.
        string strStartValue = "";
        Application["appDiscount"] = strStartValue;
       

    }
    
    void Application_End(object sender, EventArgs e) 
    {
       

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        

    }

    void Session_Start(object sender, EventArgs e) 
    {
        

    }

    void Session_End(object sender, EventArgs e) 
    {
       
    }
       
</script>
