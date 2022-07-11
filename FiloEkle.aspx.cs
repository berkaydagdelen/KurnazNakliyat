using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FiloEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/Filo/"+FileUpload1.FileName));

        DataSetTableAdapters.Tbl_FiloTableAdapter dt = new DataSetTableAdapters.Tbl_FiloTableAdapter();
        dt.FiloEkle(TxtAracAdi.Text, TxtKasaTipi.Text, TxtUzunluk.Text, TxtGenislik.Text, TxtYukseklik.Text, "/Resimler/Filo/"+FileUpload1.FileName);
        Response.Redirect("AdminFiloListesi.aspx");
    }
}