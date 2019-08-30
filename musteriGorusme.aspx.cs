using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class musteriGorusme : System.Web.UI.Page
{
    int flisteDurum = 0;
    //int durum = 0;
    //string butonad;
    string kullaniciadi;

    [WebMethod]
    public static string ButonDurumGuncelle(string bID)
    {

        string result;
        DataTable dt = DBIslem.DtGetir("select * from TBL_FIYAT_LISTE where fKOD <> '' and fDurum=1 order by fNO");
        int kaysay = Convert.ToInt32(dt.Rows[0]["ID"].ToString());
        for (int i = 0; i < kaysay; i++)
        {
            ////DataTable dtyenitraj = DBIslem.DtGetir("SELECT * FROM TBL_NUMARATOR_FIYAT ORDER BY ID ASC");
            ////decimal traj_fiyat = Convert.ToDecimal(dtyenitraj.Rows[i]["NUM_FIYAT"].ToString());
            ////result = (Convert.ToDecimal(result) + (traj_fiyat)).ToString();
            //result2 = traj_fiyat.ToString();
            //lblNumarator.Text = sonuc3.ToString("N");
            //if (ddNumarator.SelectedValue == "Yok")
            //{
            //    lblNumarator.Text = "0";
            //}
            int durum = Convert.ToInt32(dt.Rows[i]["fDURUM"].ToString());
            string butonad = dt.Rows[i]["fKOD"].ToString();
            if (durum == 1)
            {
                result = butonad; 
            }
        }
        //result2 = dttraj.Rows[0]["KALIP_FIYATI"].ToString();
        return "";
        //return "";     
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        //Bring Date
        txtGorusmeTarihi1.Text = DateTime.Now.ToShortDateString();
        txtGorusmeTarihi2.Text = DateTime.Now.AddDays(7).ToShortDateString();

        if (Session["kullanici"] != null)
        {
            kullaniciadi = Session["kullanici"].ToString();
            //
            DataTable dtDurum1 = DBIslem.DtGetir("select * from TBL_FIYAT_LISTE where fKOD <> '' and fDurum=1 or fDurum=2 order by fNO");
            int kaysay1 = dtDurum1.Rows.Count;

            for (int i = 0; i < kaysay1; i++)
            {
                int durum = Convert.ToInt32(dtDurum1.Rows[i]["fDURUM"].ToString());
                string butonad = dtDurum1.Rows[i]["fKOD"].ToString();
                //string butonAd = dtDurum.Rows[0]["fKOD"].ToString();
                if (durum == 1)
                {

                    //if (butonad == "B1b1_1"){b1b1_1.Style.Add("background-color", "blue");}

                    if (butonad == "A1a1L_1") { a1a1L_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_1") { c0b1L_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_1") { b1b1_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_1") { c0a1L_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_1") { a2a1_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_1") { b2a1_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_1") { b2a_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_1") { a2a_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_1") { c1a_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_1") { c1b_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_1") { a1a_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_1") { b1aL_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_1") { b1aR_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_1") { a1bbL_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_1") { c1c_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_1") { c0a1R_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_1") { a1bbR_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_1") { b2b_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_1") { b2b1_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_1") { a2c_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_1") { c0b1R_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_2") { c0b1L_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_1") { a2b1_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_2") { b1b1_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_2") { b2a1_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_1") { a1a1R_1.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_2") { c0a1L_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_2") { c1a_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_2") { a1a1L_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_2") { b2a_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_2") { b1aL_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_2") { a2a1_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_2") { c1b_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_2") { c1c_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_2") { a2a_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_2") { b1aR_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_2") { b2b_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_2") { a1a_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_2") { c0a1R_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_2") { c0b1R_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_2") { a1bbL_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_2") { b2b1_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_3") { b1b1_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_2") { a1bbR_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_3") { c0b1L_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_3") { c0a1L_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_2") { a2c_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_3") { b2a1_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_3") { b2a_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_2") { a2b1_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_3") { c1a_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_3") { c1b_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_2") { a1a1R_2.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_3") { b1aL_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_3") { b1aR_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_3") { a1a1L_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_3") { c1c_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_3") { c0a1R_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_3") { a2a1_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_3") { b2b_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_3") { b2b1_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_3") { a2a_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_3") { c0b1R_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_4") { c0b1L_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_3") { a1a_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_4") { b1b1_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_4") { b2a1_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_3") { a1bbL_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_4") { c0a1L_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_4") { c1a_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_3") { a1bbR_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_4") { b2a_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_4") { b1aL_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_3") { a2c_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_4") { c1b_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_4") { c1c_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_3") { a2b1_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_4") { b1aR_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_4") { b2b_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_3") { a1a1R_3.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_4") { c0a1R_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_4") { c0b1R_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_4") { a1a1L_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_4") { b2b1_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_5") { b1b1_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_4") { a2a1_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_5") { c0b1L_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_5") { c0a1L_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_4") { a2a_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_5") { b2a1_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_5") { b2a_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_4") { a1a_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_5") { c1a_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_5") { c1b_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_4") { a1bbL_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_5") { b1aL_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_5") { b1aR_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_4") { a1bbR_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_5") { c1c_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_5") { c0a1R_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_4") { a2c_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_5") { b2b_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_5") { b2b1_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_4") { a2b1_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_5") { c0b1R_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_6") { c0b1L_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_4") { a1a1R_4.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_6") { b1b1_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_6") { b2a1_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_5") { a1a1L_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_6") { c0a1L_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_6") { c1a_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_5") { a2a1_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_6") { b2a_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_6") { b1aL_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_5") { a2a_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_6") { c1b_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_6") { c1c_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_5") { a1a_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_6") { b1aR_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_6") { b2b_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_5") { a1bbL_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_6") { c0a1R_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_6") { c0b1R_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_5") { a1bbR_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_6") { b2b1_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_7") { b1b1_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_5") { a2c_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_7") { c0b1L_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_7") { c0a1L_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_5") { a2b1_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_7") { b2a1_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_7") { b2a_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_5") { a1a1R_5.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_7") { c1a_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_7") { c1b_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_6") { a1a1L_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_7") { b1aL_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_7") { b1aR_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_6") { a2a1_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_7") { c1c_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_7") { c0a1R_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_6") { a2a_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_7") { b2b_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_7") { b2b1_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_6") { a1a_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_7") { c0b1R_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_6") { a1bbL_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_8") { b1b1_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_8") { c0b1L_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_6") { a1bbR_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_8") { b2a1_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_8") { c0a1L_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_8") { c1a_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_8") { b2a_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_6") { a2c_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_8") { b1aL_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_6") { a2b1_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_8") { c1b_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_8") { c1c_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_6") { a1a1R_6.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_8") { b1aR_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_8") { b2b_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_7") { a1a1L_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_8") { c0a1R_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_8") { c0b1R_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_7") { a2a1_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_8") { b2b1_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_9") { b1b1_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_7") { a2a_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_9") { c0b1L_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_9") { c0a1L_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_7") { a1a_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_9") { b2a1_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_9") { b2a_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_7") { a1bbL_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_9") { c1a_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_9") { c1b_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_7") { a1bbR_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_9") { b1aL_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_9") { b1aR_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_7") { a2c_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_9") { c1c_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_9") { c0a1R_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_7") { a2b1_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_9") { b2b_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_9") { b2b1_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_7") { a1a1R_7.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_9") { c0b1R_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_10") { c0b1L_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_8") { a1a1L_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_10") { b1b1_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_10") { b2a1_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_8") { a2a1_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_10") { c0a1L_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_10") { c1a_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_10") { b2a_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_8") { a2a_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_10") { b1aL_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_8") { a1a_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_10") { c1b_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_10") { c1c_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_8") { a1bbL_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_10") { b1aR_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_10") { b2b_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_8") { a1bbR_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_10") { c0a1R_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_10") { c0b1R_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_8") { a2c_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_10") { b2b1_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_11") { b1b1_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_8") { a2b1_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_11") { c0b1L_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_11") { c0a1L_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_8") { a1a1R_8.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_11") { b2a1_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_11") { b2a_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_9") { a1a1L_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_11") { c1a_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_11") { c1b_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_9") { a2a1_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_11") { b1aL_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_11") { b1aR_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_9") { a2a_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_11") { c1c_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_11") { c0a1R_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_9") { a1a_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_11") { b2b_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_11") { b2b1_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_9") { a1bbL_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_11") { c0b1R_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_12") { c0b1L_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_9") { a1bbR_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_12") { b1b1_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_12") { b2a1_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_9") { a2c_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_12") { c0a1L_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_12") { c1a_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_9") { a2b1_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_12") { b2a_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_12") { b1aL_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_9") { a1a1R_9.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_12") { c1b_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_12") { c1c_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_12") { b1aR_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_10") { a1a1L_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_12") { b2b_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_10") { a2a1_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_12") { c0a1R_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_12") { c0b1R_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_10") { a2a_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_12") { b2b1_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_13") { b1b1_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_10") { a1a_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_13") { c0b1L_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_13") { c0a1L_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_10") { a1bbL_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_13") { b2a1_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_13") { b2a_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_10") { a1bbR_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_13") { c1a_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_13") { c1b_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_10") { a2c_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_13") { b1aL_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_13") { b1aR_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_10") { a2b1_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_13") { c1c_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_13") { c0a1R_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_10") { a1a1R_10.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_13") { b2b_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_13") { b2b1_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_11") { a1a1L_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_13") { c0b1R_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_14") { c0b1L_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_11") { a2a1_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_14") { b1b1_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_14") { b2a1_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_11") { a2a_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_14") { c0a1L_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_14") { c1a_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_11") { a1a_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_14") { b2a_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_14") { b1aL_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_11") { a1bbL_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_14") { c1b_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_14") { c1c_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_11") { a1bbR_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_14") { b1aR_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_14") { b2b_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_11") { a2c_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_14") { c0a1R_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_14") { c0b1R_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_14") { b2b1_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_11") { a2b1_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_15") { b1b1_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_11") { a1a1R_11.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_15") { c0b1L_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_15") { c0a1L_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_12") { a1a1L_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_15") { b2a1_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_15") { b2a_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_12") { a2a1_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_15") { c1a_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_15") { c1b_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_12") { a2a_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_15") { b1aL_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_15") { b1aR_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_12") { a1a_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_15") { c1c_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_15") { c0a1R_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_12") { a1bbL_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_15") { b2b_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_15") { b2b1_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_12") { a1bbR_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_15") { c0b1R_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_16") { c0b1L_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_12") { a2c_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_16") { b1b1_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_16") { b2a1_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_12") { a2b1_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_16") { c0a1L_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_16") { c1a_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_12") { a1a1R_12.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_16") { b2a_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_16") { b1aL_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_13") { a1a1L_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_16") { c1b_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_16") { c1c_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_13") { a2a1_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_16") { b1aR_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_16") { b2b_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_13") { a2a_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_16") { c0a1R_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_16") { c0b1R_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_13") { a1a_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_16") { b2b1_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_17") { b1b1_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_13") { a1bbL_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_17") { c0b1L_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_17") { c0a1L_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_17") { b2a1_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_13") { a1bbR_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_17") { b2a_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_13") { a2c_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_17") { c1a_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_17") { c1b_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_13") { a2b1_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_17") { b1aL_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_17") { b1aR_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_13") { a1a1R_13.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_17") { c1c_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_17") { c0a1R_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_14") { a1a1L_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_17") { b2b_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_17") { b2b1_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_14") { a2a1_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_17") { c0b1R_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1L_18") { c0b1L_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_14") { a2a_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_18") { b1b1_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_18") { b2a1_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_14") { a1a_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1L_18") { c0a1L_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1a_18") { c1a_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_14") { a1bbL_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_18") { b2a_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_18") { b1aL_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_14") { a1bbR_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1b_18") { c1b_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C1c_18") { c1c_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_14") { a2c_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_18") { b1aR_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_18") { b2b_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_14") { a2b1_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0a1R_18") { c0a1R_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "C0b1R_18") { c0b1R_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_14") { a1a1R_14.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_18") { b2b1_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_19") { b1b1_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_15") { a1a1L_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_15") { a2a1_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_19") { b2a1_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_19") { b2a_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_15") { a2a_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_15") { a1a_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_19") { b1aL_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_19") { b1aR_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_15") { a1bbL_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_15") { a1bbR_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_19") { b2b_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_19") { b2b1_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_15") { a2c_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_15") { a2b1_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_20") { b1b1_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_20") { b2a1_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_15") { a1a1R_15.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_16") { a1a1L_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_20") { b2a_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_20") { b1aL_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_16") { a2a1_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_16") { a2a_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_20") { b1aR_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_20") { b2b_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_16") { a1a_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_16") { a1bbL_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_20") { b2b1_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_21") { b1b1_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_16") { a1bbR_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_16") { a2c_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_21") { b2a1_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_21") { b2a_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_16") { a2b1_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_16") { a1a1R_16.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_21") { b1aL_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_21") { b1aR_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_17") { a1a1L_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_17") { a2a1_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_21") { b2b_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_21") { b2b1_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_17") { a2a_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_17") { a1a_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_22") { b1b1_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_22") { b2a1_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_17") { a1bbL_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_17") { a1bbR_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_22") { b2a_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_22") { b1aL_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_17") { a2c_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_17") { a2b1_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_22") { b1aR_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_22") { b2b_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_17") { a1a1R_17.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_18") { a1a1L_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_22") { b2b1_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_23") { b1b1_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_18") { a2a1_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_18") { a2a_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_23") { b2a1_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_23") { b2a_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_18") { a1a_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_18") { a1bbL_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_23") { b1aL_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_23") { b1aR_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_18") { a1bbR_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_18") { a2c_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_23") { b2b_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_23") { b2b1_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_18") { a2b1_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_18") { a1a1R_18.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_24") { b1b1_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_24") { b2a1_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_19") { a1a1L_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_19") { a2a1_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_24") { b2a_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_24") { b1aL_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_19") { a2a_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_19") { a1a_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_24") { b1aR_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_24") { b2b_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_19") { a1bbL_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_19") { a1bbR_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_24") { b2b1_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1b1_25") { b1b1_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_19") { a2c_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_19") { a2b1_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a1_25") { b2a1_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2a_25") { b2a_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_19") { a1a1R_19.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_20") { a1a1L_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aL_25") { b1aL_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B1aR_25") { b1aR_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_20") { a2a1_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_20") { a2a_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b_25") { b2b_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "B2b1_25") { b2b1_25.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_20") { a1a_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_20") { a1bbL_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }

                    if (butonad == "A1bbR_20") { a1bbR_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_20") { a2c_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }

                    if (butonad == "A2b1_20") { a2b1_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_20") { a1a1R_20.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }

                    if (butonad == "A1a1L_21") { a1a1L_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_21") { a2a1_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }

                    if (butonad == "A2a_21") { a2a_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_21") { a1a_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_21") { a1bbL_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_21") { a1bbR_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_21") { a2c_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_21") { a2b1_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_21") { a1a1R_21.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_22") { a1a1L_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_22") { a2a1_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_22") { a2a_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_22") { a1a_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_22") { a1bbL_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_22") { a1bbR_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_22") { a2c_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_22") { a2b1_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_22") { a1a1R_22.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_23") { a1a1L_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_23") { a2a1_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_23") { a2a_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_23") { a1a_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_23") { a1bbL_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_23") { a1bbR_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_23") { a2c_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_23") { a2b1_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_23") { a1a1R_23.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_24") { a1a1L_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_24") { a2a1_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_24") { a2a_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_24") { a1a_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_24") { a1bbL_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_24") { a1bbR_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_24") { a2c_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_24") { a2b1_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_24") { a1a1R_24.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_26") { a1a1L_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_26") { a2a1_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_26") { a2a_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_26") { a1a_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_26") { a1bbL_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_26") { a1bbR_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_26") { a2c_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_26") { a2b1_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_26") { a1a1R_26.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_27") { a1a1L_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_27") { a2a1_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_27") { a2a_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_27") { a1a_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_27") { a1bbL_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_27") { a1bbR_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_27") { a2c_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_27") { a2b1_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_27") { a1a1R_27.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_28") { a1a1L_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_28") { a2a1_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_28") { a2a_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_28") { a1a_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_28") { a1bbL_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_28") { a1bbR_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_28") { a2c_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_28") { a2b1_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_28") { a1a1R_28.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_29") { a1a1L_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_29") { a2a1_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_29") { a2a_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_29") { a1a_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_29") { a1bbL_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_29") { a1bbR_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_29") { a2c_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_29") { a2b1_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_29") { a1a1R_29.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_30") { a1a1L_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_30") { a2a1_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_30") { a2a_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_30") { a1a_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_30") { a1bbL_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_30") { a1bbR_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_30") { a2c_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_30") { a2b1_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_30") { a1a1R_30.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_31") { a1a1L_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_31") { a2a1_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_31") { a2a_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_31") { a1a_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_31") { a1bbL_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_31") { a1bbR_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_31") { a2c_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_31") { a2b1_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_31") { a1a1R_31.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_32") { a1a1L_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_32") { a2a1_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_32") { a2a_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_32") { a1a_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_32") { a1bbL_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_32") { a1bbR_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_32") { a2c_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_32") { a2b1_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_32") { a1a1R_32.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_33") { a1a1L_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_33") { a2a1_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_33") { a2a_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_33") { a1a_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_33") { a1bbL_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_33") { a1bbR_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_33") { a2c_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_33") { a2b1_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_33") { a1a1R_33.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_34") { a1a1L_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_34") { a2a1_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_34") { a2a_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_34") { a1a_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_34") { a1bbL_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_34") { a1bbR_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_34") { a2c_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_34") { a2b1_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_34") { a1a1R_34.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_35") { a1a1L_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_35") { a2a1_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_35") { a2a_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_35") { a1a_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_35") { a1bbL_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_35") { a1bbR_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_35") { a2c_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_35") { a2b1_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_35") { a1a1R_35.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_36") { a1a1L_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_36") { a2a1_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_36") { a2a_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_36") { a1a_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_36") { a1bbL_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_36") { a1bbR_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_36") { a2c_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_36") { a2b1_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_36") { a1a1R_36.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_37") { a1a1L_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_37") { a2a1_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_37") { a2a_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_37") { a1a_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_37") { a1bbL_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_37") { a1bbR_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_37") { a2c_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_37") { a2b1_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_37") { a1a1R_37.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_38") { a1a1L_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_38") { a2a1_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_38") { a2a_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_38") { a1a_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_38") { a1bbL_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_38") { a1bbR_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_38") { a2c_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_38") { a2b1_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_38") { a1a1R_38.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_39") { a1a1L_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_39") { a2a1_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_39") { a2a_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_39") { a1a_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_39") { a1bbL_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_39") { a1bbR_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_39") { a2c_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_39") { a2b1_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_39") { a1a1R_39.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_40") { a1a1L_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_40") { a2a1_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_40") { a2a_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_40") { a1a_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_40") { a1bbL_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_40") { a1bbR_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_40") { a2c_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_40") { a2b1_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_40") { a1a1R_40.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_41") { a1a1L_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_41") { a2a1_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_41") { a2a_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_41") { a1a_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_41") { a1bbL_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_41") { a1bbR_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_41") { a2c_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_41") { a2b1_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_41") { a1a1R_41.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_42") { a1a1L_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_42") { a2a1_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_42") { a2a_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_42") { a1a_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_42") { a1bbL_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_42") { a1bbR_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_42") { a2c_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_42") { a2b1_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_42") { a1a1R_42.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_43") { a1a1L_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_43") { a2a1_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_43") { a2a_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_43") { a1a_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_43") { a1bbL_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_43") { a1bbR_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_43") { a2c_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_43") { a2b1_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_43") { a1a1R_43.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_44") { a1a1L_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_44") { a2a1_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_44") { a2a_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_44") { a1a_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_44") { a1bbL_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_44") { a1bbR_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_44") { a2c_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_44") { a2b1_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_44") { a1a1R_44.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_45") { a1a1L_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_45") { a2a1_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_45") { a2a_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_45") { a1a_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_45") { a1bbL_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_45") { a1bbR_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_45") { a2c_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_45") { a2b1_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_45") { a1a1R_45.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_46") { a1a1L_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_46") { a2a1_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_46") { a2a_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_46") { a1a_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_46") { a1bbL_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_46") { a1bbR_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_46") { a2c_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_46") { a2b1_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_46") { a1a1R_46.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_47") { a1a1L_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_47") { a2a1_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_47") { a2a_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_47") { a1a_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_47") { a1bbL_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_47") { a1bbR_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_47") { a2c_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_47") { a2b1_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_47") { a1a1R_47.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_48") { a1a1L_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_48") { a2a1_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_48") { a2a_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_48") { a1a_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_48") { a1bbL_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_48") { a1bbR_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_48") { a2c_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_48") { a2b1_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_48") { a1a1R_48.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1L_49") { a1a1L_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a1_49") { a2a1_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2a_49") { a2a_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a_49") { a1a_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbL_49") { a1bbL_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1bbR_49") { a1bbR_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2c_49") { a2c_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A2b1_49") { a2b1_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                    if (butonad == "A1a1R_49") { a1a1R_49.Attributes.Add("class", "tblTdss col bloked-kirmizi"); }
                }

                if (durum == 2)
                {
                    if (butonad == "A1a1L_1") { a1a1L_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_1") { c0b1L_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_1") { b1b1_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_1") { c0a1L_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_1") { a2a1_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_1") { b2a1_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_1") { b2a_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_1") { a2a_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_1") { c1a_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_1") { c1b_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_1") { a1a_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_1") { b1aL_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_1") { b1aR_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_1") { a1bbL_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_1") { c1c_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_1") { c0a1R_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_1") { a1bbR_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_1") { b2b_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_1") { b2b1_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_1") { a2c_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_1") { c0b1R_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_2") { c0b1L_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_1") { a2b1_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_2") { b1b1_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_2") { b2a1_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_1") { a1a1R_1.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_2") { c0a1L_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_2") { c1a_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_2") { a1a1L_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_2") { b2a_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_2") { b1aL_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_2") { a2a1_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_2") { c1b_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_2") { c1c_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_2") { a2a_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_2") { b1aR_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_2") { b2b_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_2") { a1a_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_2") { c0a1R_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_2") { c0b1R_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_2") { a1bbL_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_2") { b2b1_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_3") { b1b1_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_2") { a1bbR_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_3") { c0b1L_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_3") { c0a1L_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_2") { a2c_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_3") { b2a1_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_3") { b2a_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_2") { a2b1_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_3") { c1a_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_3") { c1b_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_2") { a1a1R_2.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_3") { b1aL_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_3") { b1aR_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_3") { a1a1L_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_3") { c1c_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_3") { c0a1R_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_3") { a2a1_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_3") { b2b_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_3") { b2b1_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_3") { a2a_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_3") { c0b1R_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_4") { c0b1L_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_3") { a1a_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_4") { b1b1_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_4") { b2a1_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_3") { a1bbL_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_4") { c0a1L_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_4") { c1a_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_3") { a1bbR_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_4") { b2a_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_4") { b1aL_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_3") { a2c_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_4") { c1b_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_4") { c1c_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_3") { a2b1_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_4") { b1aR_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_4") { b2b_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_3") { a1a1R_3.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_4") { c0a1R_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_4") { c0b1R_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_4") { a1a1L_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_4") { b2b1_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_5") { b1b1_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_4") { a2a1_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_5") { c0b1L_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_5") { c0a1L_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_4") { a2a_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_5") { b2a1_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_5") { b2a_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_4") { a1a_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_5") { c1a_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_5") { c1b_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_4") { a1bbL_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_5") { b1aL_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_5") { b1aR_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_4") { a1bbR_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_5") { c1c_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_5") { c0a1R_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_4") { a2c_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_5") { b2b_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_5") { b2b1_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_4") { a2b1_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_5") { c0b1R_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_6") { c0b1L_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_4") { a1a1R_4.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_6") { b1b1_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_6") { b2a1_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_5") { a1a1L_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_6") { c0a1L_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_6") { c1a_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_5") { a2a1_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_6") { b2a_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_6") { b1aL_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_5") { a2a_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_6") { c1b_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_6") { c1c_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_5") { a1a_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_6") { b1aR_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_6") { b2b_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_5") { a1bbL_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_6") { c0a1R_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_6") { c0b1R_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_5") { a1bbR_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_6") { b2b1_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_7") { b1b1_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_5") { a2c_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_7") { c0b1L_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_7") { c0a1L_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_5") { a2b1_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_7") { b2a1_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_7") { b2a_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_5") { a1a1R_5.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_7") { c1a_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_7") { c1b_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_6") { a1a1L_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_7") { b1aL_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_7") { b1aR_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_6") { a2a1_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_7") { c1c_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_7") { c0a1R_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_6") { a2a_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_7") { b2b_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_7") { b2b1_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_6") { a1a_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_7") { c0b1R_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_6") { a1bbL_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_8") { b1b1_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_8") { c0b1L_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_6") { a1bbR_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_8") { b2a1_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_8") { c0a1L_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_8") { c1a_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_8") { b2a_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_6") { a2c_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_8") { b1aL_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_6") { a2b1_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_8") { c1b_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_8") { c1c_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_6") { a1a1R_6.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_8") { b1aR_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_8") { b2b_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_7") { a1a1L_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_8") { c0a1R_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_8") { c0b1R_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_7") { a2a1_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_8") { b2b1_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_9") { b1b1_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_7") { a2a_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_9") { c0b1L_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_9") { c0a1L_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_7") { a1a_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_9") { b2a1_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_9") { b2a_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_7") { a1bbL_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_9") { c1a_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_9") { c1b_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_7") { a1bbR_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_9") { b1aL_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_9") { b1aR_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_7") { a2c_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_9") { c1c_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_9") { c0a1R_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_7") { a2b1_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_9") { b2b_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_9") { b2b1_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_7") { a1a1R_7.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_9") { c0b1R_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_10") { c0b1L_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_8") { a1a1L_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_10") { b1b1_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_10") { b2a1_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_8") { a2a1_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_10") { c0a1L_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_10") { c1a_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_10") { b2a_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_8") { a2a_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_10") { b1aL_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_8") { a1a_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_10") { c1b_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_10") { c1c_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_8") { a1bbL_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_10") { b1aR_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_10") { b2b_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_8") { a1bbR_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_10") { c0a1R_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_10") { c0b1R_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_8") { a2c_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_10") { b2b1_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_11") { b1b1_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_8") { a2b1_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_11") { c0b1L_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_11") { c0a1L_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_8") { a1a1R_8.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_11") { b2a1_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_11") { b2a_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_9") { a1a1L_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_11") { c1a_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_11") { c1b_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_9") { a2a1_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_11") { b1aL_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_11") { b1aR_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_9") { a2a_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_11") { c1c_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_11") { c0a1R_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_9") { a1a_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_11") { b2b_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_11") { b2b1_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_9") { a1bbL_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_11") { c0b1R_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_12") { c0b1L_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_9") { a1bbR_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_12") { b1b1_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_12") { b2a1_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_9") { a2c_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_12") { c0a1L_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_12") { c1a_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_9") { a2b1_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_12") { b2a_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_12") { b1aL_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_9") { a1a1R_9.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_12") { c1b_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_12") { c1c_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_12") { b1aR_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_10") { a1a1L_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_12") { b2b_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_10") { a2a1_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_12") { c0a1R_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_12") { c0b1R_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_10") { a2a_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_12") { b2b1_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_13") { b1b1_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_10") { a1a_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_13") { c0b1L_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_13") { c0a1L_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_10") { a1bbL_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_13") { b2a1_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_13") { b2a_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_10") { a1bbR_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_13") { c1a_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_13") { c1b_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_10") { a2c_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_13") { b1aL_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_13") { b1aR_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_10") { a2b1_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_13") { c1c_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_13") { c0a1R_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_10") { a1a1R_10.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_13") { b2b_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_13") { b2b1_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_11") { a1a1L_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_13") { c0b1R_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_14") { c0b1L_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_11") { a2a1_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_14") { b1b1_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_14") { b2a1_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_11") { a2a_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_14") { c0a1L_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_14") { c1a_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_11") { a1a_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_14") { b2a_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_14") { b1aL_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_11") { a1bbL_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_14") { c1b_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_14") { c1c_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_11") { a1bbR_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_14") { b1aR_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_14") { b2b_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_11") { a2c_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_14") { c0a1R_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_14") { c0b1R_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_14") { b2b1_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_11") { a2b1_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_15") { b1b1_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_11") { a1a1R_11.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_15") { c0b1L_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_15") { c0a1L_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_12") { a1a1L_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_15") { b2a1_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_15") { b2a_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_12") { a2a1_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_15") { c1a_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_15") { c1b_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_12") { a2a_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_15") { b1aL_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_15") { b1aR_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_12") { a1a_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_15") { c1c_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_15") { c0a1R_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_12") { a1bbL_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_15") { b2b_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_15") { b2b1_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_12") { a1bbR_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_15") { c0b1R_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_16") { c0b1L_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_12") { a2c_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_16") { b1b1_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_16") { b2a1_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_12") { a2b1_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_16") { c0a1L_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_16") { c1a_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_12") { a1a1R_12.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_16") { b2a_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_16") { b1aL_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_13") { a1a1L_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_16") { c1b_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_16") { c1c_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_13") { a2a1_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_16") { b1aR_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_16") { b2b_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_13") { a2a_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_16") { c0a1R_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_16") { c0b1R_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_13") { a1a_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_16") { b2b1_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_17") { b1b1_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_13") { a1bbL_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_17") { c0b1L_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_17") { c0a1L_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_17") { b2a1_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_13") { a1bbR_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_17") { b2a_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_13") { a2c_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_17") { c1a_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_17") { c1b_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_13") { a2b1_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_17") { b1aL_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_17") { b1aR_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_13") { a1a1R_13.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_17") { c1c_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_17") { c0a1R_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_14") { a1a1L_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_17") { b2b_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_17") { b2b1_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_14") { a2a1_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_17") { c0b1R_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1L_18") { c0b1L_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_14") { a2a_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_18") { b1b1_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_18") { b2a1_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_14") { a1a_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1L_18") { c0a1L_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1a_18") { c1a_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_14") { a1bbL_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_18") { b2a_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_18") { b1aL_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_14") { a1bbR_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1b_18") { c1b_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C1c_18") { c1c_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_14") { a2c_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_18") { b1aR_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_18") { b2b_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_14") { a2b1_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0a1R_18") { c0a1R_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "C0b1R_18") { c0b1R_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_14") { a1a1R_14.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_18") { b2b1_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_19") { b1b1_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_15") { a1a1L_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_15") { a2a1_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_19") { b2a1_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_19") { b2a_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_15") { a2a_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_15") { a1a_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_19") { b1aL_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_19") { b1aR_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_15") { a1bbL_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_15") { a1bbR_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_19") { b2b_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_19") { b2b1_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_15") { a2c_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_15") { a2b1_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_20") { b1b1_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_20") { b2a1_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_15") { a1a1R_15.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_16") { a1a1L_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_20") { b2a_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_20") { b1aL_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_16") { a2a1_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_16") { a2a_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_20") { b1aR_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_20") { b2b_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_16") { a1a_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_16") { a1bbL_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_20") { b2b1_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_21") { b1b1_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_16") { a1bbR_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_16") { a2c_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_21") { b2a1_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_21") { b2a_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_16") { a2b1_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_16") { a1a1R_16.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_21") { b1aL_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_21") { b1aR_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_17") { a1a1L_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_17") { a2a1_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_21") { b2b_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_21") { b2b1_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_17") { a2a_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_17") { a1a_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_22") { b1b1_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_22") { b2a1_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_17") { a1bbL_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_17") { a1bbR_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_22") { b2a_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_22") { b1aL_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_17") { a2c_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_17") { a2b1_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_22") { b1aR_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_22") { b2b_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_17") { a1a1R_17.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_18") { a1a1L_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_22") { b2b1_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_23") { b1b1_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_18") { a2a1_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_18") { a2a_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_23") { b2a1_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_23") { b2a_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_18") { a1a_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_18") { a1bbL_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_23") { b1aL_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_23") { b1aR_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_18") { a1bbR_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_18") { a2c_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_23") { b2b_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_23") { b2b1_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_18") { a2b1_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_18") { a1a1R_18.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_24") { b1b1_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_24") { b2a1_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_19") { a1a1L_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_19") { a2a1_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_24") { b2a_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_24") { b1aL_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_19") { a2a_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_19") { a1a_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_24") { b1aR_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_24") { b2b_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_19") { a1bbL_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_19") { a1bbR_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_24") { b2b1_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1b1_25") { b1b1_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_19") { a2c_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_19") { a2b1_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a1_25") { b2a1_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2a_25") { b2a_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_19") { a1a1R_19.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_20") { a1a1L_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aL_25") { b1aL_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B1aR_25") { b1aR_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_20") { a2a1_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_20") { a2a_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b_25") { b2b_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "B2b1_25") { b2b1_25.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_20") { a1a_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_20") { a1bbL_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }

                    if (butonad == "A1bbR_20") { a1bbR_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_20") { a2c_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }

                    if (butonad == "A2b1_20") { a2b1_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_20") { a1a1R_20.Attributes.Add("class", "tblTdss col basarili-yesil"); }

                    if (butonad == "A1a1L_21") { a1a1L_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_21") { a2a1_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }

                    if (butonad == "A2a_21") { a2a_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_21") { a1a_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_21") { a1bbL_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_21") { a1bbR_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_21") { a2c_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_21") { a2b1_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_21") { a1a1R_21.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_22") { a1a1L_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_22") { a2a1_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_22") { a2a_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_22") { a1a_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_22") { a1bbL_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_22") { a1bbR_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_22") { a2c_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_22") { a2b1_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_22") { a1a1R_22.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_23") { a1a1L_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_23") { a2a1_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_23") { a2a_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_23") { a1a_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_23") { a1bbL_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_23") { a1bbR_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_23") { a2c_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_23") { a2b1_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_23") { a1a1R_23.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_24") { a1a1L_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_24") { a2a1_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_24") { a2a_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_24") { a1a_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_24") { a1bbL_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_24") { a1bbR_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_24") { a2c_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_24") { a2b1_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_24") { a1a1R_24.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_26") { a1a1L_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_26") { a2a1_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_26") { a2a_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_26") { a1a_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_26") { a1bbL_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_26") { a1bbR_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_26") { a2c_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_26") { a2b1_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_26") { a1a1R_26.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_27") { a1a1L_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_27") { a2a1_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_27") { a2a_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_27") { a1a_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_27") { a1bbL_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_27") { a1bbR_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_27") { a2c_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_27") { a2b1_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_27") { a1a1R_27.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_28") { a1a1L_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_28") { a2a1_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_28") { a2a_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_28") { a1a_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_28") { a1bbL_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_28") { a1bbR_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_28") { a2c_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_28") { a2b1_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_28") { a1a1R_28.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_29") { a1a1L_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_29") { a2a1_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_29") { a2a_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_29") { a1a_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_29") { a1bbL_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_29") { a1bbR_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_29") { a2c_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_29") { a2b1_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_29") { a1a1R_29.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_30") { a1a1L_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_30") { a2a1_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_30") { a2a_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_30") { a1a_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_30") { a1bbL_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_30") { a1bbR_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_30") { a2c_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_30") { a2b1_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_30") { a1a1R_30.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_31") { a1a1L_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_31") { a2a1_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_31") { a2a_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_31") { a1a_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_31") { a1bbL_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_31") { a1bbR_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_31") { a2c_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_31") { a2b1_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_31") { a1a1R_31.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_32") { a1a1L_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_32") { a2a1_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_32") { a2a_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_32") { a1a_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_32") { a1bbL_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_32") { a1bbR_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_32") { a2c_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_32") { a2b1_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_32") { a1a1R_32.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_33") { a1a1L_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_33") { a2a1_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_33") { a2a_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_33") { a1a_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_33") { a1bbL_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_33") { a1bbR_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_33") { a2c_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_33") { a2b1_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_33") { a1a1R_33.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_34") { a1a1L_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_34") { a2a1_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_34") { a2a_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_34") { a1a_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_34") { a1bbL_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_34") { a1bbR_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_34") { a2c_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_34") { a2b1_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_34") { a1a1R_34.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_35") { a1a1L_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_35") { a2a1_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_35") { a2a_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_35") { a1a_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_35") { a1bbL_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_35") { a1bbR_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_35") { a2c_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_35") { a2b1_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_35") { a1a1R_35.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_36") { a1a1L_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_36") { a2a1_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_36") { a2a_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_36") { a1a_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_36") { a1bbL_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_36") { a1bbR_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_36") { a2c_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_36") { a2b1_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_36") { a1a1R_36.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_37") { a1a1L_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_37") { a2a1_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_37") { a2a_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_37") { a1a_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_37") { a1bbL_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_37") { a1bbR_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_37") { a2c_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_37") { a2b1_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_37") { a1a1R_37.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_38") { a1a1L_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_38") { a2a1_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_38") { a2a_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_38") { a1a_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_38") { a1bbL_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_38") { a1bbR_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_38") { a2c_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_38") { a2b1_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_38") { a1a1R_38.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_39") { a1a1L_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_39") { a2a1_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_39") { a2a_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_39") { a1a_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_39") { a1bbL_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_39") { a1bbR_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_39") { a2c_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_39") { a2b1_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_39") { a1a1R_39.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_40") { a1a1L_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_40") { a2a1_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_40") { a2a_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_40") { a1a_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_40") { a1bbL_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_40") { a1bbR_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_40") { a2c_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_40") { a2b1_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_40") { a1a1R_40.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_41") { a1a1L_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_41") { a2a1_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_41") { a2a_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_41") { a1a_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_41") { a1bbL_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_41") { a1bbR_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_41") { a2c_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_41") { a2b1_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_41") { a1a1R_41.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_42") { a1a1L_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_42") { a2a1_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_42") { a2a_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_42") { a1a_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_42") { a1bbL_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_42") { a1bbR_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_42") { a2c_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_42") { a2b1_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_42") { a1a1R_42.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_43") { a1a1L_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_43") { a2a1_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_43") { a2a_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_43") { a1a_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_43") { a1bbL_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_43") { a1bbR_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_43") { a2c_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_43") { a2b1_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_43") { a1a1R_43.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_44") { a1a1L_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_44") { a2a1_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_44") { a2a_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_44") { a1a_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_44") { a1bbL_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_44") { a1bbR_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_44") { a2c_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_44") { a2b1_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_44") { a1a1R_44.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_45") { a1a1L_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_45") { a2a1_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_45") { a2a_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_45") { a1a_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_45") { a1bbL_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_45") { a1bbR_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_45") { a2c_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_45") { a2b1_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_45") { a1a1R_45.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_46") { a1a1L_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_46") { a2a1_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_46") { a2a_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_46") { a1a_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_46") { a1bbL_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_46") { a1bbR_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_46") { a2c_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_46") { a2b1_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_46") { a1a1R_46.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_47") { a1a1L_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_47") { a2a1_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_47") { a2a_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_47") { a1a_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_47") { a1bbL_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_47") { a1bbR_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_47") { a2c_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_47") { a2b1_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_47") { a1a1R_47.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_48") { a1a1L_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_48") { a2a1_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_48") { a2a_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_48") { a1a_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_48") { a1bbL_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_48") { a1bbR_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_48") { a2c_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_48") { a2b1_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_48") { a1a1R_48.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1L_49") { a1a1L_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a1_49") { a2a1_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2a_49") { a2a_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a_49") { a1a_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbL_49") { a1bbL_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1bbR_49") { a1bbR_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2c_49") { a2c_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A2b1_49") { a2b1_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                    if (butonad == "A1a1R_49") { a1a1R_49.Attributes.Add("class", "tblTdss col basarili-yesil"); }
                }

            }
            //LISTE
            if (kullaniciadi == "admin")
            {
                RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi");
                RPT_GORUSME_LISTE.DataBind();
            }
            else
            {
                RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi where gKULLANICI_ID='" + Session["kulid"] + "'");
                RPT_GORUSME_LISTE.DataBind();
            }


            //a2a_1.Style.Add(""background-color","blue");
            //Button butonyeni = null;
            DataTable dtDurum = DBIslem.DtGetir("select * from TBL_FIYAT_LISTE where fKOD <> '' and fDurum=1 order by fNO");
            int kaysay = dtDurum.Rows.Count;

            for (int i = 0; i < kaysay; i++)
            {
       
                    //butonyeni = new Button();
                    //butonyeni.ID = "ContentPlaceHolder1_" + dtDurum.Rows[0]["fKOD"].ToString() + "_1";
                    //butonyeni.Style.Add(""background-color", "blue");
                }
            }
         
        else
        {
            Response.Redirect("girisYap.aspx");
        } 
            if (Request.QueryString["mID"] != null)
            {
                //BİLGİ AKTAR--> MÜŞTERİ BİLGİLERİ
                DataTable dt = DBIslem.DtGetir("SELECT * FROM TBL_MUSTERI WHERE mID='" + Request.QueryString["mID"].ToString() + "'");
                txtAdSoyad.Text = dt.Rows[0]["mAD"].ToString() + " " + dt.Rows[0]["mSOYAD"].ToString();

                //TARİH
                //txtGorusmeTarihi1.Text = DateTime.Now.ToShortDateString();
            }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        DataTable dt = DBIslem.DtGetir("SELECT * FROM [u7965308_dbTrio].dbo.TBL_FIYAT_LISTE where fTIP = '" + txtClick.Text + "'");
        txtMevki.Text = dt.Rows[0]["fMEVKI"].ToString();
        //SELECT * FROM [u7965308_dbTrio].dbo.TBL_FIYAT_LISTE where fTIP = '""'
        txtListeFiyati.Text = dt.Rows[0]["fTOPLAMFIYAT"].ToString();
        txtNitelik.Text = dt.Rows[0]["fNITELIK"].ToString();
        txtEklenti.Text = dt.Rows[0]["fEKLENTI"].ToString();
        txtNetAlan.Text = dt.Rows[0]["fNETALAN"].ToString();
        txtBrutAlan.Text = dt.Rows[0]["fBRUTALAN"].ToString();
        txtFiyat.Text = dt.Rows[0]["fTOPLAMFIYAT"].ToString();
        //flisteID = Convert.ToInt32(dt.Rows[0]["fNO"].ToString());
        flisteDurum = Convert.ToInt32(dt.Rows[0]["fDURUM"].ToString());
        if (flisteDurum == 2)
        {
            lblDaireDurum.Text = "Dikkat! Bu alanda rezerve mevcut.";
            Button3.Enabled = false;//Kaydet tuşu açık
        }
        else if (flisteDurum == 1)
        {
            lblDaireDurum.Text = "Dikkat! Seçtiğiniz alan satılmış.";
            Button3.Enabled = false;//Kaydet tuşu kapalı
        }
        else if (flisteDurum == 0)
        {
            lblDaireDurum.Text = "";
            Button3.Enabled = true;//Kaydet tuşu açık
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //Kayıt Yap
        DBIslem.DtGetir("INSERT INTO TBL_GORUSME (gMESKEN_ID,gMUSTERI_ID,gGORUSME_TARIHI,gGORUSME_TARIHI2,gGORUSME_TURU,gACENTA,gTEKLIF_UCRET,gTEKLIF_PARA_BIRIMI,gSATIS_OLASILIK,gODEME_TURU,gNOT,gKULLANICI_ID) VALUES ('" + txtClick.Text + "','" + Request.QueryString["mID"].ToString() + "','" + txtGorusmeTarihi1.Text + "','" + txtGorusmeTarihi2.Text + "','" + ddGorusmeTuru.SelectedItem.Text.ToString() + "','" + txtAcenta.Text + "','" + txtTeklif.Text + "','" + ddKur.SelectedItem.Text.ToString() + "','" + ddSatisOlasiligi.SelectedItem.Text.ToString() + "','" + ddOdeme.SelectedItem.Text.ToString() + "','" + txtNot.Text + "','" + Session["kulid"] + "')");
        //Response.blueirect("default.aspx");
        DBIslem.DtGetir("UPDATE TBL_FIYAT_LISTE SET fDURUM = '2' where fTIP = '" + txtClick.Text + "'");

        //LISTE
        if (kullaniciadi == "admin")
        {
            RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi");
            RPT_GORUSME_LISTE.DataBind();
        }
        else
        {
            RPT_GORUSME_LISTE.DataSource = DBIslem.DtGetir("SELECT * FROM View_GorusmeListesi where gKULLANICI_ID='" + Session["kulid"] + "'");
            RPT_GORUSME_LISTE.DataBind();
        }

        //
        Response.Redirect("default.aspx");
    }
}