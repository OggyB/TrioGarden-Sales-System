using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class musteriSozlesmeListesi : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["sID"] = null;
        Session["gID"] = null;
       
         if (Session["kullanici"] != null)
        {
            //LISTE
            if (Convert.ToInt32(Session["kulid"]).Equals(16) || Convert.ToInt32(Session["kulid"]).Equals(12))
            {
                RPT_SOZLESME_LISTE.DataSource = DBIslem.DtGetir("SELECT ( sTAKSIT_SAYISI -   (Select COUNT(TBL_TAHSILAT.tID) FROM TBL_TAHSILAT WHERE TBL_TAHSILAT.gID = View_Satis.gID) ) AS Kalan_Taksit , TOPLAM_TAHSIL = ISNULL((SELECT SUM(Convert(money, ISNULL((TBL_GECICI.TUTAR), 0))) FROM TBL_GECICI WHERE IsActive = 1 AND TBL_GECICI.GID = View_Satis.gID GROUP BY AD_SOYAD), 0) , *FROM View_Satis inner JOIN TBL_GORUSME on View_Satis.gID = TBL_GORUSME.gID order by View_Satis.gID desc");
                RPT_SOZLESME_LISTE.DataBind();
            }
            if (!Convert.ToInt32(Session["kulid"]).Equals(16) && !Convert.ToInt32(Session["kulid"]).Equals(12))
            {
               RPT_SOZLESME_LISTE.DataSource = DBIslem.DtGetir("SELECT ( sTAKSIT_SAYISI -   (Select COUNT(TBL_TAHSILAT.tID) FROM TBL_TAHSILAT WHERE TBL_TAHSILAT.gID = View_Satis.gID) ) AS Kalan_Taksit , TOPLAM_TAHSIL = ISNULL((SELECT SUM(Convert(money, ISNULL((TBL_GECICI.TUTAR), 0))) FROM TBL_GECICI WHERE IsActive = 1 AND TBL_GECICI.GID = View_Satis.gID GROUP BY AD_SOYAD), 0) , *FROM View_Satis inner JOIN TBL_GORUSME on View_Satis.gID = TBL_GORUSME.gID WHERE sKULID = "+Convert.ToInt32(Session["kulid"])+"  order by View_Satis.gID desc");
            RPT_SOZLESME_LISTE.DataBind(); 
            }
            
            
        }
        
        else
        {
            Response.Redirect("girisYap.aspx");
        }

        
        
     }


    protected void RPT_SOZLESME_LISTE_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) == 16)
        { 
            e.Item.FindControl("btnSozlesmeSil").Visible = false;
            e.Item.FindControl("sozlesmelink").Visible = false;
        }
        
        else
	
            e.Item.FindControl("btnSozlesmeSil").Visible = true;
            e.Item.FindControl("sozlesmelink").Visible = true;


    }

    protected void RPT_SOZLESME_LISTE_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

        string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
            string sID = commandArgs[0];
            string gID = commandArgs[1];
        
        if (e.CommandName == "sSilme")
        {
            
            //Response.Redirect("musteriSozlesmeListesi.aspx");
            Session["sID"] = sID;
            Session["gID"] = gID;


            Session["Silme"] = DBIslem.DtGetir("SELECT sSOZLESME_TARIH , sTAKSIT_SAYISI , mAD , mSOYAD , gTEKLIF_UCRET , gTEKLIF_PARA_BIRIMI , fTIP  FROM View_Satis WHERE sID = " + sID + " ");
            Response.Redirect("MusteriSozlesmeSil.aspx");
        }
        if (e.CommandName == "sDuzenle")
        {
            Session["sID"] = sID;
            Session["gID"] = gID;
            Response.Redirect("SozlesmeDuzenle.aspx");
        }
    }
}