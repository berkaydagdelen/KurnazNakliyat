using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SifremiUnuttumDetay : System.Web.UI.Page
{
    int Tc;
    protected void Page_Load(object sender, EventArgs e)
    {
        //oturum açmadann giriş yapmaya izin vermiyor

        if (Session["TcNo"] == null)
        {
            Response.Redirect("LoginGiris.aspx");
        }



        //logo getir

        DataSetTableAdapters.Tbl_LogoTableAdapter dt4 = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Repeater13.DataSource = dt4.LogoGetir();
        Repeater13.DataBind();

    }
    protected void BtnGiris_Click(object sender, EventArgs e)
    {


        if (TxtSifre.Text == "" | TxtTekrarSifre.Text == "")
        {
            Response.Redirect("SifremiUnuttumDetay.aspx");

        }




        Tc = Convert.ToInt32(Session["TcNo"].ToString());

        if (TxtSifre.Text == TxtTekrarSifre.Text)
        {

            DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
            dt.SifreYenileme(TxtTekrarSifre.Text, Tc);
            Response.Redirect("LoginGiris.aspx");
        }


        else
        {

            Response.Write("<script language=javascript>alert('İki Şifre Aynı Değil ')</script>");

            TxtSifre.Text = "";
            TxtTekrarSifre.Text = "";


        }
    }
}