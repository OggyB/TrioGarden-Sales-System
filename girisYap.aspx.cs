using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class girisYap : System.Web.UI.Page
{
    public string MD5Olustur(string input)
    {
        MD5 md5Hasher = MD5.Create();
        byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(input));
        StringBuilder sBuilder = new StringBuilder();
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }
        return sBuilder.ToString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Session.RemoveAll();
    }
    protected void btnGirisYap_Click(object sender, EventArgs e)
    {
        string kad, ksifre;
        kad = txtKullanici.Text;
        ksifre = txtSifre.Text;
        //
        string sifrem = MD5Olustur(txtSifre.Text);
        //
        //DataTable dt = DBIslem.DtGetir("SELECT * FROM TBL_KULLANICI WHERE kKULLANICIADI='" + kad + "' AND kSIFRE='" + sifrem + "'");
        
        
        //kid = dt.Rows[0]["kID"].ToString();
        if (DBIslem.LoginControl(sifrem ,kad) == true)
        {

            Session.Add("kullanici", kad);
            Session.Add("kulid", DBIslem.kulidGetir(kad, sifrem));
            
            DateTime bugun = DateTime.Now;
            int yil = bugun.Year;
            
            
           // Session["bildirimler"] = bildirimtable;
            Response.Redirect("Default.aspx");

        }
        else
        {
            lblDurum.Text = "Kullanıcı adı ya da şifre hatalı.";
        }
    }
}