using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHizmetListesiDetay : System.Web.UI.Page
{
    int id;


    protected void Page_Load(object sender, EventArgs e)
    {





        id = Convert.ToInt32(Request.QueryString["Hizmetid"].ToString());


        if (Page.IsPostBack == false)
        {

            //hizmet Türü Getirme

            DataSetTableAdapters.Tbl_HizmetTuruTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetTuruTableAdapter();
            DropDownList1.DataSource = dt2.HizmetTurGetir();
            DropDownList1.DataTextField = "HizmetTuru";
            DropDownList1.DataValueField = "HizmetTuruid";
            DropDownList1.DataBind();




            DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
            TxtHizmetid.Text = id.ToString();
            TxtHizmetAdi.Text = dt.AdminHizmetDetayGetir(id)[0].HizmetAdi;
            Image1.ImageUrl = dt.AdminHizmetDetayGetir(id)[0].HizmetResim;
            DropDownList1.SelectedValue = dt.AdminHizmetDetayGetir(id)[0].HizmetTuruid.ToString();



        }


    }
    protected void BtnSil_Click(object sender, EventArgs e)
    {

        id = Convert.ToInt32(Request.QueryString["Hizmetid"].ToString());

        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        dt.HizmetSil(id);
        Response.Redirect("AdminHizmetListesi.aspx");
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {

        id = Convert.ToInt32(Request.QueryString["Hizmetid"].ToString());


        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        dt.HizmetGuncelle(TxtHizmetAdi.Text, Convert.ToInt32(DropDownList1.SelectedValue), id);
        Response.Redirect("AdminHizmetListesi.aspx");
    }

    protected void BtnSec_Click(object sender, EventArgs e)
    {

        id = Convert.ToInt32(Request.QueryString["Hizmetid"].ToString());
        FileUpload1.SaveAs(Server.MapPath("/Resimler/hizmetler/" + FileUpload1.FileName));
        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        dt.HizmetResimGuncelle("/Resimler/hizmetler/" + FileUpload1.FileName, id);

    }
}