using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HalilSite_edulab_Hakkimizda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter dt = new DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter();
        Repeater1.DataSource = dt.Hakkimizda_NedenBizGetir();
        Repeater1.DataBind();
    }
}