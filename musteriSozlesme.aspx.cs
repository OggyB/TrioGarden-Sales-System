using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class musteriSozlesme : System.Web.UI.Page
{
    string taksit;
    string yaziylatutar, yaziylatutar2;
    //
    string onbinler, binler, yuzler, onlar, birler;
    int sayı, basamak4, basamak3, basamak2, basamak1, basamak5;
    //
    int sayi = 0;
    int sayi1 = 0;
    int uste_uzaklik = 30;
    int uste_uzaklik1 = 30;

    TextBox[] textboxarray = new TextBox[0];
    //
    DataTable dt1 = new DataTable();
    DataTable dt2 = new DataTable();
    //Her butona basınca sıra sayısını düzenlemek için grid içinde kullanıldı.
    int sira = 0;
    //
    decimal kalanhesap = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        btnKaydet.Visible = true;
        btnIptal.Visible = true;
        //if (Convert.ToInt32(Session["kulid"]) == 16)
        //{
        //    Response.Redirect("Default.aspx");
        //}
        dt1.Columns.AddRange(new DataColumn[3] { new DataColumn("Sıra"), new DataColumn("Tarih"), new DataColumn("Taksit")});
        if (ViewState["bilgiler"] != null)
        {
            dt1 = (DataTable)ViewState["bilgiler"];
            GridView1.DataSource = dt1;
            GridView1.DataBind();
            GridView1.Columns[0].Visible = true;
        }

        //LISTE
        //RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi");
        //RPT_GORUSME_LISTE.DataBind();

        //TARIH GETİR
        //txtGorusmeTarihi.Text = DateTime.Now.ToShortDateString();

        if (Request.QueryString["gID"] != null)
        {
            
            DataTable dtsozlesmevarmi = DBIslem.DtGetir("SELECT * FROM View_Satis WHERE gID='" + Request.QueryString["gID"] + "'");
            int sozlesmesayi = dtsozlesmevarmi.Rows.Count;
            if (sozlesmesayi == 1)
            {
                TXTBOXENABLEFALSE();

               

                //BİLGİ AKTAR--> SÖZLEŞME BİLGİLERİ
                DataTable dt = DBIslem.DtGetir("SELECT * FROM View_Satis WHERE gID='" + Request.QueryString["gID"].ToString() + "'");
                txtDaire.Text = dt.Rows[0]["fTIP"].ToString();
                txtVerilenTeklif.Text = dt.Rows[0]["gTEKLIF_UCRET"].ToString();
                lblParaBirimi.Text = dt.Rows[0]["gTEKLIF_PARA_BIRIMI"].ToString(); lblParaBirimi2.Text = dt.Rows[0]["gTEKLIF_PARA_BIRIMI"].ToString();
                lblAdSoyad.Text = dt.Rows[0]["mAD"].ToString() + " " + dt.Rows[0]["mSOYAD"].ToString();
                //TARİH
                lblBlokNoSozlesme.Text = dt.Rows[0]["fBLOK"].ToString(); lblBlokNoSozlesme0.Text = dt.Rows[0]["fBLOK"].ToString();
                lblKatNoSozlesme.Text = dt.Rows[0]["fMEVKI"].ToString(); lblKatNoSozlesme0.Text = dt.Rows[0]["fMEVKI"].ToString();
                lblKonutBagimsizBolum.Text = dt.Rows[0]["fNO"].ToString(); lblKonutBagimsizBolum0.Text = dt.Rows[0]["fNO"].ToString();
                lblBagimsizBolumSozlesme.Text = dt.Rows[0]["fNO"].ToString(); lblBagimsizBolumSozlesme0.Text = dt.Rows[0]["fNO"].ToString();

                lblOdaSayısı0.Text = dt.Rows[0]["fDAIRE"].ToString();
                lblOdaSayısı.Text = dt.Rows[0]["fDAIRE"].ToString();

                lblKonutMetreKare0.Text = dt.Rows[0]["fBRUTALAN"].ToString() + " Gross";
                lblKonutMetreKare.Text = dt.Rows[0]["fBRUTALAN"].ToString() + " Brüt";
                //textler doldur
                txtGorusmeTarihi.Text = dt.Rows[0]["sSOZLESME_TARIH"].ToString();
                txtPesinat.Text = dt.Rows[0]["sSATIS_PESINAT"].ToString();
                //txtTaksitTarihi.Text = dt.Rows[0]["sTAKSIT_SAYISI"].ToString();
                txtKimlikNo.Text = dt.Rows[0]["sTC_NO"].ToString();
                txtVergiDairesi.Text = dt.Rows[0]["sVD"].ToString();
                txtAdres.Text = dt.Rows[0]["sADRES"].ToString();
                //grid doldur
                GridView1.DataSource = DBIslem.DtGetir("select NO AS SIRA,TARIH AS TARİH , TUTAR + ' ' + PARA_BIRIMI  AS TAKSİT from TBL_GECICI where gID='" + dt.Rows[0]["gID"].ToString() + "' order by NO");
                GridView1.DataBind();
                //sözleşme metni doldur
                lblAdres.Text = dt.Rows[0]["sADRES"].ToString();

                string verilenteklif = txtVerilenTeklif.Text;
                string pesinat = txtPesinat.Text;
                int taksitsayisi = Convert.ToInt32(GridView1.Rows.Count);

                string sontoplam = Convert.ToString(Convert.ToDecimal(verilenteklif) - Convert.ToDecimal(pesinat));//"160.720";//
                taksit = Convert.ToString((Convert.ToDecimal(sontoplam)) / Convert.ToDecimal(taksitsayisi)).ToString();//"45.920";//
                lblToplamBedel.Text = string.Format("{0:0.0}", verilenteklif).Replace(",", ".") + " " + lblParaBirimi.Text; //"229.610" + " TL";//
                lblPesinat.Text = pesinat + " " + lblParaBirimi.Text; //"68.890" + " TL";// 
                lblIlkveSonTaksit.Text = GridView1.Rows[0].Cells[3].Text;

                //lblTaksitTutari.Text = (Math.Round(Convert.ToDecimal(taksit), 2) + " " + lblParaBirimi.Text).ToString();
                //lblTaksitTutari.Text = taksit.Replace(",", "");
                //string gecici = lblTaksitTutari.Text.Substring(0, lblTaksitTutari.Text.Length - 2);
                //lblTaksitTutari.Text = gecici;
                //lblTaksitTutari.Text = String.Format("{0:N}", Convert.ToSingle(lblTaksitTutari.Text)) + lblParaBirimi2.Text;

                // lblTaksitTutari.Text = lblTaksitTutari.Text.Substring(0, lblTaksitTutari.Text.Length - 2) + lblParaBirimi2.Text;
                //
                lblTaksitSayisi.Text = taksitsayisi.ToString();
                //---- lblTaksitToplamBedel.Text = sontoplam + " " + lblParaBirimi.Text; eski kod. -----
                lblTaksitToplamBedel.Text = sontoplam.Replace(",", ""); // virgülü atıldı.
                string degisken = lblTaksitToplamBedel.Text.Substring(0, lblTaksitToplamBedel.Text.Length - 2); // formata düzgün çevirmek için son iki sıfır silindi
                lblTaksitToplamBedel.Text = degisken; // degiskenimiz tekrar label e gönderildi.
                lblTaksitToplamBedel.Text = String.Format("{0:c}", Convert.ToInt32(lblTaksitToplamBedel.Text));
                lblTaksitToplamBedel.Text = lblTaksitToplamBedel.Text.Substring(0, lblTaksitToplamBedel.Text.Length - 2) + lblParaBirimi2.Text;
                // lblTaksitToplamBedel.Text = String.Format("{0:C2}",Convert.ToInt32(lblTaksitToplamBedel.Text));
                //

                if (lblParaBirimi.Text == "TL")
                {
                    lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
                    lblIBANBankaTR.Text = "TR79 0001 5001 5800 7307 0949 47";
                    lblParaBirimiBankaTR.Text = "TL";
                    lblSwiftBankaTR.Text = "TVBATR2A";
                    //
                    lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
                    lblIBANBankaENG.Text = "TR79 0001 5001 5800 7307 0949 47";
                    lblParaBirimiBankaENG.Text = "TL";
                    lblSwiftBankaENG.Text = "TVBATR2A";
                }
                if (lblParaBirimi.Text == "USD")
                {
                    lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
                    lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
                    lblParaBirimiBankaTR.Text = "USD";
                    lblSwiftBankaTR.Text = "TVBATR2A";
                    //
                    lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
                    lblIBANBankaENG.Text = "TR03 0001 5001 5804 8016 8731 52";
                    lblParaBirimiBankaENG.Text = "USD";
                    lblSwiftBankaENG.Text = "TVBATR2A";
                }
                if (lblParaBirimi.Text == "EURO")
                {
                    lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
                    lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
                    lblParaBirimiBankaTR.Text = "EURO";
                    lblSwiftBankaTR.Text = "TVBATR2A";
                    //
                    lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
                    lblIBANBankaENG.Text = "TR03 0001 5001 5804 8016 8731 52";
                    lblParaBirimiBankaENG.Text = "EURO";
                    lblSwiftBankaENG.Text = "TVBATR2A";
                }

                //TC KIMLIK NO
                lblTcKimlikNo.Text = txtKimlikNo.Text;
                lblTcKimlikNo0.Text = txtKimlikNo.Text;

                //VD
                lblVergiDairesi.Text = txtVergiDairesi.Text;
                lblVergiDairesi0.Text = txtVergiDairesi.Text;

                //SÖZLEŞME TARİHİ
                string sozlesme_tarihi = Convert.ToDateTime(txtGorusmeTarihi.Text).ToString("dd/MM/yyyy");

                //SÖZLEŞME 
                lblAdresSozlesme.Text = txtAdres.Text; lblAdresSozlesme0.Text = txtAdres.Text;
                lblAdSoyadSozlesme.Text = lblAdSoyad.Text; lblAdSoyadSozlesme0.Text = lblAdSoyad.Text; lblAdSoyad19madde.Text = lblAdSoyad.Text;
                lblTarihSozlesme.Text = sozlesme_tarihi; lblTarihSozlesme0.Text = sozlesme_tarihi;//txtGorusmeTarihi.Text;

                //
                lblPesinSatisBedeliSozlesme.Text = lblToplamBedel.Text;
                lblPesinSatisBedeliSozlesme0.Text = lblToplamBedel.Text;

                lblVadeliSatisBedeliSozlesme.Text = lblToplamBedel.Text;
                lblVadeliSatisBedeliSozlesme0.Text = lblToplamBedel.Text;

                lblPesinatMiktariSozlesme.Text = lblPesinat.Text;
                lblPesinatMiktariSozlesme0.Text = lblPesinat.Text;

                lblVadeSuresiSozlesme.Text = lblTaksitSayisi.Text;
                lblVadeSuresiSozlesme0.Text = lblTaksitSayisi.Text;
                //
                lblAliciAdSoyadImzaYeri.Text = lblAdSoyadSozlesme.Text;
                lblAliciAdSoyadImzaYeri0.Text = lblAdSoyadSozlesme.Text;

                //Sayı yı yazıya çevir
                //SAYIDANYAZI();
                //SAYIDANYAZI2();

                //TÜM TAKSİTLERİ KAYDET
                //DBIslem.DtGetir("DELETE FROM TBL_GECICI");

                //for (int j = 0; j < balonodemesayisi; j++)
                //{
                //    DBIslem.DtGetir("UPDATE TBL_GECICI SET TUTAR='" + (taksit + Convert.ToDecimal(txtBalonOdemeTaksitTutari.Text)) + "'WHERE NO='" + balonodemebaslangic + "'");
                //    balonodemebaslangic = balonodemebaslangic + 12;
                //}

                //RPT_TAKSIT_LISTESI.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI");
                //RPT_TAKSIT_LISTESI.DataBind();


                //
                //RPT_SENET.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI where GID='" + dt.Rows[0]["gID"].ToString() + "' order by no");
                //RPT_SENET.DataBind();


                //for (int i = 0; i < taksitsayisi; i++)
                //{
                //    //DateTime tarihgecici = DateTime.Now.AddMonths(-2);
                //    DateTime vadetarih = Convert.ToDateTime(GridView1.Rows[i].Cells[1].Text);//tarihgecici.AddMonths(i + 1);//DateTime.Now.AddMonths(i + 1);
                //    DBIslem.DtGetir("INSERT INTO TBL_GECICI(NO,TARIH,TUTAR,PARA_BIRIMI,BUGUN,AD_SOYAD,TCNO,ADRES,TUTAR_YAZIYLA,GUN,AY,YIL,TOPLAM_TAKSIT,GID)VALUES('" + (i + 1) + "','" + vadetarih.ToShortDateString() + "','" + GridView1.Rows[i].Cells[2].Text + "','" + lblParaBirimi.Text + "','" + DateTime.Now.ToShortDateString() + "','" + lblAdSoyadSozlesme.Text + "','" + txtKimlikNo.Text + "','" + txtAdres.Text + "','" + yaziylatutar2 + "','" + vadetarih.ToString("dd") + "','" + vadetarih.ToString("MMMM") + "','" + vadetarih.ToString("yyyy") + "','" + taksitsayisi + "','" + Request.QueryString["gID"] + "')");

                //}

                RPT_SENET.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI where GID='" + dt.Rows[0]["gID"].ToString() + "' order by no");
                RPT_SENET.DataBind();
                //
                Button2.Enabled = false;
                btnArtimli.Enabled = false;
                //btnTemizle.Enabled = false;
                btnKaydet.Enabled = false;
                btnIptal.Enabled = false;
            }
            else
            {
                //BİLGİ AKTAR--> GÖRÜŞME BİLGİLERİ
                DataTable dt = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi WHERE gID='" + Request.QueryString["gID"].ToString() + "'");
                txtDaire.Text = dt.Rows[0]["fTIP"].ToString();
                txtVerilenTeklif.Text = dt.Rows[0]["gTEKLIF_UCRET"].ToString();
                lblParaBirimi.Text = dt.Rows[0]["gTEKLIF_PARA_BIRIMI"].ToString(); lblParaBirimi2.Text = dt.Rows[0]["gTEKLIF_PARA_BIRIMI"].ToString();
                lblAdSoyad.Text = dt.Rows[0]["mAD"].ToString() + " " + dt.Rows[0]["mSOYAD"].ToString();
                //TARİH
                //txtGorusmeTarihi1.Text = DateTime.Now.ToShortDateString();
                lblBlokNoSozlesme.Text = dt.Rows[0]["fBLOK"].ToString(); lblBlokNoSozlesme0.Text = dt.Rows[0]["fBLOK"].ToString();
                lblKatNoSozlesme.Text = dt.Rows[0]["fMEVKI"].ToString(); lblKatNoSozlesme0.Text = dt.Rows[0]["fMEVKI"].ToString();
                lblKonutBagimsizBolum.Text = dt.Rows[0]["fNO"].ToString(); lblKonutBagimsizBolum0.Text = dt.Rows[0]["fNO"].ToString();
                lblBagimsizBolumSozlesme.Text = dt.Rows[0]["fNO"].ToString(); lblBagimsizBolumSozlesme0.Text = dt.Rows[0]["fNO"].ToString();

                lblOdaSayısı0.Text = dt.Rows[0]["fDAIRE"].ToString();
                lblOdaSayısı.Text = dt.Rows[0]["fDAIRE"].ToString();

                lblKonutMetreKare0.Text = dt.Rows[0]["fBRUTALAN"].ToString() + " Gross";
                lblKonutMetreKare.Text = dt.Rows[0]["fBRUTALAN"].ToString() + " Brüt";
            }
           

        }
        if (Request.QueryString["sID"] != null)
        {
            TXTBOXENABLEFALSE();
            //BİLGİ AKTAR--> SÖZLEŞME BİLGİLERİ
            DataTable dt = DBIslem.DtGetir("SELECT * FROM View_Satis WHERE sID='" + Request.QueryString["sID"].ToString() + "'");
            txtDaire.Text = dt.Rows[0]["fTIP"].ToString();
            txtVerilenTeklif.Text = dt.Rows[0]["gTEKLIF_UCRET"].ToString();
            lblParaBirimi.Text = dt.Rows[0]["gTEKLIF_PARA_BIRIMI"].ToString(); lblParaBirimi2.Text = dt.Rows[0]["gTEKLIF_PARA_BIRIMI"].ToString();
            lblAdSoyad.Text = dt.Rows[0]["mAD"].ToString() + " " + dt.Rows[0]["mSOYAD"].ToString();
            //TARİH
            lblBlokNoSozlesme.Text = dt.Rows[0]["fBLOK"].ToString(); lblBlokNoSozlesme0.Text = dt.Rows[0]["fBLOK"].ToString();
            lblKatNoSozlesme.Text = dt.Rows[0]["fMEVKI"].ToString(); lblKatNoSozlesme0.Text = dt.Rows[0]["fMEVKI"].ToString();
            lblKonutBagimsizBolum.Text = dt.Rows[0]["fNO"].ToString(); lblKonutBagimsizBolum0.Text = dt.Rows[0]["fNO"].ToString();
            lblBagimsizBolumSozlesme.Text = dt.Rows[0]["fNO"].ToString(); lblBagimsizBolumSozlesme0.Text = dt.Rows[0]["fNO"].ToString();

            lblOdaSayısı0.Text = dt.Rows[0]["fDAIRE"].ToString();
            lblOdaSayısı.Text = dt.Rows[0]["fDAIRE"].ToString();

            lblKonutMetreKare0.Text = dt.Rows[0]["fBRUTALAN"].ToString() + " Gross";
            lblKonutMetreKare.Text = dt.Rows[0]["fBRUTALAN"].ToString() + " Brüt";
            //textler doldur
            txtGorusmeTarihi.Text = dt.Rows[0]["sSOZLESME_TARIH"].ToString();
            txtPesinat.Text = dt.Rows[0]["sSATIS_PESINAT"].ToString();
            //txtTaksitTarihi.Text = dt.Rows[0]["sTAKSIT_SAYISI"].ToString();
            txtKimlikNo.Text = dt.Rows[0]["sTC_NO"].ToString();
            txtVergiDairesi.Text = dt.Rows[0]["sVD"].ToString();
            txtAdres.Text = dt.Rows[0]["sADRES"].ToString();
            //grid doldur
            GridView1.DataSource = DBIslem.DtGetir("select NO AS SIRA,TARIH AS TARİH,TUTAR +' '+ TBL_GECICI.PARA_BIRIMI AS TAKSİT from TBL_GECICI where gID='" + dt.Rows[0]["gID"].ToString() + "' order by NO");
            GridView1.DataBind();
            //sözleşme metni doldur
            lblAdres.Text = dt.Rows[0]["sADRES"].ToString();

            string verilenteklif = txtVerilenTeklif.Text;
            string pesinat = txtPesinat.Text;
            int taksitsayisi = Convert.ToInt32(GridView1.Rows.Count);

            string sontoplam = Convert.ToString(Convert.ToDecimal(verilenteklif) - Convert.ToDecimal(pesinat));//"160.720";//
            taksit = Convert.ToString((Convert.ToDecimal(sontoplam)) / Convert.ToDecimal(taksitsayisi)).ToString();//"45.920";//
            lblToplamBedel.Text = string.Format("{0:0,0}", verilenteklif).Replace(",", ".") + " " + lblParaBirimi.Text; //"229.610" + " TL";//
            lblPesinat.Text = pesinat + " " + lblParaBirimi.Text; //"68.890" + " TL";// 
            lblIlkveSonTaksit.Text = GridView1.Rows[0].Cells[3].Text;

            //     lblTaksitTutari.Text = (Math.Round(Convert.ToDecimal(taksit), 2) + " " + lblParaBirimi.Text).ToString();
            //   lblTaksitTutari.Text = (Math.Round(Convert.ToDecimal(taksit), 2) + " " + lblParaBirimi.Text).ToString();
            //lblTaksitTutari.Text = taksit.Replace(",", "");
            //string gecici = lblTaksitTutari.Text.Substring(0, lblTaksitTutari.Text.Length - 2);
            //lblTaksitTutari.Text = gecici;
            //lblTaksitTutari.Text = String.Format("{0:c}", Convert.ToSingle(lblTaksitTutari.Text));
            //lblTaksitTutari.Text = lblTaksitTutari.Text.Substring(0, lblTaksitTutari.Text.Length - 2) + lblParaBirimi2.Text;

            //
            lblTaksitSayisi.Text = taksitsayisi.ToString();
            lblTaksitToplamBedel.Text = sontoplam.Replace(",",""); // virgülü atıldı.
            string degisken = lblTaksitToplamBedel.Text.Substring(0, lblTaksitToplamBedel.Text.Length - 2); // formata düzgün çevirmek için son iki sıfır silindi
            lblTaksitToplamBedel.Text = degisken; // degiskenimiz tekrar label e gönderildi.
            lblTaksitToplamBedel.Text = String.Format("{0:c}", Convert.ToInt32(lblTaksitToplamBedel.Text)); // formatlama işlemi yapıldı ve tekrar aynı label a atıldı.
            lblTaksitToplamBedel.Text = lblTaksitToplamBedel.Text.Substring(0, lblTaksitToplamBedel.Text.Length - 2) + lblParaBirimi2.Text;
            //lblTaksitToplamBedel.Text = sontoplam + " " + lblParaBirimi.Text;


            //

            if (lblParaBirimi.Text == "TL")
            {
                lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
                lblIBANBankaTR.Text = "TR79 0001 5001 5800 7307 0949 47";
                lblParaBirimiBankaTR.Text = "TL";
                lblSwiftBankaTR.Text = "TVBATR2A";
                //
                lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
                lblIBANBankaENG.Text = "TR79 0001 5001 5800 7307 0949 47";
                lblParaBirimiBankaENG.Text = "TL";
                lblSwiftBankaENG.Text = "TVBATR2A";
            }
            if (lblParaBirimi.Text == "USD")
            {
                lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
                lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
                lblParaBirimiBankaTR.Text = "USD";
                lblSwiftBankaTR.Text = "TVBATR2A";
                //
                lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
                lblIBANBankaENG.Text = "TR03 0001 5001 5804 8016 8731 52";
                lblParaBirimiBankaENG.Text = "USD";
                lblSwiftBankaENG.Text = "TVBATR2A";
            }
            if (lblParaBirimi.Text == "EURO")
            {
                lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
                lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
                lblParaBirimiBankaTR.Text = "EURO";
                lblSwiftBankaTR.Text = "TVBATR2A";
                //
                lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
                lblIBANBankaENG.Text = "TR03 0001 5001 5804 8016 8731 52";
                lblParaBirimiBankaENG.Text = "EURO";
                lblSwiftBankaENG.Text = "TVBATR2A";
            }

            //TC KIMLIK NO
            lblTcKimlikNo.Text = txtKimlikNo.Text;
            lblTcKimlikNo0.Text = txtKimlikNo.Text;

            //VD
            lblVergiDairesi.Text = txtVergiDairesi.Text;
            lblVergiDairesi0.Text = txtVergiDairesi.Text;

            //SÖZLEŞME TARİHİ
            string sozlesme_tarihi = Convert.ToDateTime(txtGorusmeTarihi.Text).ToString("dd/MM/yyyy");

            //SÖZLEŞME 
            lblAdresSozlesme.Text = txtAdres.Text; lblAdresSozlesme0.Text = txtAdres.Text;
            lblAdSoyadSozlesme.Text = lblAdSoyad.Text; lblAdSoyadSozlesme0.Text = lblAdSoyad.Text; lblAdSoyad19madde.Text = lblAdSoyad.Text;
            lblTarihSozlesme.Text = sozlesme_tarihi; lblTarihSozlesme0.Text = sozlesme_tarihi;//txtGorusmeTarihi.Text;

            //
            lblPesinSatisBedeliSozlesme.Text = lblToplamBedel.Text;
            lblPesinSatisBedeliSozlesme0.Text = lblToplamBedel.Text;

            lblVadeliSatisBedeliSozlesme.Text = lblToplamBedel.Text;
            lblVadeliSatisBedeliSozlesme0.Text = lblToplamBedel.Text;

            lblPesinatMiktariSozlesme.Text = lblPesinat.Text;
            lblPesinatMiktariSozlesme0.Text = lblPesinat.Text;

            lblVadeSuresiSozlesme.Text = lblTaksitSayisi.Text;
            lblVadeSuresiSozlesme0.Text = lblTaksitSayisi.Text;
            //
            lblAliciAdSoyadImzaYeri.Text = lblAdSoyadSozlesme.Text;
            lblAliciAdSoyadImzaYeri0.Text = lblAdSoyadSozlesme.Text;

            //Sayı yı yazıya çevir
            //SAYIDANYAZI();
            //SAYIDANYAZI2();

            //TÜM TAKSİTLERİ KAYDET
            //DBIslem.DtGetir("DELETE FROM TBL_GECICI");

            //for (int j = 0; j < balonodemesayisi; j++)
            //{
            //    DBIslem.DtGetir("UPDATE TBL_GECICI SET TUTAR='" + (taksit + Convert.ToDecimal(txtBalonOdemeTaksitTutari.Text)) + "'WHERE NO='" + balonodemebaslangic + "'");
            //    balonodemebaslangic = balonodemebaslangic + 12;
            //}

            //RPT_TAKSIT_LISTESI.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI");
            //RPT_TAKSIT_LISTESI.DataBind();


            //
            //RPT_SENET.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI where GID='" + dt.Rows[0]["gID"].ToString() + "' order by no");
            //RPT_SENET.DataBind();


                //for (int i = 0; i < taksitsayisi; i++)
                //{
                //    //DateTime tarihgecici = DateTime.Now.AddMonths(-2);
                //    DateTime vadetarih = Convert.ToDateTime(GridView1.Rows[i].Cells[1].Text);//tarihgecici.AddMonths(i + 1);//DateTime.Now.AddMonths(i + 1);
                //    DBIslem.DtGetir("INSERT INTO TBL_GECICI(NO,TARIH,TUTAR,PARA_BIRIMI,BUGUN,AD_SOYAD,TCNO,ADRES,TUTAR_YAZIYLA,GUN,AY,YIL,TOPLAM_TAKSIT,GID)VALUES('" + (i + 1) + "','" + vadetarih.ToShortDateString() + "','" + GridView1.Rows[i].Cells[2].Text + "','" + lblParaBirimi.Text + "','" + DateTime.Now.ToShortDateString() + "','" + lblAdSoyadSozlesme.Text + "','" + txtKimlikNo.Text + "','" + txtAdres.Text + "','" + yaziylatutar2 + "','" + vadetarih.ToString("dd") + "','" + vadetarih.ToString("MMMM") + "','" + vadetarih.ToString("yyyy") + "','" + taksitsayisi + "','" + Request.QueryString["gID"] + "')");

                //}

            RPT_SENET.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI where GID='" + dt.Rows[0]["gID"].ToString() + "' order by no");
            RPT_SENET.DataBind();
            //
            Button2.Enabled = false;
            btnArtimli.Enabled = false;
            //btnTemizle.Enabled = false;
            btnKaydet.Enabled = false;
            btnIptal.Enabled = false;
        }
        

    }
    private void TXTBOXENABLEFALSE()
    {
        txtGorusmeTarihi.Enabled = false;
        txtVerilenTeklif.Enabled = false;
        txtPesinat.Enabled = false;
        txtTaksitTarihi.Enabled = false;
        txtTaksitMeblag.Enabled = false;
        txtKimlikNo.Enabled = false;
        txtVergiDairesi.Enabled = false;
        txtAdres.Enabled = false;
    }
    protected void btnKaydet_Click(object sender, EventArgs e)
    {
       
        //Balon Ödeme
        //decimal balonodemetutari = Convert.ToDecimal(txtBalonOdemeSayisi.Text) * Convert.ToDecimal(txtBalonOdemeTaksitTutari.Text);
        //int balonodemesayisi = Convert.ToInt32(txtBalonOdemeSayisi.Text);
        //int balonodemebaslangic = Convert.ToInt32(txtBalonOdemeBaslangic.Text);
        //
        lblAdres.Text = txtAdres.Text;
        string verilenteklif = txtVerilenTeklif.Text; // teklif alındı
        string pesinat = txtPesinat.Text; // pesinat alındı
        int taksitsayisi = Convert.ToInt32(GridView1.Rows.Count);// taksit sayısı alındı

        string sontoplam = Convert.ToString(Convert.ToDecimal(verilenteklif) - Convert.ToDecimal(pesinat));//"160.720";// taksite bölünecek tutar hesaplandı
        taksit = Convert.ToString((Convert.ToDecimal(sontoplam)) / Convert.ToDecimal(taksitsayisi)).ToString();//"45.920";// 
        
        lblToplamBedel.Text = string.Format("{0:0,0}", verilenteklif).Replace(",", ".") + " " + lblParaBirimi.Text; //"229.610" + " TL";// 
        lblPesinat.Text = pesinat + " " + lblParaBirimi.Text; //"68.890" + " TL";// 
        lblIlkveSonTaksit.Text = GridView1.Rows[0].Cells[3].Text;
        // lblTaksitTutari.Text = (Math.Round(Convert.ToDecimal(taksit), 2) + " " + lblParaBirimi.Text).ToString();
        //lblTaksitTutari.Text = taksit.Replace(",", "");
        //string gecici = lblTaksitTutari.Text.Substring(0, lblTaksitTutari.Text.Length - 2);
        //lblTaksitTutari.Text = gecici;
        //lblTaksitTutari.Text = String.Format("{0:c}", Convert.ToSingle(lblTaksitTutari.Text));
        //lblTaksitTutari.Text = lblTaksitTutari.Text.Substring(0, lblTaksitTutari.Text.Length - 2) + lblParaBirimi2.Text;
        //
        //for (int i = 1; i < taksitsayisi; i++)
        //{
        //    string taksitdeger = GridView1.Rows[i][0].ToString();
        //}
        lblTaksitSayisi.Text = taksitsayisi.ToString();
        lblTaksitToplamBedel.Text = sontoplam; //+ " " + lblParaBirimi.Text;
        lblTaksitToplamBedel.Text = lblTaksitToplamBedel.Text.Replace(",", "");
        lblTaksitToplamBedel.Text = lblTaksitToplamBedel.Text.Substring(0, lblTaksitToplamBedel.Text.Length - 2);
        lblTaksitToplamBedel.Text = String.Format("{0:C2}", Convert.ToInt32(lblTaksitToplamBedel.Text));
        //lblTaksitToplamBedel.Text = lblTaksitTutari.Text.Substring(0, lblTaksitToplamBedel.Text.Length - 2) + lblParaBirimi2.Text;
        // lblTaksitToplamBedel.Text = lblTaksitToplamBedel.Text + " " + lblParaBirimi.Text;
        //
        //lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
        //lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
        //lblParaBirimiBankaTR.Text = "TL";
        //lblSwiftBankaTR.Text = "TVBATR2A";
        if (String.IsNullOrEmpty(txtAdres.Text))
        {
            lblHataliEkleme.Text = "Adres bilgilerini boş bırakamazsınız.";
            return;
        }
        if (lblParaBirimi.Text == "TL")
        {
            lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
            lblIBANBankaTR.Text = "TR79 0001 5001 5800 7307 0949 47";
            lblParaBirimiBankaTR.Text = "TL";
            lblSwiftBankaTR.Text = "TVBATR2A";
            //
            lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
            lblIBANBankaENG.Text = "TR79 0001 5001 5800 7307 0949 47";
            lblParaBirimiBankaENG.Text = "TL";
            lblSwiftBankaENG.Text = "TVBATR2A";
        }
        if (lblParaBirimi.Text == "USD")
        {
            lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
            lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
            lblParaBirimiBankaTR.Text = "USD";
            lblSwiftBankaTR.Text = "TVBATR2A";
            //
            lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
            lblIBANBankaENG.Text = "TR03 0001 5001 5804 8016 8731 52";
            lblParaBirimiBankaENG.Text = "USD";
            lblSwiftBankaENG.Text = "TVBATR2A";
        }
        if (lblParaBirimi.Text == "EURO")
        {
            lblBankaSubeTR.Text = "Vakıfbank Gaziosmanpaşa";
            lblIBANBankaTR.Text = "TR03 0001 5001 5804 8016 8731 52";
            lblParaBirimiBankaTR.Text = "EURO";
            lblSwiftBankaTR.Text = "TVBATR2A";
            //
            lblBankaSubeENG.Text = "Vakıfbank Gaziosmanpaşa";
            lblIBANBankaENG.Text = "TR03 0001 5001 5804 8016 8731 52";
            lblParaBirimiBankaENG.Text = "EURO";
            lblSwiftBankaENG.Text = "TVBATR2A";
        }



        //TC KIMLIK NO
        lblTcKimlikNo.Text = txtKimlikNo.Text;
        lblTcKimlikNo0.Text = txtKimlikNo.Text;

        //VD
        lblVergiDairesi.Text = txtVergiDairesi.Text;
        lblVergiDairesi0.Text = txtVergiDairesi.Text;

        //SÖZLEŞME TARİHİ
        string sozlesme_tarihi = Convert.ToDateTime(txtGorusmeTarihi.Text).ToString("dd/MM/yyyy");

        //SÖZLEŞME 
        lblAdresSozlesme.Text = txtAdres.Text; lblAdresSozlesme0.Text = txtAdres.Text;
        lblAdSoyadSozlesme.Text = lblAdSoyad.Text; lblAdSoyadSozlesme0.Text = lblAdSoyad.Text; lblAdSoyad19madde.Text = lblAdSoyad.Text;
        lblTarihSozlesme.Text = sozlesme_tarihi; lblTarihSozlesme0.Text = sozlesme_tarihi;//txtGorusmeTarihi.Text;

        //string i_trh = Convert.ToDateTime(txtGorusmeTarihi.Text).ToString("MM/dd/yyyy");

        //
        //
        lblPesinSatisBedeliSozlesme.Text = lblToplamBedel.Text;
        lblPesinSatisBedeliSozlesme0.Text = lblToplamBedel.Text;

        lblVadeliSatisBedeliSozlesme.Text = lblToplamBedel.Text;
        lblVadeliSatisBedeliSozlesme0.Text = lblToplamBedel.Text;

        lblPesinatMiktariSozlesme.Text = lblPesinat.Text;
        lblPesinatMiktariSozlesme0.Text = lblPesinat.Text;

        lblVadeSuresiSozlesme.Text = lblTaksitSayisi.Text;
        lblVadeSuresiSozlesme0.Text = lblTaksitSayisi.Text;
        //
        lblAliciAdSoyadImzaYeri.Text = lblAdSoyadSozlesme.Text;
        lblAliciAdSoyadImzaYeri0.Text = lblAdSoyadSozlesme.Text;

        //Sayı yı yazıya çevir
        //SAYIDANYAZI();
        //SAYIDANYAZI2();

        //TÜM TAKSİTLERİ KAYDET
        //DBIslem.DtGetir("DELETE FROM TBL_GECICI");
        
        //for (int j = 0; j < balonodemesayisi; j++)
        //{
        //    DBIslem.DtGetir("UPDATE TBL_GECICI SET TUTAR='" + (taksit + Convert.ToDecimal(txtBalonOdemeTaksitTutari.Text)) + "'WHERE NO='" + balonodemebaslangic + "'");
        //    balonodemebaslangic = balonodemebaslangic + 12;
        //}

        //RPT_TAKSIT_LISTESI.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI");
        //RPT_TAKSIT_LISTESI.DataBind();


        //
        //RPT_SENET.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI where GID='" + Request.QueryString["gID"] + "' order by no");
        //RPT_SENET.DataBind();

        if (txtGorusmeTarihi.Text == null || txtPesinat.Text == null || txtAdres.Text == null || txtKimlikNo.Text == null || txtVergiDairesi.Text == null)
        {
            //lblMesaj.Text = "Boş alan bırakmayınız";
        }
        else
        {
            for (int i = 0; i < taksitsayisi; i++)
            {
                //DateTime tarihgecici = DateTime.Now.AddMonths(-2);
                
                DateTime vadetarih = Convert.ToDateTime(GridView1.Rows[i].Cells[2].Text);//tarihgecici.AddMonths(i + 1);//DateTime.Now.AddMonths(i + 1);
                DBIslem.DtGetir("INSERT INTO TBL_GECICI(NO,TARIH,TUTAR,PARA_BIRIMI,BUGUN,AD_SOYAD,TCNO,ADRES,TUTAR_YAZIYLA,GUN,AY,YIL,TOPLAM_TAKSIT,GID,IsActive)VALUES('" + (i + 1) + "','" + vadetarih.ToShortDateString() + "','" + GridView1.Rows[i].Cells[3].Text + "','" + lblParaBirimi.Text + "','" + DateTime.Now.ToShortDateString() + "','" + lblAdSoyadSozlesme.Text + "','" + txtKimlikNo.Text + "','" + txtAdres.Text + "','" + DBIslem.yaziya(Convert.ToDecimal(GridView1.Rows[i].Cells[3].Text),lblParaBirimi2.Text) + "','" + vadetarih.ToString("dd") + "','" + vadetarih.ToString("MMMM") + "','" + vadetarih.ToString("yyyy") + "','" + taksitsayisi + "','" + Request.QueryString["gID"]+"'," + 0 + ")");
                DBIslem.yaziya(Convert.ToDecimal(GridView1.Rows[i].Cells[3].Text),lblParaBirimi2.Text);
            }
            //
            DBIslem.DtGetir("INSERT INTO TBL_SOZLESME(gID,sSOZLESME_TARIH,sSATIS_PESINAT,sTAKSIT_SAYISI,sTC_NO,sVNO,sVD,sADRES,sKULID)VALUES('" + Request.QueryString["gID"] + "','" + txtGorusmeTarihi.Text + "','" + txtPesinat.Text + "','" + GridView1.Rows.Count + "','" + txtKimlikNo.Text + "','" + txtKimlikNo.Text + "','" + txtVergiDairesi.Text + "','" + txtAdres.Text + "','" + Session["kulid"] + "')");
            //
            DBIslem.DtGetir("UPDATE TBL_FIYAT_LISTE SET fDURUM = '1' where fTIP = '" + txtDaire.Text + "'");
            //
            GridView1.Columns[0].Visible = false;
            RPT_SENET.DataSource = DBIslem.DtGetir("SELECT * FROM TBL_GECICI where GID='" + Request.QueryString["gID"] + "' order by no");
            RPT_SENET.DataBind();
            btnKaydet.Visible = false;
            btnIptal.Visible = false;
            lblHataliEkleme.Text = "Sözleşmeniz başarıyla oluşturulmuştur.";
        }
    }  
    private string yaziyaCevir(decimal tutar)
    {
        string sTutar = tutar.ToString("F2").Replace('.', ','); // Replace('.',',') ondalık ayracının . olma durumu için            
        string lira = sTutar.Substring(0, sTutar.IndexOf(',')); //tutarın tam kısmı
        string kurus = sTutar.Substring(sTutar.IndexOf(',') + 1, 2);
        string yazi = "";

        string[] birler = { "", "BİR", "İKİ", "Üç", "DÖRT", "BEŞ", "ALTI", "YEDİ", "SEKİZ", "DOKUZ" };
        string[] onlar = { "", "ON", "YİRMİ", "OTUZ", "KIRK", "ELLİ", "ALTMIŞ", "YETMİŞ", "SEKSEN", "DOKSAN" };
        string[] binler = { "KATRİLYON", "TRİLYON", "MİLYAR", "MİLYON", "BİN", "" }; //KATRİLYON'un önüne ekleme yapılarak artırabilir.

        int grupSayisi = 6; //sayıdaki 3'lü grup sayısı. katrilyon içi 6. (1.234,00 daki grup sayısı 2'dir.)
                            //KATRİLYON'un başına ekleyeceğiniz her değer için grup sayısını artırınız.

        lira = lira.PadLeft(grupSayisi * 3, '0'); //sayının soluna '0' eklenerek sayı 'grup sayısı x 3' basakmaklı yapılıyor.            

        string grupDegeri;

        for (int i = 0; i < grupSayisi * 3; i += 3) //sayı 3'erli gruplar halinde ele alınıyor.
        {
            grupDegeri = "";

            if (lira.Substring(i, 1) != "0")
                grupDegeri += birler[Convert.ToInt32(lira.Substring(i, 1))] + "YÜZ"; //yüzler                

            if (grupDegeri == "BİRYÜZ") //biryüz düzeltiliyor.
                grupDegeri = "YÜZ";

            grupDegeri += onlar[Convert.ToInt32(lira.Substring(i + 1, 1))]; //onlar

            grupDegeri += birler[Convert.ToInt32(lira.Substring(i + 2, 1))]; //birler                

            if (grupDegeri != "") //binler
                grupDegeri += binler[i / 3];

            if (grupDegeri == "BİRBİN") //birbin düzeltiliyor.
                grupDegeri = "BİN";

            yazi += grupDegeri;
        }

        if (yazi != "")
            yazi += " TL ";

        int yaziUzunlugu = yazi.Length;

        if (kurus.Substring(0, 1) != "0") //kuruş onlar
            yazi += onlar[Convert.ToInt32(kurus.Substring(0, 1))];

        if (kurus.Substring(1, 1) != "0") //kuruş birler
            yazi += birler[Convert.ToInt32(kurus.Substring(1, 1))];

        if (yazi.Length > yaziUzunlugu)
            yazi += " Kr.";
        else
            yazi += "SIFIR Kr.";

        return yazi;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        decimal teklif = Convert.ToDecimal(txtVerilenTeklif.Text);
        decimal pesinat = Convert.ToDecimal(txtPesinat.Text);
        decimal kalanodeme = teklif - pesinat;
        decimal taksitHarf = Convert.ToDecimal(txtTaksitMeblag.Text); 
        decimal kalanmeblag = Convert.ToDecimal(txtKalanMeblag.Text);
        decimal taksit = Convert.ToDecimal(txtTaksitMeblag.Text);
        sira = Convert.ToInt32(GridView1.Rows.Count.ToString());
        int kontrol = 0;
        //Kalan meblağ sıfır olunca eklemeyi sonlandır.
        //decimal meblag = Convert.ToDecimal(txtKalanMeblag.Text);
        //if (meblag == 0)
        //{
        //    Button2.Enabled = false;
        //}
        // ======== HATA LİSTEM ============= //
        if (String.IsNullOrEmpty(txtGorusmeTarihi.Text) == true ||String.IsNullOrEmpty(txtTaksitTarihi.Text) == true)
        {
            lblHataliEkleme.Text = "Tarih alanları boş geçilemez.";
            return;
        }
        if (Convert.ToDecimal(txtTaksitMeblag.Text) == 0)
        {
            lblHataliEkleme.Text = "Girilen tutar sıfır olamaz.";
            return;
        }
        if (Convert.ToDateTime(txtGorusmeTarihi.Text) > Convert.ToDateTime(txtTaksitTarihi.Text))
        {
            lblHataliEkleme.Text = "Taksit Tarihi Sözleşme Tarihinden eski olamaz.";
            //ViewState["bilgiler"] = dt1;
            //GridView1.DataSource = dt1;
            //GridView1.DataBind();
            txtGorusmeTarihi.Style.Add("border-color", "rgb(247, 51, 51)");
            txtTaksitTarihi.Style.Add("border-color", "rgb(247, 51, 51)");
            return;
        }
        else
        {
            txtGorusmeTarihi.Style.Add("border-color", "rgb(32, 191, 44)");
            txtTaksitTarihi.Style.Add("border-color", "rgb(32, 191, 44)");
        }
        if (sira != 0)
        {
            
        for (int i = 0; i < dt1.Rows.Count; i++)
         {
            if (txtTaksitTarihi.Text == dt1.Rows[i][1].ToString())
            {
                kontrol++;
                lblHataliEkleme.Text = "Aynı güne taksit tutarı girilemez.";
                //ViewState["bilgiler"] = dt1;
                //GridView1.DataSource = dt1;
                //GridView1.DataBind();
                    return;
                
            }

         }
        } // Taksit tutarı kontrol
        if (Convert.ToDecimal(txtVerilenTeklif.Text) < Convert.ToDecimal(txtTaksitMeblag.Text) || pesinat > (Convert.ToDecimal(txtVerilenTeklif.Text)))
        {
            lblHataliEkleme.Text = "Verilen teklif tutarı aşılmış yada peşinat tekliften yüksek.";
            //ViewState["bilgiler"] = dt1;
            //GridView1.DataSource = dt1;

            //GridView1.DataBind();
            return;

        }
        if (sira != 0 && Convert.ToDecimal(txtTaksitMeblag.Text) > Convert.ToDecimal(txtKalanMeblag.Text))
        {
           
            lblHataliEkleme.Text = "Taksit tutarı kalan tutardan fazla.";
            //ViewState["bilgiler"] = dt1;
            //GridView1.DataSource = dt1;
            //GridView1.DataBind();
            return;
        }

        else
        {
            
            sira = Convert.ToInt32(GridView1.Rows.Count.ToString());
            //dt1.Rows.Add(sira + 1,Convert.ToDateTime(TextBox1.Text).AddMonths(1).ToShortDateString(), TextBox2.Text);
            if (sira >= 1)
        {
            txtKalanMeblag.Text = (Convert.ToDecimal(txtKalanMeblag.Text) - taksit).ToString();
            //
            if (kalanmeblag < taksit)
            {
                txtTaksitMeblag.Text = txtKalanMeblag.Text;
            }
        }
            if (sira == 0)
            {
        dt1.Rows.Add(sira+1, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
        lblHataliEkleme.Text = " ";
        ViewState["bilgiler"] = dt1;
        GridView1.DataSource = dt1;
        GridView1.DataBind();
            }
            if (sira == 0)
        {
            txtKalanMeblag.Text = (kalanodeme - taksit).ToString();    
        }
            if (Convert.ToDecimal(txtKalanMeblag.Text) == 0)
        {
            btnArtimli.Enabled = false;
            Button2.Enabled = false;
        }
            yaziylatutar = yaziyaCevir(taksit);
            if (sira != 0 && kontrol == 0)
        {
            
            for (int i = 0; i < dt1.Rows.Count; i++)
        {
                    
            if (Convert.ToDateTime(txtTaksitTarihi.Text) < Convert.ToDateTime(dt1.Rows[i][1]))
            {
                        dt1.Rows.Add(0, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
                        //dt1.DefaultView.Sort = "Tarih asc";
                        Dictionary<DateTime , string> tarih = new Dictionary<DateTime,string>();
                        for (int j = 0; j < dt1.Rows.Count; j++)
                        {
                            tarih.Add(Convert.ToDateTime(dt1.Rows[j][1]), dt1.Rows[j][2].ToString());
                        }
                        var list = tarih.Keys.ToList();
                        list.Sort();
                        int sayac = 0;
                        foreach (var item in list)
                        {
                            dt1.Rows[sayac][1] = Convert.ToDateTime(item).ToShortDateString();
                            dt1.Rows[sayac][2] = tarih[item];
                            sayac++;
                        }



                        for (int j = 0; j < dt1.Rows.Count; j++)
                {
                    object a = dt1.Rows[j][0];
                    dt1.Rows[j][0] = 0;
                    dt1.Rows[j].AcceptChanges();
                }
                        for (int j = 0; j < dt1.Rows.Count ; j++)
                {
                    object satir = dt1.Rows[j][0];
                    dt1.Rows[j][0] = j+1;
                    dt1.Rows[j].AcceptChanges();
                }
                        //DataView viewFI = new DataView(dt1);
                        //viewFI.Sort = "Sıra";
                        //dt1 = viewFI.ToTable();
                        ViewState["bilgiler"] = dt1;
                        GridView1.DataSource = dt1;
                        GridView1.DataBind();

                        return;
            }
           else if (i == dt1.Rows.Count-1 && ( Convert.ToDateTime(txtTaksitTarihi.Text) != Convert.ToDateTime(dt1.Rows[i][1])  )   || (Convert.ToDateTime(txtTaksitTarihi.Text) == Convert.ToDateTime(dt1.Rows[i][1])))
            {
                dt1.Rows.Add(sira + 1, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
                        ViewState["bilgiler"] = dt1;
                        GridView1.DataSource = dt1;
                        GridView1.DataBind();
                        break;
            }
        }
        }
            lblHataliEkleme.Text = " ";
        }   
          
        
            



        /*TextBox1.Text = DateTime.Now.AddMonths(1).ToShortDateString();*/ //Convert.ToDateTime(TextBox1.Text).AddMonths(1).ToShortDateString();

    



            //
            //dt1.Rows.Add(sira + 1, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
            //string yenimeblag = txtTaksitMeblag.Text.Substring(0, txtTaksitMeblag.Text.Length - 3);
            
        
    
        // Hatalar yoksa ekleme işlemi başlatılır.
        
        
        
        
            
        

    }
    protected void btnArtimli_Click(object sender, EventArgs e)
    {
        decimal teklif = Convert.ToDecimal(txtVerilenTeklif.Text);
        decimal pesinat = Convert.ToDecimal(txtPesinat.Text);
        decimal kalanodeme = teklif - pesinat;
        decimal taksit = Convert.ToDecimal(txtTaksitMeblag.Text);
        decimal kalanmeblag = Convert.ToDecimal(txtKalanMeblag.Text);
        txtTaksitTarihi.Text = (Convert.ToDateTime(txtTaksitTarihi.Text).AddMonths(1)).ToShortDateString(); // Taksit tarihine bir ay eklenir.
        sira = Convert.ToInt32(GridView1.Rows.Count.ToString());
        if (String.IsNullOrEmpty(txtGorusmeTarihi.Text) == true || String.IsNullOrEmpty(txtTaksitTarihi.Text) == true)
        {
            lblHataliEkleme.Text = "Tarih alanları boş geçilemez.";
            return;
        }
        if (Convert.ToDecimal(txtTaksitMeblag.Text) == 0)
        {
            lblHataliEkleme.Text = "Girilen tutar sıfır olamaz.";
            return;
        }
        if (Convert.ToDateTime(txtGorusmeTarihi.Text) > Convert.ToDateTime(txtTaksitTarihi.Text))
        {
            lblHataliEkleme.Text = "Taksit Tarihi Sözleşme Tarihinden eski olamaz.";
            //ViewState["bilgiler"] = dt1;
            //GridView1.DataSource = dt1;
            //GridView1.DataBind();
            
            return;
        }
        if (sira != 0)
        {

            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                if (txtTaksitTarihi.Text == dt1.Rows[i][1].ToString())
                {
                    lblHataliEkleme.Text = "Aynı güne taksit tutarı girilemez.";
                    //ViewState["bilgiler"] = dt1;
                    //GridView1.DataSource = dt1;
                    //GridView1.DataBind();
                    return;

                }

            }
        } // Taksit tutarı kontrol
        if (Convert.ToDecimal(txtVerilenTeklif.Text) < Convert.ToDecimal(txtTaksitMeblag.Text) || pesinat > (Convert.ToDecimal(txtVerilenTeklif.Text)))
        {
            lblHataliEkleme.Text = "Verilen teklif tutarı aşılmış yada peşinat tekliften yüksek.";
            //ViewState["bilgiler"] = dt1;
            //GridView1.DataSource = dt1;

            GridView1.DataBind();
            return;

        }
        if (sira != 0 && Convert.ToDecimal(txtTaksitMeblag.Text) > Convert.ToDecimal(txtKalanMeblag.Text))
        {

            lblHataliEkleme.Text = "Taksit tutarı kalan tutardan fazla.";
            //ViewState["bilgiler"] = dt1;
            //GridView1.DataSource = dt1;
            //GridView1.DataBind();
            return;
        }
        
            sira = Convert.ToInt32(GridView1.Rows.Count.ToString());
        //dt1.Rows.Add(sira + 1,Convert.ToDateTime(TextBox1.Text).AddMonths(1).ToShortDateString(), TextBox2.Text);



        if (sira != 0)
        {
            dt1.Rows.Add(sira + 1, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
        for (int i = 0; i < dt1.Rows.Count; i++)
        { 
            if (Convert.ToDateTime(txtTaksitTarihi.Text) < Convert.ToDateTime(dt1.Rows[i][1]))
                {

                    Dictionary<DateTime, string> tarih = new Dictionary<DateTime, string>();
                    for (int j = 0; j < dt1.Rows.Count; j++)
                    {
                        tarih.Add(Convert.ToDateTime(dt1.Rows[j][1]), dt1.Rows[j][2].ToString());
                    }
                    var list = tarih.Keys.ToList();
                    list.Sort();
                    int sayac = 0;
                    foreach (var item in list)
                    {
                        dt1.Rows[sayac][1] = Convert.ToDateTime(item).ToShortDateString();
                        dt1.Rows[sayac][2] = tarih[item];
                        sayac++;
                    }

                    for (int j = 0; j < dt1.Rows.Count; j++)
                {
                    object a = dt1.Rows[j][0];
                    dt1.Rows[j][0] = 0;
                    dt1.Rows[j].AcceptChanges();
                }
                    

                    for (int j = 0; j < dt1.Rows.Count ; j++)
                {
                    object satir = dt1.Rows[j][0];
                    dt1.Rows[j][0] = j+1;
                    dt1.Rows[j].AcceptChanges();
                }
                    
                    //dt1.DefaultView.Sort = "Tarih asc";
                    break;
            }
           else if (i == dt1.Rows.Count-1 && ( Convert.ToDateTime(txtTaksitTarihi.Text) != Convert.ToDateTime(dt1.Rows[i][1])  )   || (Convert.ToDateTime(txtTaksitTarihi.Text) == Convert.ToDateTime(dt1.Rows[i][1])))
            {
                //dt1.Rows.Add(sira + 1, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
                break;
            }
        
        }
            lblHataliEkleme.Text = " ";
            ViewState["bilgiler"] = dt1;
            GridView1.DataSource = dt1;
            GridView1.DataBind();
        }
       
  
            
        if (sira == 0)
        {
        dt1.Rows.Add(sira + 1, Convert.ToDateTime(txtTaksitTarihi.Text).ToShortDateString(), txtTaksitMeblag.Text);
            lblHataliEkleme.Text = " ";
            ViewState["bilgiler"] = dt1;
        GridView1.DataSource = dt1;
        GridView1.DataBind();
        }
        

        //
       

        if (sira == 0)
        {
            txtKalanMeblag.Text = (kalanodeme - taksit).ToString();
        }
        if (sira >= 1)
        {
            txtKalanMeblag.Text = (Convert.ToDecimal(txtKalanMeblag.Text) - taksit).ToString();
            //
            if (kalanmeblag < taksit)
            {
                txtTaksitMeblag.Text = txtKalanMeblag.Text;
            }
        }
        //if (Convert.ToDecimal(txtKalanMeblag.Text) != 0 && GridView1.Rows.Count != 0)
        //{
        //    Button2.Enabled = true;
        //    btnArtimli.Enabled = true;
        //}
        if (Convert.ToDecimal(txtKalanMeblag.Text) == 0 && GridView1.Rows.Count != 0)
        {
            Button2.Enabled = false;
            btnArtimli.Enabled = false;
        }
        lblHataliEkleme.Text = " ";
    }
    protected void btnTemizle_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = dt2;
        GridView1.DataBind();
        dt2.Clear();
        //
        txtTaksitMeblag.Text = "0";
        txtKalanMeblag.Text = "0";
        txtTaksitTarihi.Text = DateTime.Now.ToShortDateString();
    }
    private void SAYIDANYAZI2()
    {
        sayı = int.Parse(taksit);
        //taksitint sayi;
        sayı = Convert.ToInt32(taksit);
        basamak5 = sayı / 10000;
        sayı = sayı % 10000;
        switch (basamak5)
        {
            case 1: onbinler = "on"; break;
            case 2: onbinler = "yirmi"; break;
            case 3: onbinler = "otuz"; break;
            case 4: onbinler = "kırk"; break;
            case 5: onbinler = "elli"; break;
            case 6: onbinler = "atmış"; break;
            case 7: onbinler = "yetmiş"; break;
            case 8: onbinler = "seksen"; break;
            case 9: onbinler = "doksan"; break;
        }

        basamak4 = sayı / 1000;
        sayı = sayı % 1000;
        switch (basamak4)
        {
            case 1: binler = "bin"; break;
            case 2: binler = "ikibin"; break;
            case 3: binler = "üçbin"; break;
            case 4: binler = "dörtbin"; break;
            case 5: binler = "beşbin"; break;
            case 6: binler = "altıbin"; break;
            case 7: binler = "yedibin"; break;
            case 8: binler = "sekizbin"; break;
            case 9: binler = "dokuzbin"; break;
        }
        basamak3 = sayı / 100;
        sayı = sayı % 100;
        switch (basamak3)
        {
            case 1: yuzler = "yüz"; break;
            case 2: yuzler = "ikiyüz"; break;
            case 3: yuzler = "üçyüz"; break;
            case 4: yuzler = "dörtyüz"; break;
            case 5: yuzler = "beşyüz"; break;
            case 6: yuzler = "altıyüz"; break;
            case 7: yuzler = "yediyüz"; break;
            case 8: yuzler = "sekizyüz"; break;
            case 9: yuzler = "dokuzyüz"; break;
        }
        basamak2 = sayı / 10;
        sayı = sayı % 10;
        switch (basamak2)
        {
            case 1: onlar = "on"; break;
            case 2: onlar = "yirmi"; break;
            case 3: onlar = "otuz"; break;
            case 4: onlar = "kırk"; break;
            case 5: onlar = "elli"; break;
            case 6: onlar = "atmış"; break;
            case 7: onlar = "yetmiş"; break;
            case 8: onlar = "seksen"; break;
            case 9: onlar = "doksan"; break;
        }
        basamak1 = sayı / 1;
        sayı = sayı % 1;
        switch (basamak1)
        {
            case 1: birler = "bir"; break;
            case 2: birler = "iki"; break;
            case 3: birler = "üç"; break;
            case 4: birler = "dört"; break;
            case 5: birler = "beş"; break;
            case 6: birler = "altı"; break;
            case 7: birler = "yedi"; break;
            case 8: birler = "sekiz"; break;
            case 9: birler = "dokuz"; break;
        }

        yaziylatutar2 = onbinler + binler + yuzler + onlar + birler;
    }
    private void SAYIDANYAZI()
    {
        int sayi;
        sayi = Convert.ToInt32(taksit);
        switch (sayi / 10000)
        {
            case 9: yaziylatutar = yaziylatutar + "Doksanbin"; break;
            case 8: yaziylatutar = yaziylatutar + "Seksenbin "; break;
            case 7: yaziylatutar = yaziylatutar + "Yetmişbin "; break;
            case 6: yaziylatutar = yaziylatutar + "Altmışbin "; break;
            case 5: yaziylatutar = yaziylatutar + "Ellibin"; break;
            case 4: yaziylatutar = yaziylatutar + "Kırkbin "; break;
            case 3: yaziylatutar = yaziylatutar + "Otuzbin "; break;
            case 2: yaziylatutar = yaziylatutar + "Yirmibin "; break;
            case 1: yaziylatutar = yaziylatutar + "Onbin "; break;
        }
        switch (sayi / 1000)
        {
            case 9: yaziylatutar = yaziylatutar + "Dokuzbin"; break;
            case 8: yaziylatutar = yaziylatutar + "Sekizbin "; break;
            case 7: yaziylatutar = yaziylatutar + "Yedibin "; break;
            case 6: yaziylatutar = yaziylatutar + "Altıbin "; break;
            case 5: yaziylatutar = yaziylatutar + "Beşbin"; break;
            case 4: yaziylatutar = yaziylatutar + "Dörtbin "; break;
            case 3: yaziylatutar = yaziylatutar + "Üçbin "; break;
            case 2: yaziylatutar = yaziylatutar + "İkibin "; break;
            case 1: yaziylatutar = yaziylatutar + "Bin "; break;
        }
        switch (sayi % 1000 / 100)
        {
            case 9: yaziylatutar = yaziylatutar + "Dokuzyüz "; break;
            case 8: yaziylatutar = yaziylatutar + "Sekizyüz "; break;
            case 7: yaziylatutar = yaziylatutar + "Yediyüz "; break;
            case 6: yaziylatutar = yaziylatutar + "Altıyüz "; break;
            case 5: yaziylatutar = yaziylatutar + "Beşyüz "; break;
            case 4: yaziylatutar = yaziylatutar + "Dörtyüz "; break;
            case 3: yaziylatutar = yaziylatutar + "Üçyüz "; break;
            case 2: yaziylatutar = yaziylatutar + "İkiyüz "; break;
            case 1: yaziylatutar = yaziylatutar + "Yüz "; break;
        }
        switch ((sayi % 100) / 10)
        {
            case 9: yaziylatutar = yaziylatutar + "Doksan "; break;
            case 8: yaziylatutar = yaziylatutar + "Seksen "; break;
            case 7: yaziylatutar = yaziylatutar + "Yetmiş "; break;
            case 6: yaziylatutar = yaziylatutar + "Altmış "; break;
            case 5: yaziylatutar = yaziylatutar + "Elli "; break;
            case 4: yaziylatutar = yaziylatutar + "Kırk "; break;
            case 3: yaziylatutar = yaziylatutar + "Otuz "; break;
            case 2: yaziylatutar = yaziylatutar + "Yirmi "; break;
            case 1: yaziylatutar = yaziylatutar + "On "; break;
        }
        switch ((sayi % 10))
        {
            case 9: yaziylatutar = yaziylatutar + "Dokuz "; break;
            case 8: yaziylatutar = yaziylatutar + "Sekiz "; break;
            case 7: yaziylatutar = yaziylatutar + "Yedi "; break;
            case 6: yaziylatutar = yaziylatutar + "Altı "; break;
            case 5: yaziylatutar = yaziylatutar + "Beş "; break;
            case 4: yaziylatutar = yaziylatutar + "Dört "; break;
            case 3: yaziylatutar = yaziylatutar + "Üç "; break;
            case 2: yaziylatutar = yaziylatutar + "İki "; break;
            case 1: yaziylatutar = yaziylatutar + "Bir "; break;
        }
        if (sayi == 0)
            yaziylatutar = "Sıfır";
    }
    protected void GridView1_RowCommand(object sender , GridViewDeleteEventArgs e)
    {
        // SİLİNEN GRİDVİEWDA SIRA KOLONUNU SIRALAMA //
        DataTable silinecek = (DataTable)GridView1.DataSource;
        decimal tablodakitaksit = Convert.ToDecimal(silinecek.Rows[e.RowIndex][2]);
        txtKalanMeblag.Text = (Convert.ToDecimal(txtKalanMeblag.Text) + tablodakitaksit).ToString();
        silinecek.Rows.RemoveAt(e.RowIndex);

        ArrayList siralama = new ArrayList();
    
        for (int i = e.RowIndex; i < silinecek.Rows.Count; i++)
        {
            if (i != 0)
            {
                for (int g = 0; g < e.RowIndex; g++)
                {
                     siralama.Insert(0, g);
                }
                
            }
            object a = silinecek.Rows[i][0];
            siralama.Insert(i,Convert.ToInt32(silinecek.Rows[i][0]) - 1);
            silinecek.Rows[i][0] = siralama[i];
        }
        
        
        GridView1.DataSource = silinecek;
        GridView1.DataBind();
        lblHataliEkleme.Text = "";
        Button2.Enabled = true;
        btnArtimli.Enabled = true;

           
        
    }

    
    protected void GridView1_RowDataBound(object sender , GridViewRowEventArgs e)
    {
            DataTable dtsozlesmevarmi = DBIslem.DtGetir("SELECT * FROM View_Satis WHERE gID='" + Request.QueryString["gID"] + "'");
            int sozlesmesayi = dtsozlesmevarmi.Rows.Count;
            
       
        if (Request.QueryString["gID"] != null)
        {
            if (sozlesmesayi == 1)
            {
                GridView1.Columns[0].Visible = false;
                
            }
        }
        if (Request.QueryString["sID"] != null)
        {
            GridView1.Columns[0].Visible = false;
        }
    }
    public void BubbleSort(int[] dizi)
    {
        int gecici;

        for (int i = 0; i <= dizi.Length - 1; i++)
        {
            for (int j = 1; j <= dizi.Length - 1; j++)
            {
                if (dizi[j - 1] > dizi[j])
                {
                    gecici = dizi[j - 1];
                    dizi[j - 1] = dizi[j];
                    dizi[j] = gecici;
                }
            }
        }
    }
    public bool kayitTarihVarMi()
    {
        for (int i = 0; i < dt1.Rows.Count; i++)
        {
            if (txtTaksitTarihi.Text == dt1.Rows[i][1].ToString())
            {
                lblHataliEkleme.Text = "Aynı güne taksit tutarı girilemez.";
                ViewState["bilgiler"] = dt1;
                GridView1.DataSource = dt1;
                GridView1.DataBind();
                return true;

            }
        }
        return false;
        
    }

}