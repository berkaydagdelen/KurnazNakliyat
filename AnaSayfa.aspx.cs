using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AnaSayfa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_SliderResimTableAdapter dt = new DataSetTableAdapters.Tbl_SliderResimTableAdapter();
        Repeater1.DataSource = dt.SliderResim();
        Repeater1.DataBind();



        // Tasimacilik Hizmeti Getir
        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        Repeater2.DataSource = dt2.TasimacilikHizmetiGetir();
        Repeater2.DataBind();


        // Kiralama Hizmeti Getir
        Repeater3.DataSource = dt2.KiralamaHizmetiGetir();
        Repeater3.DataBind();




        DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter dt4 = new DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter();
        Repeater4.DataSource = dt4.Hakkimizda_NedenBizGetir();
        Repeater4.DataBind();




        DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt5 = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();
        Repeater5.DataSource = dt5.ReferansLogo();
        Repeater5.DataBind();

        Repeater7.DataSource = dt5.MemnuniyetGetir();
        Repeater7.DataBind();



        DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt6 = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
        Repeater6.DataSource = dt6.HizmetDetayGaleri();
        Repeater6.DataBind();


       



    }
}