using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    [System.Web.Services.WebMethod]



    public string GetCalendarId()
    {
        Site.Code.GoogleCalendar calendar = new Site.Code.GoogleCalendar
       ("Google calendar name", "Google account name", "Google account password");
        return calendar.GetCalendarId();
    }
    DataTable dtgorusme, dtsatis, dtmusteri;
    string kullaniciadi;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            kullaniciadi = Session["kullanici"].ToString();
            //Response.Write("Hoşgeldin " + Session["kullanici"]);
            MUSTERI_LISTESI_GETIR();
            GECIKEN_ODEME_LISTELE();
            ODEME_LISTELE();
            TAHSILAT_LISTELE();

            //
            if (Convert.ToInt32(Session["kulid"]) == 12 || Convert.ToInt32(Session["kulid"]) == 16)   
            {
                dtgorusme = DBIslem.DtGetir("SELECT * FROM TBL_GORUSME");

                //
                dtsatis = DBIslem.DtGetir("SELECT * FROM TBL_SOZLESME");

                //
                dtmusteri = DBIslem.DtGetir("SELECT * FROM TBL_MUSTERI");

            }
            if (Convert.ToInt32(Session["kulid"]) != 12 && Convert.ToInt32(Session["kulid"]) != 16)
            {
                dtgorusme = DBIslem.DtGetir("SELECT * FROM TBL_GORUSME  where gKULLANICI_ID='" + Session["kulid"] + "'");

                //
                dtsatis = DBIslem.DtGetir("SELECT * FROM TBL_SOZLESME where sKULID='" + Session["kulid"] + "'");

                //
                dtmusteri = DBIslem.DtGetir("SELECT * FROM TBL_MUSTERI where mKULLANICI_ID='" + Session["kulid"] + "'");
            }

            lblGorusmeToplam.Text = dtgorusme.Rows.Count.ToString();
            lblSatisToplam.Text = dtsatis.Rows.Count.ToString();
            lblMusteriToplam.Text = dtmusteri.Rows.Count.ToString();
        }
        else
        {
            Response.Redirect("girisYap.aspx");
        }
    }

    private void MUSTERI_LISTESI_GETIR()
    {
        if (kullaniciadi == "admin" || Convert.ToInt32(Session["kulid"]) == 16)
        {
            RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi order by gID desc");
            RPT_GORUSME_LISTE.DataBind();


            
            DataTable düzenlenecek = DBIslem.DtGetir(" SELECT ( sTAKSIT_SAYISI -   (Select COUNT(TBL_TAHSILAT.tID) FROM TBL_TAHSILAT WHERE TBL_TAHSILAT.gID = View_Satis.gID) ) AS Kalan_Taksit , TOPLAM_TAHSIL = ISNULL((SELECT SUM(Convert(money, ISNULL((TBL_GECICI.TUTAR), 0))) FROM TBL_GECICI WHERE IsActive = 1 AND TBL_GECICI.GID = View_Satis.gID GROUP BY AD_SOYAD), 0), *FROM View_Satis left join TBL_KULLANICI on View_Satis.sKULID = TBL_KULLANICI.kID order by gID desc");
          
            RPT_SOZLEME_LISTE.DataSource = düzenlenecek;
            
            RPT_SOZLEME_LISTE.DataBind();
        }
        else
        {
           // DataTable düzenlenecek = DBIslem.DtGetir("SELECT ( sTAKSIT_SAYISI -   (Select COUNT(TBL_TAHSILAT.tID) FROM TBL_TAHSILAT WHERE TBL_TAHSILAT.gID = View_Satis.gID) ) AS Kalan_Taksit , TOPLAM_TAHSIL = ISNULL((SELECT SUM(Convert(money, ISNULL((TBL_GECICI.TUTAR), 0))) FROM TBL_GECICI WHERE IsActive = 1 AND TBL_GECICI.GID = View_Satis.gID GROUP BY AD_SOYAD), 0), *FROM TBL_GORUSME  inner JOIN View_Satis on View_Satis.gID = TBL_GORUSME.gID WHERE sKULID = "+Convert.ToInt32(Session["kulid"])+"  order by View_Satis.gID desc");

            RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi where gKULLANICI_ID='" + Session["kulid"] + "'"); ;
            RPT_GORUSME_LISTE.DataBind();
            //RPT_GORUSME_LISTE1.DataSource = DBIslem.DtGetir("select gNOT from View_GorusmeListesi where gKULLANICI_ID='" + Session["kulid"] + "' and gMUSTERID =' " + RPT_GORUSME_LISTE);
            //RPT_GORUSME_LISTE1.DataBind();

            RPT_SOZLEME_LISTE.DataSource = DBIslem.DtGetir("SELECT ( sTAKSIT_SAYISI -   (Select COUNT(TBL_TAHSILAT.tID) FROM TBL_TAHSILAT WHERE TBL_TAHSILAT.gID = View_Satis.gID) ) AS Kalan_Taksit , TOPLAM_TAHSIL = ISNULL((SELECT SUM(Convert(money, ISNULL((TBL_GECICI.TUTAR), 0))) FROM TBL_GECICI WHERE IsActive = 1 AND TBL_GECICI.GID = View_Satis.gID GROUP BY AD_SOYAD), 0), *FROM View_Satis left join TBL_KULLANICI on View_Satis.sKULID = TBL_KULLANICI.kID where sKULID = "+Convert.ToInt32(Session["kulid"])+" order by gID desc");
            RPT_SOZLEME_LISTE.DataBind();

        }

    }

    [System.Web.Services.WebMethod]
    public static string NotGoster(object a)
    {
        DataTable dt = DBIslem.DtGetir("Select gNOT from TBL_MUSTERI where gID =" + a + " ");
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            return dt.Rows[i][0].ToString();
        }
        return "";
    }
    private void GECIKEN_ODEME_LISTELE()
    {
        if (Convert.ToInt32(Session["kulid"]) != 12 && Convert.ToInt32(Session["kulid"]) != 16)
        {
            RPT_GECIKEN.DataSource = DBIslem.DtGetir("SELECT gKULLANICI_ID , gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici  inner join TBL_GORUSME g ON gecici.GID = g.gID inner join TBL_MUSTERI m on g.gMUSTERI_ID = m.mID where DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH)) <= 0 and mKULLANICI_ID = '" + Convert.ToInt32(Session["kulid"]) + "' and gecici.IsActive = 0  order by DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH))");
            RPT_GECIKEN.DataBind();
            return;
        }
        RPT_GECIKEN.DataSource = DBIslem.DtGetir("SELECT gKULLANICI_ID, gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici  inner join TBL_GORUSME g ON gecici.GID = g.gID inner join TBL_MUSTERI m on g.gMUSTERI_ID = m.mID where DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH)) <= 0 and gecici.IsActive = 0 order by DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH))");
        RPT_GECIKEN.DataBind();
    }
    private void ODEME_LISTELE()
    {
        if (Convert.ToInt32(Session["kulid"]) == 12 || Convert.ToInt32(Session["kulid"]) == 16)
        {
            RPT_ODEMELISTESI.DataSource = DBIslem.DtGetir("SELECT gKULLANICI_ID ,gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici      inner join TBL_GORUSME g    ON gecici.GID = g.gID inner join TBL_MUSTERI m    on g.gMUSTERI_ID = m.mID where DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH)) between 0 and 32 and gecici.IsActive = 0   order by DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH))");
            RPT_ODEMELISTESI.DataBind();
            return;
        }
        RPT_ODEMELISTESI.DataSource = DBIslem.DtGetir("SELECT gKULLANICI_ID ,gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici      inner join TBL_GORUSME g     ON gecici.GID = g.gID inner join TBL_MUSTERI m     on g.gMUSTERI_ID = m.mID where DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH)) between 0 and 32 and gKULLANICI_ID = " + Convert.ToInt32(Session["kulid"]) + " and gecici.IsActive = 0  order by DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH))");
        RPT_ODEMELISTESI.DataBind();
    }
    private void TAHSILAT_LISTELE()
    {
        if (Convert.ToInt32(Session["kulid"]) != 12 && Convert.ToInt32(Session["kulid"]) != 16)
        {
            RPT_TAHSILAT_LISTESI.DataSource = DBIslem.DtGetir("SELECT NO ,AD_SOYAD , TUTAR ,PARA_BIRIMI , TARIH , tTARIH  FROM TBL_TAHSILAT LEFT JOIN TBL_GECICI ON TBL_TAHSILAT.gID = TBL_GECICI.[GID] where tKULLANICI_ID = "+Convert.ToInt32(Session["kulid"])+" AND TBL_GECICI.IsActive = 1 and tNO = [NO]");
            RPT_TAHSILAT_LISTESI.DataBind();
        }
        else
        {
            RPT_TAHSILAT_LISTESI.DataSource = DBIslem.DtGetir("  SELECT NO ,AD_SOYAD , TUTAR ,PARA_BIRIMI , TARIH , tTARIH  FROM TBL_TAHSILAT LEFT JOIN TBL_GECICI ON TBL_TAHSILAT.gID = TBL_GECICI.[GID] where TBL_GECICI.IsActive = 1 and tNO = [NO]");
            RPT_TAHSILAT_LISTESI.DataBind();
        }
    }
    protected void RPT_GECİKEN_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) == 12)
        {
            e.Item.FindControl("tahsilat_kolon").Visible = false;
        }
        if (Convert.ToInt32(Session["kulid"]) == 16)
        {
            e.Item.FindControl("tahsilat_kolon").Visible = true;
        }
        if (Convert.ToInt32(Session["kulid"]) != 12 && Convert.ToInt32(Session["kulid"]) != 16)
        {
            e.Item.FindControl("tahsilat_kolon").Visible = true;
        }


    }
    protected void RPT_GECİKEN_ItemCommand(object sender, RepeaterCommandEventArgs e)
    {
        string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
        string odemeTarih = commandArgs[0];
        string odeyenAdSoyad = commandArgs[1];
        if (e.CommandName == "Tahsilat")
        {
            DataTable Tahsilat = DBIslem.DtGetir("select NO , TARIH, TUTAR , PARA_BIRIMI , AD_SOYAD , GID from TBL_GECICI where TARIH = '" + odemeTarih.ToString() + "' and AD_SOYAD ='" + odeyenAdSoyad.ToString() + "' ");
            Session["tahsilat"] = Tahsilat;
            Response.Redirect("MusteriTahsilat.aspx");
        }
    }

    protected void RPT_SOZLEME_LISTE_ItemDataBound(object sender, RepeaterItemEventArgs e)
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