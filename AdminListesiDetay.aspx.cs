using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminListesiDetay : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
      


        id = Convert.ToInt32(Request.QueryString["Adminid"].ToString());

        if (Page.IsPostBack == false)
        {


            DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
            TxtAdminid.Text = id.ToString();
            TxtAdSoyad.Text = dt.SecilenAdminGetir(id)[0].AdminAdSoyad;
            TxtTelefon.Text = dt.SecilenAdminGetir(id)[0].AdminTelNo;
            TxtKullaniciAdi.Text = dt.SecilenAdminGetir(id)[0].KullaniciAdi;
            TxtSifre.Text = dt.SecilenAdminGetir(id)[0].Sifre;
            TxtYer.Text = dt.SecilenAdminGetir(id)[0].Yer;
            TxtMail.Text = dt.SecilenAdminGetir(id)[0].Mail;
            TxtTcNo.Text = dt.SecilenAdminGetir(id)[0].TcNo;
            TxtFacebook.Text = dt.SecilenAdminGetir(id)[0].Facebook;
            TxtTwitter.Text = dt.SecilenAdminGetir(id)[0].Twitter;
            Txtinstagram.Text = dt.SecilenAdminGetir(id)[0].instagram;
            TxtYoutube.Text = dt.SecilenAdminGetir(id)[0].Youtube;

        }


    }
    protected void BtnSil_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["Adminid"].ToString());

        DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
        dt.AdminSil(id);
        Response.Redirect("AdminListesi.aspx");
    }
    protected void BtnGuncelle_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Request.QueryString["Adminid"].ToString());

        DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
        dt.AdminGuncelle(TxtAdSoyad.Text,Convert.ToInt64( TxtTelefon.Text), TxtKullaniciAdi.Text, TxtSifre.Text, TxtYer.Text, TxtMail.Text, Convert.ToInt64(TxtTcNo.Text), TxtFacebook.Text, TxtTwitter.Text, Txtinstagram.Text, TxtYoutube.Text, id);
        Response.Redirect("AdminListesi.aspx");

    }
}