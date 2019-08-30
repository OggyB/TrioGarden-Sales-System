using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class musteriGorusmeListesi : System.Web.UI.Page
{
    string kullaniciadi;

    [System.Web.Services.WebMethod]
    public string NotuCek(string AdSoyad)
    {
        string not = DBIslem.DtGetir("SELECT gNOT FROM View_GorusmeListesi where gKULLANICI_ID='" + Session["kulid"] + "'").ToString();
        return not;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            kullaniciadi = Session["kullanici"].ToString();
            if (Convert.ToInt32(Session["kulid"]).Equals(16) || Convert.ToInt32(Session["kulid"]).Equals(12))
            {
                RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi"); // burdan çekicez
            RPT_GORUSME_LISTE.DataBind();
            }
            
            //LISTE
            
        
        else
        {
            //LISTE
            RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi where gKULLANICI_ID='" + Session["kulid"] + "'"); // burdan çekicez
            RPT_GORUSME_LISTE.DataBind();
        }
        }
        else
        {
            Response.Redirect("girisYap.aspx");
        }
        
        //
      

        

     }


    protected void RPT_GORUSME_LISTE_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) == 16)
        {
            e.Item.FindControl("Image3").Visible = false;
        }
        else
        {
            e.Item.FindControl("Image3").Visible = true;
        }
    }
}