using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BorcListe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            if (Session["kulid"] != null && (Convert.ToInt32(Session["kulid"]) == 12 || Convert.ToInt32(Session["kulid"]) == 16))
            {
                RPT_BORCLISTE.DataSource = DBIslem.DtGetir("SELECT gKULLANICI_ID ,gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici      inner join TBL_GORUSME g    ON gecici.GID = g.gID inner join TBL_MUSTERI m    on g.gMUSTERI_ID = m.mID where gecici.IsActive = 0   order by DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH))");
                RPT_BORCLISTE.DataBind();

            }
            if (Convert.ToInt32(Session["kulid"]) != 12 && Convert.ToInt32(Session["kulid"]) != 16)
            {
                RPT_BORCLISTE.DataSource = DBIslem.DtGetir("SELECT gKULLANICI_ID ,gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici      inner join TBL_GORUSME g    ON gecici.GID = g.gID inner join TBL_MUSTERI m    on g.gMUSTERI_ID = m.mID where gecici.IsActive = 0 and gKULLANICI_ID = "+Convert.ToInt32(Session["kulid"])+"  order by DATEDIFF(DAY, GETDATE(), Convert(datetime2, TARIH))");
                RPT_BORCLISTE.DataBind();
            }
        }

        else
        {
            Response.Redirect("girisYap.aspx");
        }
    }

    protected void RPT_BORCLISTE_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) == 12)
        {
            e.Item.FindControl("tahsilat_kolon").Visible = false;
            clnTahsilat.Visible = false;
        }
        if (Convert.ToInt32(Session["kulid"]) == 16)
        {
            e.Item.FindControl("tahsilat_kolon").Visible = true;
            clnTahsilat.Visible = true;
        }
        if (Convert.ToInt32(Session["kulid"]) != 12 && Convert.ToInt32(Session["kulid"]) != 16)
        {
            e.Item.FindControl("tahsilat_kolon").Visible = true;
            clnTahsilat.Visible = true;



        }
    }

    protected void RPT_BORCLISTE_ItemCommand(object source, RepeaterCommandEventArgs e)
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
}