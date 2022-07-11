using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FiloGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {



        id = Convert.ToInt32(Request.QueryString["Filoid"].ToString());


        if (Page.IsPostBack == false)
        {


            DataSetTableAdapters.Tbl_FiloTableAdapter dt = new DataSetTableAdapters.Tbl_FiloTableAdapter();
            Txtid.Text = id.ToString();
            TxtAracAdi.Text = dt.SecilenFiloGetir(id)[0].AracAdi;
            TxtKasaTipi.Text = dt.SecilenFiloGetir(id)[0].KasaTipi;
            TxtUzunluk.Text = dt.SecilenFiloGetir(id)[0].Uzunluk;
            TxtGenislik.Text = dt.SecilenFiloGetir(id)[0].Genislik;
            TxtYukseklik.Text = dt.SecilenFiloGetir(id)[0].Yukseklik;
            Image1.ImageUrl = dt.SecilenFiloGetir(id)[0].AracResim;


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["Filoid"].ToString());
        DataSetTableAdapters.Tbl_FiloTableAdapter dt = new DataSetTableAdapters.Tbl_FiloTableAdapter();

        dt.FiloGuncelle(TxtAracAdi.Text, TxtKasaTipi.Text, TxtUzunluk.Text, TxtGenislik.Text, TxtYukseklik.Text, id);

        Response.Redirect("AdminFiloListesi.aspx");
    }
    protected void BtnSil_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["Filoid"].ToString());

        DataSetTableAdapters.Tbl_FiloTableAdapter dt = new DataSetTableAdapters.Tbl_FiloTableAdapter();
        dt.FiloSil(id);
        Response.Redirect("AdminFiloListesi.aspx");

    }
    protected void BtnSec_Click(object sender, EventArgs e)
    {


        id = Convert.ToInt32(Request.QueryString["Filoid"].ToString());
        FileUpload1.SaveAs(Server.MapPath("/Resimler/Filo/" + FileUpload1.FileName));
        DataSetTableAdapters.Tbl_FiloTableAdapter dt = new DataSetTableAdapters.Tbl_FiloTableAdapter();
        dt.FiloAracGuncelle("/Resimler/Filo/" + FileUpload1.FileName, id);


    }

}