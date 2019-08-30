using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class musteriKayit : System.Web.UI.Page
{
    string kullaniciadi;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblHata.Text = "";
        if (Convert.ToInt32(Session["kulid"]) == 16)
        {
            Response.Redirect("Default.aspx");
        }
        if (Session["kullanici"] != null )
        {
            //
            kullaniciadi = Session["kullanici"].ToString();
            MUSTERI_LISTESI_GETIR();
            //

            if (Request.QueryString["mID"] != null)
            {
                if (!Page.IsPostBack)
                {
                    btnKaydet.Text = "Güncelle";
                    DataTable dt = DBIslem.DtGetir("select * from TBL_MUSTERI where mID='" + Request.QueryString["mID"] + "'");
                    txtAd.Text = dt.Rows[0]["mAD"].ToString();
                    txtSoyad.Text = dt.Rows[0]["mSOYAD"].ToString();
                    txtEmail.Text = dt.Rows[0]["mMAIL"].ToString();
                    txtTelefonNo.Text = dt.Rows[0]["mTELEFON"].ToString();
                    ddUlke.SelectedValue = dt.Rows[0]["mULKE"].ToString();
                    txtNot.Text = dt.Rows[0]["mNOT"].ToString();
                }
            }
            else
            {
                btnKaydet.Text = "Kaydet";
            }
        }
        else
        {
            Response.Redirect("girisYap.aspx");
        }
    }

    private void MUSTERI_LISTESI_GETIR()
    {
        if (kullaniciadi == "admin")
        {
            RPT_MUSTERI_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_MUSTERI INNER JOIN TBL_KULLANICI on mKULLANICI_ID = kID");
            RPT_MUSTERI_LISTE.DataBind();
        }
        else
        {
            RPT_MUSTERI_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_MUSTERI INNER JOIN TBL_KULLANICI on mKULLANICI_ID = kID where mKULLANICI_ID='" + Session["kulid"] + "' order by mID desc");
            RPT_MUSTERI_LISTE.DataBind();
        }

    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
        if (!String.IsNullOrEmpty(txtAd.Text) && !String.IsNullOrEmpty(txtSoyad.Text) && !String.IsNullOrEmpty(txtTelefonNo.Text) && ddUlke.SelectedItem.Text != "Seçiniz")
        {
        try
        {
            if (btnKaydet.Text == "Güncelle")
            {
                DBIslem.DtGetir("UPDATE TBL_MUSTERI SET mAD = '" + txtAd.Text + "', mSOYAD = '" + txtSoyad.Text + "', mMAIL = '" + txtEmail.Text + "', mTELEFON = '" + txtTelefonNo.Text + "', mULKE = '" + ddUlke.SelectedItem.Text.ToString() + "', mNOT = '" + txtNot.Text + "' WHERE mID='" + Request.QueryString["mID"] + "'");
                //Txt Boşalt
                //TXT_BOSALT();

                //Sayfa Yenile
                //MUSTERI_LISTESI_GETIR();
            }
            if (btnKaydet.Text == "Kaydet")
            {
                if (DBIslem.DtMusteriVarmi(txtAd.Text,txtSoyad.Text))
                    {
//Kayıt Yap
                DBIslem.DtGetir("INSERT INTO TBL_MUSTERI (mAD,mSOYAD,mMAIL,mTELEFON,mULKE,mNOT,mKULLANICI_ID) VALUES ('" + txtAd.Text + "','" + txtSoyad.Text + "','" + txtEmail.Text + "','" + txtTelefonNo.Text + "','" + ddUlke.SelectedItem.Text.ToString() + "','" + txtNot.Text + "','" + Session["kulid"] + "')");

                //Txt Boşalt
                TXT_BOSALT();

                //Sayfa Yenile
                MUSTERI_LISTESI_GETIR();

                //son kaydı getir
                DataTable dt = DBIslem.DtGetir("SELECT * FROM TBL_MUSTERI ORDER BY mID DESC");
                string id = dt.Rows[0]["mID"].ToString();

                //Müşteri Görüşmeye Git
                Response.Redirect("musteriGorusme.aspx?mID=" + id);
                    }
                else
        {
            lblHata.Text = "Aynı bilgilerde bir müşteri zaten bulunuyor.";
            
        }
            }
        }
        catch (Exception)
        {
            throw;
        }
        }
        
        
    }
    private void TXT_BOSALT()
    {
        txtAd.Text = null; txtSoyad.Text = null; txtEmail.Text = null; txtTelefonNo.Text = null; txtNot.Text = null;
    }


    protected void btnMusteriSil_Click(object sender, EventArgs e)
    {
        
        

        
    }

    protected void RPT_MUSTERI_LISTE_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        DataTable dt = DBIslem.DtGetir("SELECT * FROM View_Satis WHERE mID = " + e.CommandArgument + " ");
        int s = dt.Rows.Count;
        if (e.CommandName.Equals("MusteriSil"))
        {
            Session["MusteriSilme"] = DBIslem.DtGetir("select mAD + ' ' + mSOYAD AS AdSoyad , mMAIL , mTELEFON , mULKE , gMESKEN_ID  from TBL_MUSTERI LEFT JOIN TBL_GORUSME on TBL_MUSTERI.mID = TBL_GORUSME.gMUSTERI_ID WHERE mID = "+e.CommandArgument+" ");
            Session["MusteriID"] = e.CommandArgument;
            Response.Redirect("MusteriSil.aspx");
            
        }
        if (e.CommandName.Equals("TemsilciDegis"))
        {
            int mID = Convert.ToInt32(e.CommandArgument);
            
            Session["MusteriDegisimID"] = mID;
           
            Response.Redirect("SatisTemsilciDegisim.aspx");
        }
        
        

    }

  
    protected void RPT_MUSTERI_LISTE_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) != 12)
        {
            e.Item.FindControl("btnTemsilciDegis").Visible = false;
        }
    }
}