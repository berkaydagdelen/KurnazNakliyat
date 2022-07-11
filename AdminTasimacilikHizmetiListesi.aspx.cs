using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class TasimacilikHizmetiListesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


      


        //DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        //Repeater1.DataSource = dt.AdminTasimacilikListesiGetir();
        //Repeater1.DataBind();





        string conString = ConfigurationManager.ConnectionStrings["KurnazNakliyat"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(conString);


        baglanti.Open();



        SqlCommand komut = new SqlCommand("select HizmetDetayid, HizmetDetayYer,HizmetDetayResim,HizmetAdi,HizmetTuru from Tbl_HizmetDetay inner join Tbl_Hizmetler on Tbl_HizmetDetay.Hizmetid=Tbl_Hizmetler.Hizmetid  inner join Tbl_HizmetTuru on Tbl_HizmetDetay.HizmetTuruid=Tbl_HizmetTuru.HizmetTuruid where  HizmetTuru='Taşımacılık Hizmeti' order by  HizmetDetayid desc", baglanti);
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


    }
}