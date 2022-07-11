using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminKiralamaHizmetiListesiDetay : System.Web.UI.Page
{
    int id;


    protected void Page_Load(object sender, EventArgs e)
    {


        id = Convert.ToInt32(Request.QueryString["HizmetDetayid"].ToString());



        if (Page.IsPostBack == false)
        {
            //Hizmet Listesi
            DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
            DropDownList1.DataSource = dt2.KiralamaHizmetiGetir();
            DropDownList1.DataTextField = "HizmetAdi";
            DropDownList1.DataValueField = "Hizmetid";
            DropDownList1.DataBind();





            DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
            TxtHizmetid.Text = id.ToString();
            TxtHizmetAdi.Text = dt.AdminSecilenHizmetDetayGetir(id)[0].HizmetDetayAd;
            TxtYapilanYer.Text = dt.AdminSecilenHizmetDetayGetir(id)[0].HizmetDetayYer;
            Image1.ImageUrl = dt.AdminSecilenHizmetDetayGetir(id)[0].HizmetDetayResim;
            DropDownList1.SelectedValue = dt.AdminSecilenHizmetDetayGetir(id)[0].Hizmetid.ToString();


        }
    }
    protected void BtnSil_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["HizmetDetayid"].ToString());

        DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
        dt.HizmetDetaySil(id);
        Response.Redirect("AdminKiralamaHizmetiListesi.Aspx");
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["HizmetDetayid"].ToString());


        DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
        dt.HizmetDetayKiralamaGuncelle(TxtHizmetAdi.Text, TxtYapilanYer.Text, Convert.ToInt32(DropDownList1.SelectedValue), id);
        Response.Redirect("AdminKiralamaHizmetiListesi.Aspx");
    }
    protected void BtnSec_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["HizmetDetayid"].ToString());
        FileUpload1.SaveAs(Server.MapPath("/Resimler/hizmetler/KiralamaHizmeti/" + FileUpload1.FileName));
        DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
        dt.KiralamaHizmetDetayResimGuncelle("/Resimler/hizmetler/KiralamaHizmeti/" + FileUpload1.FileName, id);
    }
}