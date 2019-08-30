using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MusteriSozlesmeSil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sID"] != null && Session["gID"] != null)
        {
            
            DataTable dtSilinecek = (DataTable)Session["Silme"];
            foreach (DataRow item in dtSilinecek.Rows)
            {
                txtSozlesmeTarih.Text = item[0].ToString();
                txtSatisBedel.Text = item[4].ToString() + " " + item[5].ToString();
                txtAdSoyad.Text = item[2].ToString() + " " + item[3].ToString();
                txtTaksitSayi.Text = item[1].ToString();
                txtDaireKod.Text = item[6].ToString();
            }
        }
    }

    protected void btnSozlesmeSil_Click(object sender, EventArgs e)
    {
        //DBIslem.DtGetir("INSERT INTO TBL_DEL (dsID , dsSozlesme_Tarih ,dsTarih , dsUserID) SELECT sID, sSOZLESME_TARIH, Convert(nvarchar(50), GETDATE()), " + Convert.ToInt32(Session["kulid"]) + " FROM TBL_SOZLESME where sID =" + Convert.ToInt32(Session["sID"]) + " ");
        //DBIslem.DtGetir("DELETE FROM TBL_SOZLESME WHERE sID =" + Convert.ToInt32(Session["sID"]) + " ");
        //DBIslem.DtGetir("DELETE FROM TBL_GECICI WHERE gID = " + Convert.ToInt32(Session["gID"]) + " ");
        //DBIslem.DtGetir("UPDATE TBL_FIYAT_LISTE set fDURUM = 0 WHERE fTIP = '" +  + "'");
        //DBIslem.DtGetir("DELETE FROM TBL_GORUSME WHERE gID = " + Session["gID"] + " ");
        DBIslem.SozlesmeSil(Convert.ToInt32(Session["gID"]), Convert.ToInt32(Session["sID"]),txtDaireKod.Text,Convert.ToInt32(Session["kulid"]));
        Session.Remove("gID");
        Session.Remove("sID");
        Session.Remove("kulid");
        Session.Remove("Silme");
        Response.Redirect("Default.aspx");

    }

    protected void btnSozlesmeSilmeIptal_Click(object sender, EventArgs e)
    {
        Session.Remove("sID");
        Session.Remove("gID");
        Session.Remove("Silme");
        Response.Redirect("Default.aspx");
    }
}