using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ReferansEkle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void BtnOlustur_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/Resimler/SirketLogo/" + FileUpload1.FileName));

        DataSetTableAdapters.Tbl_ReferanslarTableAdapter dt = new DataSetTableAdapters.Tbl_ReferanslarTableAdapter();
        dt.MemnuniyetEkle(TxtAdSoyad.Text, TxtMemnuniyetMesaj.Value, "/Resimler/SirketLogo/" + FileUpload1.FileName);
        Response.Redirect("ReferansListesi.aspx");
    }
}