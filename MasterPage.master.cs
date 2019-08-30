using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    DateTime bugun = DateTime.Now;
    
    int gecikengun;
    DataTable bildirimler;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
                int yil = bugun.Year;
            DataTable bildirimtable;
            if (Convert.ToInt32(Session["kulid"]).Equals(16) || Convert.ToInt32(Session["kulid"]).Equals(12))
            {
                bildirimtable = DBIslem.DtGetir(" SELECT TOP 10 gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici inner join TBL_GORUSME g ON gecici.GID = g.gID inner join TBL_MUSTERI m on g.gMUSTERI_ID = m.mID where gecici.TARIH like '%" + yil + "' and gecici.IsActive = 0 order by convert(datetime2,TARIH)");
                bildirimler = bildirimtable;
            }
            if (!Convert.ToInt32(Session["kulid"]).Equals(16) && !Convert.ToInt32(Session["kulid"]).Equals(12))
            {
            bildirimtable = DBIslem.DtGetir(" SELECT TOP 10 gecici.AD_SOYAD , gecici.TUTAR , gecici.TARIH , gecici.PARA_BIRIMI , Convert(varchar(100),DATEDIFF(DAY,GETDATE(),Convert(datetime2,TARIH))) as KALAN_GUN FROM TBL_GECICI gecici inner join TBL_GORUSME g ON gecici.GID = g.gID inner join TBL_MUSTERI m on g.gMUSTERI_ID = m.mID where g.gKULLANICI_ID = " + Session["kulid"]+" and gecici.TARIH like '%"+yil + "' and gecici.IsActive = 0 order by convert(datetime2,TARIH)");
            bildirimler = bildirimtable;   
            }
                lblKullanici.Text = "Hoşgeldin " + Session["kullanici"];
                        
             
            
            RPT_BİLDİRİMLER.DataSource = bildirimler;
            RPT_BİLDİRİMLER.DataBind();
            
        }
        else
        {
            Response.Redirect("girisYap.aspx");
        }
    }
}
