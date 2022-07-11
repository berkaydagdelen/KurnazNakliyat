using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KiralamaHizmetiEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        

        if (Page.IsPostBack == false)
        {
            //Hizmet Listesi
            DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
            DropDownList1.DataSource = dt2.KiralamaHizmetiGetir();
            DropDownList1.DataTextField = "HizmetAdi";
            DropDownList1.DataValueField = "Hizmetid";
            DropDownList1.DataBind();
        }
    
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/hizmetler/KiralamaHizmeti/" + FileUpload1.FileName));
      
        DataSetTableAdapters.Tbl_HizmetDetayTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetDetayTableAdapter();
        dt.KiralamaHizmetiEkle(TxtHizmetAdi.Text, TxtYapilanYer.Text, "/Resimler/hizmetler/KiralamaHizmeti/" + FileUpload1.FileName, Convert.ToInt32(DropDownList1.SelectedValue));
        Response.Redirect("AdminKiralamaHizmetiListesi.aspx");
    }
}