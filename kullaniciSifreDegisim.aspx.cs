using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class kullaniciSifreDegisim : System.Web.UI.Page
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
        if (Session["kullanici"] == null)
        {
            Response.Redirect("girisYap.aspx");
        }
    }

    protected void btnPwdDegis_Click(object sender, EventArgs e)
    {

        int kullaniciid = Convert.ToInt32(Session["kulid"]);
        string eskipwd = DBIslem.PwdGetir(kullaniciid);
        string txteski = MD5Olustur(txtEskipwd.Text);
        string yeni1 = MD5Olustur(txtYenipwd.Text);
        string yeni2 = MD5Olustur(txtYeniTekrar.Text);
        if (eskipwd == txteski && yeni1 == yeni2)
        {
            DBIslem.PwdUpdate(MD5Olustur(txtYenipwd.Text), kullaniciid);
            Session.RemoveAll();
            lblyanlispwd.Text = "";
            Response.Redirect("girisYap.aspx");
        }
        else
        {
            lblyanlispwd.Text = "Yanlış giriş.";

            
        }
    }
}