using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
        dt.AdminEkle(TxtAdSoyad.Text,Convert.ToInt64( TxtTelefonNo.Text), TxtKullaniciAdi.Text, TxtSifre.Text, TxtYer.Text, TxtMail.Text, Convert.ToInt64(TxtTcNo.Text), TxtFacebook.Text, TxtTwitter.Text, Txtinstagram.Text, TxtYoutube.Text);
        Response.Redirect("AdminListesi.aspx");
    }
    
}