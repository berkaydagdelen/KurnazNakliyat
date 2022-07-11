using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hizmetler : System.Web.UI.Page
{
    int HizmetTur;

    protected void Page_Load(object sender, EventArgs e)
    {

        HizmetTur = Convert.ToInt32(Request.QueryString["HizmetTuru"].ToString());

        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        Repeater2.DataSource = dt2.SecilenHizmetGetir(HizmetTur);
        Repeater2.DataBind();
    }
}