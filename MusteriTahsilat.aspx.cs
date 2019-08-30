using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MusteriTahsilat : System.Web.UI.Page
{
    DataTable tahsilatim;
    protected void Page_Load(object sender, EventArgs e)
    {
        tahsilatim = (DataTable)Session["tahsilat"];
        
        if (Session["kullanici"] != null && (Convert.ToInt32(Session["kulid"]) == 16 || Convert.ToInt32(Session["kulid"]) != 12))
        {
            txtAdSoyad.Enabled = false;
            txtTarih.Enabled = false;
            txtTutar.Enabled = false;
            


            foreach (DataRow row in tahsilatim.Rows)
            {
                txtAdSoyad.Text = row[4].ToString();
                txtTarih.Text = row[1].ToString();
                txtTutar.Text = row[2].ToString() + " " + row[3].ToString();
            }
            RPT_TAHSILAT_LISTESI_OZEL.DataSource = DBIslem.DtGetir("select  NO ,AD_SOYAD , TUTAR , TBL_TAHSILAT.tTARIH ,TBL_TAHSILAT.tKULLANICI_ID from TBL_GECICI a inner join TBL_GORUSME b on a.GID = b.gID inner join TBL_TAHSILAT on a.GID = TBL_TAHSILAT.gID where IsActive = 1  and AD_SOYAD = '"+txtAdSoyad.Text+"' ");
            RPT_TAHSILAT_LISTESI_OZEL.DataBind();
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void btnTahsilatOnay_Click(object sender, EventArgs e)
    {
        int SenetNo = 0;
        int GID = 0;
        if (tahsilatim != null)
        {
            foreach (DataRow row in tahsilatim.Rows)
            {
                SenetNo = Convert.ToInt32(row[0]);
                GID = Convert.ToInt32(row[5]);
                break;
            }
        }

        try
        {
            string tahsilatTarihi = DateTime.Now.ToShortDateString();
            int kullaniciID = Convert.ToInt32(Session["kulid"]);
            DBIslem.DtGetir("INSERT INTO TBL_TAHSILAT (gID , tTARIH ,tTUTAR, tKULLANICI_ID , tNO) values (" + GID + " ,'" + tahsilatTarihi + "','" + txtTutar.Text + "'," + kullaniciID + "," + SenetNo + ") ");
            DBIslem.DtGetir("Update TBL_GECICI set IsActive = 1 where TARIH = '" + txtTarih.Text + "' and AD_SOYAD ='" + txtAdSoyad.Text + "'");
            Session.Remove("tahsilat");
            Response.Redirect("Default.aspx");
        }
        catch (Exception)
        {

            throw;
        }

    }

    protected void btnIptal_Click(object sender, EventArgs e)
    {
        Session.Remove("tahsilat");
        Response.Redirect("Default.aspx");
    }
}