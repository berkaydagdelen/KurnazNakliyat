using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHizmetListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       



        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();

        Repeater1.DataSource = dt.TumHizmetler();
        Repeater1.DataBind();




    }
}