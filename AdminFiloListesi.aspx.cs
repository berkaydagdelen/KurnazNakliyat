using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminFilo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {      


        DataSetTableAdapters.Tbl_FiloTableAdapter dt = new DataSetTableAdapters.Tbl_FiloTableAdapter();
        Repeater1.DataSource = dt.FiloGetir();
        Repeater1.DataBind();
    }
    
}