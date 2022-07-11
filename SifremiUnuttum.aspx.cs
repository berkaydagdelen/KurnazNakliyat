using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SifremiUnuttum : System.Web.UI.Page
{

    string conString;
    SqlConnection baglanti;

    protected void Page_Load(object sender, EventArgs e)
    {
        //logo getir

        DataSetTableAdapters.Tbl_LogoTableAdapter dt4 = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Repeater13.DataSource = dt4.LogoGetir();
        Repeater13.DataBind();
    }
    protected void BtnGiris_Click(object sender, EventArgs e)
    {


        



        conString = ConfigurationManager.ConnectionStrings["KurnazNakliyat"].ConnectionString;
        baglanti = new SqlConnection(conString);

        baglanti.Open();

        SqlCommand komut = new SqlCommand("select * from Tbl_Admin where TcNo=@p1", baglanti);
        komut.Parameters.AddWithValue("@p1", TxtTcNo.Text);
 
        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            Session.Add("TcNo", TxtTcNo.Text);
            Response.Redirect("SifremiUnuttumDetay.aspx?TcNo=" + TxtTcNo.Text);
        }

       
        else
        {
            Response.Write("<script language=javascript>alert('T.C. No Yanlış')</script>");

            TxtTcNo.Text = "";
            
        }
    
    }

  
}