using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHakkimizda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        



        DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter dt = new DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter();
        Repeater1.DataSource = dt.Hakkimizda_NedenBizGetir();
        Repeater1.DataBind();
    }
  
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("HakkimizdaGuncelle.aspx");
    }
}