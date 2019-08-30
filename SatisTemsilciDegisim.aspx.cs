using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class SatisTemsilciDegisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {            

        if (!Convert.ToInt32(Session["kulid"]).Equals(12))
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            
            
                RPT_SATIS_GUNCELLEME.DataSource = DBIslem.DtGetir("select * FROM TBL_MUSTERI LEFT JOIN TBL_GORUSME on TBL_MUSTERI.mID = TBL_GORUSME.gMUSTERI_ID left outer JOIN TBL_SOZLESME s on s.gID = TBL_GORUSME.gID  left OUTER join TBL_KULLANICI on TBL_MUSTERI.mKULLANICI_ID = TBL_KULLANICI.kID where mID = " + Convert.ToInt32(Session["MusteriDegisimID"])+" ");
                RPT_SATIS_GUNCELLEME.DataBind();
            
            if (!IsPostBack)
            {
            DDL_Satisci.DataSource = DBIslem.DtGetir("select kKULLANICIADI,kID from TBL_KULLANICI");
            DDL_Satisci.DataTextField = "kKULLANICIADI";
            DDL_Satisci.DataValueField = "kID";
            DDL_Satisci.DataBind();
            }
            
            
        }
    }



    protected void RPT_SATIS_GUNCELLEME_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {


        //DropDownList SatisciDDL = (DropDownList)e.Item.FindControl("DDL_Satisci");
        ////DataRowView dr = (DataRowView)e.Item.DataItem;
        ////string strcarrierName = Convert.ToString(dr["kKULLANICIADI"]);
        //SatisciDDL.DataSource = DBIslem.DtGetir("select kKULLANICIADI,kID from TBL_KULLANICI");
        //SatisciDDL.DataTextField = "kKULLANICIADI";
        //SatisciDDL.DataValueField = "kID";
         
        //SatisciDDL.DataBind();
        //SatisciDDL.Items.Insert(0, new ListItem(strcarrierName, "0"));




    }

    protected void RPT_SATIS_GUNCELLEME_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        string[] commandArgs = e.CommandArgument.ToString().Split(new char[] { ',' });
        int mID = Convert.ToInt32(commandArgs[0]);
        string mSOYAD = commandArgs[1];
        int gID = Convert.ToInt32(commandArgs[2]);
        int sID = Convert.ToInt32(commandArgs[3]);
        if (e.CommandName.Equals("TemsilciGuncelle"))
        {
            
           
            
            if (Convert.ToInt32(DDL_Satisci.SelectedValue) != 0)
            {
                DBIslem.DtGetir("UPDATE TBL_MUSTERI set mKULLANICI_ID = "+Convert.ToInt32(DDL_Satisci.SelectedItem.Value)+" WHERE mID =  " + mID + " ");
                DBIslem.DtGetir("UPDATE TBL_GORUSME set gKULLANICI_ID = " + Convert.ToInt32(DDL_Satisci.SelectedItem.Value) + "WHERE gID = " + gID + " ");
                DBIslem.DtGetir("UPDATE TBL_SOZLESME set sKULID = " + Convert.ToInt32(DDL_Satisci.SelectedItem.Value) + "WHERE sID =" + sID + " ");
                Response.Redirect("musteriKayit.aspx");
            }
           
        }
    }

  
}