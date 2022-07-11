using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSetTableAdapters.Tbl_KategorilerTableAdapter dt = new DataSetTableAdapters.Tbl_KategorilerTableAdapter();

        //Repeater1.DataSource = dt.AltKategori();
        //Repeater1.DataBind();

        //Repeater2.DataSource = dt.UstKategori();
        //Repeater2.DataBind();

        DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter dt2 = new DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter();
        Repeater1.DataSource = dt2.Hakkimizda_NedenBizGetir();
        Repeater1.DataBind();

        Repeater2.DataSource = dt2.Hakkimizda_NedenBizGetir();
        Repeater2.DataBind();


        DataSetTableAdapters.Tbl_LogoTableAdapter dt4 = new DataSetTableAdapters.Tbl_LogoTableAdapter();
        Repeater13.DataSource = dt4.LogoGetir();
        Repeater13.DataBind();

        DataSetTableAdapters.Tbl_AdminTableAdapter dt12 = new DataSetTableAdapters.Tbl_AdminTableAdapter();
        Repeater3.DataSource = dt12.AdminBilgiGetir1();
        Repeater3.DataBind();
       
        Repeater4.DataSource = dt12.AdminBilgiGetir1();
        Repeater4.DataBind();

        Repeater5.DataSource = dt12.AdminBilgiGetir1();
        Repeater5.DataBind();

        Repeater6.DataSource = dt12.AdminBilgiGetir1();
        Repeater6.DataBind();
    }
}
