using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResimEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/SliderResim/" + FileUpload1.FileName));

        DataSetTableAdapters.Tbl_SliderResimTableAdapter dt = new DataSetTableAdapters.Tbl_SliderResimTableAdapter();
        dt.ResimEkle("/Resimler/SliderResim/" + FileUpload1.FileName);
        Response.Redirect("ResimListesi.aspx");
    }
}