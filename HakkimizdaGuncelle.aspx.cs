using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HakkimizdaGuncelle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Page.IsPostBack == false)
        {
            DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter dt = new DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter();
            TxtHakkimzida.Text = dt.Hakkimizda_NedenBizGetir()[0].Hakkimizda;
            TxtHakkimizdaAltEk.Text = dt.Hakkimizda_NedenBizGetir()[0].HakkimizdaAltEk;

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter dt = new DataSetTableAdapters.Tbl_Hakkimizda_NedenBizTableAdapter();
        dt.HakkimizdaGuncelle(TxtHakkimzida.Text, TxtHakkimizdaAltEk.Text);
        Response.Redirect("AdminHakkimizda.aspx");
    }
}