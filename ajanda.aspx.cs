using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class ajanda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        CL_TAKVIM.SelectedDate = DateTime.Today.Date;
        
        
            if (Convert.ToInt32(Session["kulid"]) == 12)
            {
             RPT_TIME_SHEET.DataBind();
                RPT_NOTLISTESI.DataSource = DBIslem.DtGetir("select * FROM TBL_CALENDER c LEFT JOIN TBL_TIMESHEET ts ON c.TimeSheetID = ts.ID  LEFT JOIN TBL_KULLANICI k on k.kID = c.userID ");
                RPT_NOTLISTESI.DataBind();
            }
            else
            {
                  RPT_TIME_SHEET.DataSource = DBIslem.DtGetir("SELECT Time From TBL_TIMESHEET");
                  RPT_TIME_SHEET.DataBind();  
            }
            
        }
        
        
        CL_TAKVIM.SelectedDayStyle.BackColor = System.Drawing.Color.Olive; // Seçilen
        CL_TAKVIM.DataBind();
    }


    protected void CL_TAKVIM_SelectionChanged(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) == 12)
        {
            RPT_TIME_SHEET.DataBind();
            RPT_NOTLISTESI.DataSource = DBIslem.DtGetir("select * FROM TBL_CALENDER c LEFT JOIN TBL_TIMESHEET ts ON c.TimeSheetID = ts.ID  LEFT JOIN TBL_KULLANICI k on k.kID = c.userID ");
            RPT_NOTLISTESI.DataBind();
            return;
        }
        RPT_TIME_SHEET.DataSource = DBIslem.DtGetir("SELECT Time From TBL_TIMESHEET");
        RPT_TIME_SHEET.DataBind();
    }

    protected void CL_TAKVIM_DayRender(object sender, DayRenderEventArgs e)
    {
        if (Convert.ToInt32(Session["kulid"]) == 12)
        {
            DataTable dt = DBIslem.DtGetir("SELECT Tarih , TimeSheetID FROM TBL_CALENDER ");
            if (dt.Rows.Count == 0)
            {
                return;
            }
            else 
            {
                foreach (DataRow item in dt.Rows)
                {
                    if (item[0].ToString() == e.Day.Date.ToShortDateString())
                    {
                                e.Cell.BackColor = System.Drawing.Color.Red;
                    }
                    
                }
                
            }
        }
        else
        {
            string tarih = e.Day.Date.ToShortDateString();
        if (e.Day.IsToday)
        {
            e.Cell.BackColor = System.Drawing.Color.Green;
        }
        if (e.Day.IsWeekend)
        {
            e.Cell.BackColor = System.Drawing.Color.PowderBlue;
        }
        DataTable dt = DBIslem.DtGetir("SELECT Tarih , TimeSheetID FROM TBL_CALENDER WHERE Tarih = '" + e.Day.Date.ToShortDateString() + "' and userID = "+Convert.ToInt32(Session["kulid"])+"");
       // string tableTarih = dt.Rows[0][0].ToString();
        if (dt.Rows.Count == 0 )
        {
            
            return;
        }
        else if (dt.Rows[0][0].ToString() == e.Day.Date.ToShortDateString())
        {
            e.Cell.BackColor = System.Drawing.Color.Red;
            //foreach (DataRow item in dt.Rows)
            //{
            //    DataTable saatler = DBIslem.DtGetir("SELECT Time FROM TBL_TIMESHEET WHERE ID = "+Convert.ToInt32(item[1])+"");
            //    foreach (DataRow eklenecekSaat in saatler.Rows)
            //    {
                    
            //    }
                
            //}
           
        }
        }
        
    }

    protected void RPT_TIME_SHEET_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
            string Tarih = CL_TAKVIM.SelectedDate.ToShortDateString();
            int timeid = 0;
            string not = (e.Item.FindControl("areaNot") as TextBox).Text;
            
        if (e.CommandName == "Kaydet")
        {
           
            
            string Saat = e.CommandArgument.ToString();
            DataTable Saatid = DBIslem.DtGetir("SELECT ID FROM TBL_TIMESHEET where Time = '" + Saat + "'");
            foreach (DataRow item in Saatid.Rows)
            {
                timeid = Convert.ToInt32(item[0]);
                break;
            }

            DBIslem.DtGetir("INSERT INTO TBL_CALENDER (Tarih , TimeSheetID, userID, Note) VALUES('"+Tarih+"',"+timeid+","+Convert.ToInt32(Session["kulid"])+",'"+not+"' ) ");
            
            
        }
        if (e.CommandName == "Sil")
        {
            string Saat = e.CommandArgument.ToString();
            DataTable Saatid = DBIslem.DtGetir("SELECT ID FROM TBL_TIMESHEET where Time = '" + Saat + "'");
            foreach (DataRow item in Saatid.Rows)
            {
                timeid = Convert.ToInt32(item[0]);
                break;
            }
            DBIslem.DtGetir("DELETE FROM TBL_CALENDER WHERE Tarih = '" + Tarih + "' and TimeSheetID = "+timeid+"");
            (e.Item.FindControl("areaNot") as TextBox).Text = "";

        }
    }

   

    protected void RPT_TIME_SHEET_ItemDataBound(object sender, RepeaterItemEventArgs e ) 
    {

        
        string alinacakNot = "";
        int alinacakID = 0;
        string alinacakTime = "";
        string alinacakTarih = CL_TAKVIM.SelectedDate.ToShortDateString();
        string time = (e.Item.FindControl("lblTime") as Label).Text;
        DataTable dt = DBIslem.DtGetir("select ID , Time from TBL_TIMESHEET where Time = '"+time+"'");
        foreach (DataRow item in dt.Rows)
        {
            alinacakID = Convert.ToInt32(item[0]);
            alinacakTime = item[1].ToString();
        }
        dt = DBIslem.DtGetir("Select Tarih , Note From TBL_CALENDER where TimeSheetID = "+alinacakID+" and Tarih = '"+alinacakTarih+"' and userID = "+Convert.ToInt32(Session["kulid"])+" ");
        foreach (DataRow item in dt.Rows)
        {
            alinacakTarih = item[0].ToString();
            alinacakNot = item[1].ToString();
        }
        if (dt.Rows.Count != 0)
        {
        if (CL_TAKVIM.SelectedDate.Date.ToShortDateString() == alinacakTarih && time == alinacakTime.ToString())
        {
                
                ((TextBox)e.Item.FindControl("areaNot")).Text = alinacakNot;
                (e.Item.FindControl("areaNot") as TextBox).ReadOnly = true; 
        }
        }
        
        else
        {
            ((TextBox)e.Item.FindControl("areaNot")).Text = "";
            (e.Item.FindControl("areaNot") as TextBox).ReadOnly = false;

        }
        string newtime = (e.Item.FindControl("lblTime") as Label).Text.Substring(0, (e.Item.FindControl("lblTime") as Label).Text.Length - 3);
        (e.Item.FindControl("lblTime") as Label).Text = newtime;
    }

}