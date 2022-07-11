using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_tema_Admin : System.Web.UI.MasterPage
{
    string kullanici;
    protected void Page_Load(object sender, EventArgs e)
    {
        //oturum açmadann giriş yapmaya izin vermiyor

        if (Session["KullaniciAdi"] == null)
        {
            Response.Redirect("LoginGiris.aspx");
        }



        kullanici = Session["KullaniciAdi"].ToString();

        DataSetTableAdapters.Tbl_AdminTableAdapter dt = new DataSetTableAdapters.Tbl_AdminTableAdapter();
        Repeater1.DataSource = dt.AdminAdSoyad(kullanici);
        Repeater1.DataBind();




    }

}
