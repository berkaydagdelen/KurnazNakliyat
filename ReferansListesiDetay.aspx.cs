using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReferansListesiDetay : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {




        id = Convert.ToInt32(Request.QueryString["referansid"].ToString());

        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();
            TxtReferansid.Text = id.ToString();
            TxtAdSoyad.Text = dt.SecilenMemnuniyetGetir(id)[0].ReferansAdSoyad;
            TxtMemnuniyetMesaj.Value = dt.SecilenMemnuniyetGetir(id)[0].ReferansMemnuniyet;
            Image1.ImageUrl = dt.SecilenMemnuniyetGetir(id)[0].ReferansLogo;

        }
    }
    protected void BtnSil_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["referansid"].ToString());

        DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();

        dt.ReferansSil(id);
        Response.Redirect("ReferansListesi.aspx");
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["referansid"].ToString());


        DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();
        dt.ReferansGuncelle(TxtAdSoyad.Text, TxtMemnuniyetMesaj.Value, id);
        Response.Redirect("ReferansListesi.aspx");

    }
    protected void BtnSec_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["referansid"].ToString());
        FileUpload1.SaveAs(Server.MapPath("/Resimler/SirketLogo/" + FileUpload1.FileName));
        DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();
        dt.ReferansResimGuncelle("/Resimler/SirketLogo/" + FileUpload1.FileName, id);

    }

}