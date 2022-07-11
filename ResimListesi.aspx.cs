using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResimListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       

        DataSetTableAdapters.Tbl_SliderResimTableAdapter dt = new DataSetTableAdapters.Tbl_SliderResimTableAdapter();
        Repeater1.DataSource = dt.SliderResim();
        Repeater1.DataBind();
    }
}