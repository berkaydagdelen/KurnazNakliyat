using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReferansListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



        DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt5 = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();
       
        Repeater1.DataSource = dt5.MemnuniyetGetir();
        Repeater1.DataBind();

    }
}