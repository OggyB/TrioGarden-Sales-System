using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SozlesmeDuzenle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kulid"] != null)
        {
            if (!Session["sID"].Equals(null) && !Session["gID"].Equals(null))
            {
            DataTable dt = DBIslem.DtGetir("SELECT mAD , mSOYAD , gTEKLIF_UCRET , gTEKLIF_PARA_BIRIMI , sSOZLESME_TARIH , fTIP , sTAKSIT_SAYISI from View_Satis WHERE sID = "+ Session["sID"] +"");
            foreach (DataRow data in dt.Rows)
            {
                txtAdSoyad.Text = data[0].ToString()+" " + data[1].ToString();
                txtSatisBedel.Text = data[2] + " " + data[3];
                txtSozlesmeTarih.Text = data[4].ToString();
                txtDaireKod.Text = data[5].ToString();
                txtTaksitSayi.Text = data[6].ToString();
            }
            
                DataTable dtTaksitler = DBIslem.DtGetir("SELECT TUTAR , TUTAR_YAZIYLA , TARIH , [NO]  FROM TBL_GECICI WHERE gID = " + Session["gID"] + " order by NO ");
                GRD_TAKSITLER.DataSource = dtTaksitler;
                GRD_TAKSITLER.DataBind();


            }
            

        }
        else
        {
            Response.Redirect("girisYap.aspx");
        }
    }
}