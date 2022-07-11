using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResimSil : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {

     


        id=Convert.ToInt32(Request.QueryString["SliderResimid"].ToString());
        

        DataSetTableAdapters.Tbl_SliderResimTableAdapter dt = new DataSetTableAdapters.Tbl_SliderResimTableAdapter();
        dt.ResimSil(id);
        Response.Redirect("ResimListesi.aspx");
    }
}