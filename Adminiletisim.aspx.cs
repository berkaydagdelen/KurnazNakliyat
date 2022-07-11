using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Adminiletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

     




        string conString = ConfigurationManager.ConnectionStrings["KurnazNakliyat"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(conString);


        baglanti.Open();



        SqlCommand komut = new SqlCommand("SELECT iletisimid, iletisimAdSoyad, iletisimMail, iletisimKonu, iletisimMesaj, iletisimTarih  FROM    Tbl_iletisim order by  iletisimid desc ", baglanti);
        SqlDataAdapter dr = new SqlDataAdapter(komut);
        DataTable dt = new DataTable();
        dr.Fill(dt);
        Session["Table"] = dt;
        DataTable sdt = new DataTable();
        sdt = (DataTable)Session["Table"];

        CollectionPager1.DataSource = sdt.DefaultView;
        CollectionPager1.BindToControl = Repeater1;
        Repeater1.DataSource = CollectionPager1.DataSourcePaged;
        Repeater1.DataBind();

        baglanti.Close();

        //iletisim Sayısı
        DataSetTableAdapters.Tbl_iletisimTableAdapter dt2 = new DataSetTableAdapters.Tbl_iletisimTableAdapter();
        Repeater2.DataSource = dt2.iletisimSayma();
        Repeater2.DataBind();



    }
}