using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MusteriProfil : System.Web.UI.Page
{
    string kullaniciadi;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            kullaniciadi = Session["kullanici"].ToString();
            //
            if (kullaniciadi == "admin")
            {
                RPT_KULLANICI_BILGI.DataSource = DBIslem.DtGetir("select * from TBL_KULLANICI");
                RPT_KULLANICI_BILGI.DataBind();
            }
            else
            {
                RPT_KULLANICI_BILGI.DataSource = DBIslem.DtGetir("select * from TBL_KULLANICI where kID = " + Session["kulid"] + " ");
                RPT_KULLANICI_BILGI.DataBind();
            }
        }
        else
        {
            Response.Redirect("girisYap.aspx");
        }
    }

    protected void btnPasswordChange_Click(object sender, EventArgs e)
    {
        Response.Redirect("kullaniciSifreDegisim.aspx");
    }

    protected void btnUserNameChange_Click(object sender, EventArgs e)
    {
        //Response.Redirect("kullaniciAdiDegisim.aspx");
    }
}