using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHizmetEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       

        if (Page.IsPostBack == false)
        {


            //hizmet Türü Getirme

            DataSetTableAdapters.Tbl_HizmetTuruTableAdapter dt2 = new DataSetTableAdapters.Tbl_HizmetTuruTableAdapter();
            DropDownList1.DataSource = dt2.HizmetTurGetir();
            DropDownList1.DataTextField = "HizmetTuru";
            DropDownList1.DataValueField = "HizmetTuruid";
            DropDownList1.DataBind();
        
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/"+FileUpload1.FileName));

        DataSetTableAdapters.Tbl_HizmetlerTableAdapter dt = new DataSetTableAdapters.Tbl_HizmetlerTableAdapter();
        dt.HizmetEkle(TxtHizmetAdi.Text, "/Resimler/" + FileUpload1.FileName, Convert.ToInt32(DropDownList1.SelectedValue));
        Response.Redirect("AdminHizmetListesi.aspx");

    }
}