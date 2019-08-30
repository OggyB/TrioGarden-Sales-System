using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.UI;
using System.Web.UI.HtmlControls;

public static class DBIslem
{
    public static SqlCommand Comm = Commands();

    public static ArrayList Parametrelerim = Parametreler();

    public static SqlCommand Commands()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlCommand cmed = new SqlCommand();
        cmed.Parameters.Clear();
        cmed.Connection = con;

        return cmed;
    }
   
    public static DataTable DtArama(string Komut, string Parametre)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlCommand com = new SqlCommand(Komut, con);
        com.Parameters.AddWithValue("@Deger", "%" + Parametre.Trim() + "%");

        SqlDataAdapter adp = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adp.Fill(dt);

        con.Close();
        con.Dispose();

        return dt;
    }

    public static ArrayList Parametreler()
    {
        ArrayList Param = new ArrayList();
        Param.Clear();
        return Param;
    }

    public static DataTable ParametreOlustur(string ProcAd)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter("SELECT PARAMETER_NAME FROM INFORMATION_SCHEMA.Parameters WHERE SPECIFIC_NAME=@PROCEDURENAME", con);
        da.SelectCommand.Parameters.AddWithValue("@PROCEDURENAME", ProcAd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        con.Close();
        con.Dispose();

        return dt;
    }

    public static DataTable DtGetir(string Sorgu)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter(Sorgu, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        con.Close();
        con.Dispose();

        return dt;
    }

    public static bool KayitVarYok(string Komut, string Deger)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        bool VarYok = false;
        SqlDataAdapter sda = new SqlDataAdapter(Komut, con);
        sda.SelectCommand.Parameters.AddWithValue("@Deger", Deger);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count > 0)
            VarYok = true;
        else
            VarYok = false;

        con.Close();
        con.Dispose();

        return VarYok;
    }

    public static DataTable ParametreliDt(string Komut, string Parametra)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter(Komut, con);
        da.SelectCommand.Parameters.AddWithValue("@Deger", Parametra);
        DataTable dt = new DataTable();
        da.Fill(dt);

        con.Close();
        con.Dispose();

        return dt;
    }

    public static DataTable LoginDt(string Komut, string Parametre1, string Parametre2)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter(Komut, con);
        da.SelectCommand.Parameters.AddWithValue("@Deger1", Parametre1);
        da.SelectCommand.Parameters.AddWithValue("@Deger2", Parametre2);
        DataTable dt = new DataTable();
        da.Fill(dt);

        con.Close();
        con.Dispose();

        return dt;
    }

    public static string VeriEkleProc(ArrayList Degerler, string Komut)
    {
        string IslemSonuc = "";

        try
        {
            DataTable dt = ParametreOlustur(Komut);
            Comm.CommandType = CommandType.StoredProcedure;
            Comm.CommandText = Komut;
            Comm.Parameters.Clear();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                Comm.Parameters.AddWithValue(dt.Rows[i][0].ToString(), Degerler[i].ToString());
            }

            Comm.ExecuteNonQuery();

            IslemSonuc = "İşleminiz Gerçekleşmiştir.";
        }
        catch (Exception ex)
        {
            IslemSonuc = "Bir Hata Oluştu Kod : " + ex.Message;
        }

        return IslemSonuc;
    }

    public static DataTable ParametreliDt1(string p, object p_2)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        con.Open();

        SqlDataAdapter da = new SqlDataAdapter(p, con);
        da.SelectCommand.Parameters.AddWithValue("@Deger", p_2);
        DataTable dt = new DataTable();
        da.Fill(dt);

        con.Close();
        con.Dispose();

        return dt;
    }
    // Aşağıdaki metotlar oguzhana aittir.
    //public static string yaziya(decimal tutar,string para_birimi)
    //{ 
    //    string sTutar = tutar.ToString("F2").Replace('.', ','); // Replace('.',',') ondalık ayracının . olma durumu için            
    //    string lira = sTutar.Substring(0, sTutar.IndexOf(',')); //tutarın tam kısmı
    //    string kurus = sTutar.Substring(sTutar.IndexOf(',') + 1, 2);
    //    string yazi = "";
    //    string[] birler = { "", "BİR", "İKİ", "ÜÇ", "DÖRT", "BEŞ", "ALTI", "YEDİ", "SEKİZ", "DOKUZ" };
    //    string[] onlar = { "", "ON", "YİRMİ", "OTUZ", "KIRK", "ELLİ", "ALTMIŞ", "YETMİŞ", "SEKSEN", "DOKSAN" };
    //    string[] binler = { "KATRİLYON", "TRİLYON", "MİLYAR", "MİLYON", "BİN", "" }; //KATRİLYON'un önüne ekleme yapılarak artırabilir.
    //    int grupSayisi = 6; //sayıdaki 3'lü grup sayısı. katrilyon içi 6. (1.234,00 daki grup sayısı 2'dir.)
    //                        //KATRİLYON'un başına ekleyeceğiniz her değer için grup sayısını artırınız.
    //    lira = lira.PadLeft(grupSayisi * 3, '0'); //sayının soluna '0' eklenerek sayı 'grup sayısı x 3' basakmaklı yapılıyor.            
    //    string grupDegeri;
    //    for (int i = 0; i < grupSayisi * 3; i += 3) //sayı 3'erli gruplar halinde ele alınıyor.
    //    {
    //        grupDegeri = "";
    //        if (lira.Substring(i, 1) != "0")
    //            grupDegeri += birler[Convert.ToInt32(lira.Substring(i, 1))] + "YÜZ"; //yüzler                
    //        if (grupDegeri == "BİRYÜZ") //biryüz düzeltiliyor.
    //            grupDegeri = "YÜZ";
    //        grupDegeri += onlar[Convert.ToInt32(lira.Substring(i + 1, 1))]; //onlar
    //        grupDegeri += birler[Convert.ToInt32(lira.Substring(i + 2, 1))]; //birler                
    //        if (grupDegeri != "") //binler
    //            grupDegeri += binler[i / 3];
    //        if (grupDegeri == "BİRBİN") //birbin düzeltiliyor.
    //            grupDegeri = "BİN";
    //        yazi += grupDegeri;
    //    }
    //    if (yazi != "" && para_birimi == "TL")
    //        yazi += " TL ";
    //    if (yazi != "" && para_birimi == "USD")
    //        yazi += " USD ";
    //    if (yazi != "" && para_birimi == "Euro")
    //    {
    //        yazi += " Euro ";
    //    }
    //    int yaziUzunlugu = yazi.Length;
    //    if (kurus.Substring(0, 1) != "0") //kuruş onlar
    //        yazi += onlar[Convert.ToInt32(kurus.Substring(0, 1))];
    //    if (kurus.Substring(1, 1) != "0") //kuruş birler
    //        yazi += birler[Convert.ToInt32(kurus.Substring(1, 1))];
    //    if (yazi.Length > yaziUzunlugu)
    //        yazi += " Kr.";
    //    else
    //        yazi += "SIFIR Kr.";
    //    return yazi;
    //}
    public static string yaziya(decimal tutar , string para_birimi)
    {
        string sTutar = tutar.ToString("F2").Replace('.', ','); // Replace('.',',') ondalık ayracının . olma durumu için            
        string lira = sTutar.Substring(0, sTutar.IndexOf(',')); //tutarın tam kısmı
        string kurus = sTutar.Substring(sTutar.IndexOf(',') + 1, 2);
        string yazi = "";
        string[] birler = { "", "BİR", "İKİ", "ÜÇ", "DÖRT", "BEŞ", "ALTI", "YEDİ", "SEKİZ", "DOKUZ" };
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
            yazi += "-" + para_birimi + " ";
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
    public static void PwdUpdate(string yenipwd, int kulid)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        try
        {
            if (cnn.State == ConnectionState.Closed)
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("update TBL_KULLANICI set kSIFRE = '" + yenipwd + "' where kID = " + kulid + " ", cnn);
                if (cmd.ExecuteNonQuery() == 1)
                {

                }
                //cmd.CommandText = "update TBL_KULLANICI set kSIFRE = '"+yenipwd+"' where kID = "+ kulid + " ";
                //cmd.Connection = cnn;
                cnn.Close();
            }
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            cnn.Close();
        }

    }
    public static string PwdGetir(int kulid)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        cnn.Open();
        SqlCommand cmd = new SqlCommand("select kSIFRE from TBL_KULLANICI where kID = " + kulid + " ", cnn);

        SqlDataReader read = cmd.ExecuteReader();
        while (read.Read())
        {
            return read[0].ToString();

        }
        read.Close();
        return "";

    }
    //public static void KuladUpdate(string sayi)
    //{
    //    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
    //    try
    //    {
    //        if (cnn.State == ConnectionState.Closed)
    //        {
    //            int i = 0;
    //            cnn.Open();
    //            string yazi = yaziya(Convert.ToDecimal(sayi));
    //            string tutar = Convert.ToString(sayi);
    //            SqlCommand updateCmd = new SqlCommand("update TBL_GECICI set TUTAR_YAZIYLA='" + yazi + "' where TUTAR = '" + tutar + "'", cnn);

                
    //            if (updateCmd.ExecuteNonQuery() > 0)
    //            {

    //                i++;
    //            }

    //            cnn.Close();
    //        }

    //    }
    //    catch (Exception)
    //    {

    //        throw;
    //    }
    //    finally
    //    {
    //        cnn.Close();
    //    }
    //}
    public static string KuladGetir(int kulid)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        try
        {
            if (cnn.State == ConnectionState.Closed)
            {
                cnn.Open();
                SqlCommand cmd = new SqlCommand("select kKULLANICIADI from TBL_KULLANICI where kID = @kulid", cnn);
                cmd.Parameters.AddWithValue("@kulid", kulid);
                SqlDataReader read = cmd.ExecuteReader();

                while (read.Read())
                {
                    return read[0].ToString();
                }

            }
            return "";
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            cnn.Close();
        }

    }
    public static bool LoginControl(string pwd, string kullaniciadi)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        try
        {
            if (cnn.State == ConnectionState.Closed)
            {
                cnn.Open();
                SqlCommand sorgu = new SqlCommand("select kKULLANICIADI from TBL_KULLANICI where kKULLANICIADI = @kullaniciadi and kSIFRE = @pwd", cnn);
                sorgu.Parameters.AddWithValue("@kullaniciadi", kullaniciadi);
                sorgu.Parameters.AddWithValue("@pwd", pwd);
                SqlDataReader dataReader = sorgu.ExecuteReader();
                while (dataReader.Read())
                
                    if (dataReader[0].ToString() == kullaniciadi)
                    {
                        return true;
                    }
                
                else
            {
                return false;
            }     
                               
           
                
                     
                
                
            }
            return false;
        }
        catch (Exception)
        {

            throw;
        }
        finally
        {
            cnn.Close();
        }

    }
    public static string kulidGetir(string kulad, string pwd)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        cnn.Open();
        SqlCommand cmd = new SqlCommand("select kID from TBL_KULLANICI where kKULLANICIADI = @kulad and kSIFRE = @password ", cnn);
        cmd.Parameters.AddWithValue("@kulad", kulad);
        cmd.Parameters.AddWithValue("@password", pwd);
        SqlDataReader read = cmd.ExecuteReader();
        while (read.Read())
        {
            string a = read[0].ToString();
            return read[0].ToString();

        }
        return "";

    }
    public static bool DtMusteriVarmi(string ad , string soyad)
    {
        SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        if (cnn.State == ConnectionState.Closed)
        {
         try
        {
                cnn.Open();
            SqlCommand sorgum = new SqlCommand("select * from TBL_MUSTERI where mAD = @add and mSOYAD = @soyadd ", cnn);
            sorgum.Parameters.AddWithValue("@add", ad);
            sorgum.Parameters.AddWithValue("@soyadd", soyad);
            SqlDataReader dataReader = sorgum.ExecuteReader();
            
            if (dataReader.HasRows != true)
            {
                cnn.Close();
                return true; // kaydedilebilir
            }
            else
            {
                    cnn.Close();
                    return false; // kaydedilemez.
            }
        }
        catch (Exception)
        {

            throw;
        }

        }
        return false;
    } // Tabloda Musteri kontrolu
    public static void SozlesmeSil(int gorusmeID , int sozlesmeID , string daireKodu , int userID )
    {
        DBIslem.DtGetir("INSERT INTO TBL_DEL (dsID , dsSozlesme_Tarih ,dsTarih , dsUserID) SELECT sID, sSOZLESME_TARIH, Convert(nvarchar(50), GETDATE()), " + userID + " FROM TBL_SOZLESME where sID =" + sozlesmeID + " ");
        DBIslem.DtGetir("DELETE FROM TBL_SOZLESME WHERE sID =" + sozlesmeID + " ");
        DBIslem.DtGetir("DELETE FROM TBL_GECICI WHERE gID = " + gorusmeID + " ");
        DBIslem.DtGetir("UPDATE TBL_FIYAT_LISTE set fDURUM = 0 WHERE fTIP = '" + daireKodu + "'");
        DBIslem.DtGetir("DELETE FROM TBL_GORUSME WHERE gID = " + gorusmeID + " ");
    }
    //public static void SayidanYaziUpdate(string sayi)
    //{
    //    SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["Baglan_DB"].ConnectionString);
        
    //    try
    //    {
            
    //        cnn.Open();
            
    //             string yazi = yaziya(Convert.ToDecimal(sayi));
    //             string tutar = Convert.ToString(sayi);
    //             SqlCommand updateCmd = new SqlCommand("update TBL_GECICI set TUTAR_YAZIYLA='" + yazi + "' where TUTAR = '" + tutar + "'", cnn);
    //             cnn.Close();


    //    }
    //    catch (Exception)
    //    {

    //        throw;
    //    }
       
    //}
}
