using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.Tbl_AdminTableAdapter dt2 = new DataSetTableAdapters.Tbl_AdminTableAdapter();
       
        Repeater1.DataSource = dt2.AdminBilgiGetir1();
        Repeater1.DataBind();

        Repeater2.DataSource = dt2.AdminBilgiGetir2();
        Repeater2.DataBind();

        Repeater3.DataSource = dt2.AdminBilgiGetir1();
        Repeater3.DataBind();
        

    
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        
        
        
        DataSetTableAdapters.Tbl_iletisimTableAdapter dt = new DataSetTableAdapters.Tbl_iletisimTableAdapter();
        dt.iletisimEkle(TxtAdSoyad.Text, TxtMail.Text, TxtKonu.Text, TxtMesaj.Text);
        Response.Redirect("iletisim.aspx");


        
    }
}