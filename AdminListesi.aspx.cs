﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminListesi : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
     


        DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
        Repeater1.DataSource = dt.AdminGetir();
        Repeater1.DataBind();
    }



}