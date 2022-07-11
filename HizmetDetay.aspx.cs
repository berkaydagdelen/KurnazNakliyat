using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KiralamaHizmetleriDetay : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

       



        id = Convert.ToInt32(Request.QueryString["Hizmetid"].ToString());
        
        DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
        Repeater1.DataSource = dt.HizmetDetayGetir(id);
        Repeater1.DataBind();

        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        Repeater2.DataSource = dt2.AdminHizmetDetayGetir(id);
        Repeater2.DataBind();

       

    }
}