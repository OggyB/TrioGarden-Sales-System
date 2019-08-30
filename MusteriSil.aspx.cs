using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MusteriSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kulid"] == null || Session["MusteriSilme"] == null)
        {
            Response.Redirect("girisYap.aspx");
        }
        
        DataTable SilinecekMusteri = (DataTable)Session["MusteriSilme"];
        foreach (DataRow item in SilinecekMusteri.Rows)
        {
            txtAdSoyad.Text = item[0].ToString();
            txtPhone.Text = item[2].ToString();
            txtMail.Text = item[1].ToString();
            txtUlke.Text = item[3].ToString();
            txtDaire.Text = item[4].ToString();
        }
    }

    protected void btnMusteriSil_Click(object sender, EventArgs e)
    {
        if (DBIslem.DtGetir("SELECT * FROM View_Satis WHERE mID = " + Session["MusteriID"] + " ").Rows.Count != 0)
        {
            lblHataMesaji.Text = "Bu müşterinin mevcut bir sözleşmesi bulunmaktadır.";
            return;
        }
        else
        {
            DBIslem.DtGetir("DELETE FROM TBL_MUSTERI WHERE mID = " + Session["MusteriID"] + " ");
            
            if (!String.IsNullOrEmpty(txtDaire.Text))
            {
             DBIslem.DtGetir("DELETE FROM TBL_GORUSME WHERE gMUSTERI_ID = " + Session["MusteriID"] + " and gMESKEN_ID = '" + txtDaire.Text + "' ");
             DBIslem.DtGetir("UPDATE TBL_FIYAT_LISTE SET fDURUM = 0 where fTIP =  '" +txtDaire.Text+ "' ");
            }
            Session.Remove("MusteriID");
            Response.Redirect("musteriKayit.aspx");
        }
    }

    protected void btnMusteriSilIptal_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}