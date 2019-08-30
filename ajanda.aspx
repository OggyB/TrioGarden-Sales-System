<%@ Page Title="" Language="C#" MasterPageFile="/MasterPage.master" AutoEventWireup="true" CodeFile="ajanda.aspx.cs" Inherits="ajanda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <main>

        <%--<div class="p-3 d-flex align-items-center">
            <p style="font-size: 21px;font-weight: 500" class="mb-0 pr-3">Ajanda</p>
            <p style="border-left: 1px solid #d8d8d8;color: rgba(0, 0, 0, .5);font-weight: 500;" class="mb-0 pl-3">Anasayfa</p>
            <p style="color: rgba(0, 0, 0, .5);font-weight: 500" class="mb-0 pl-2 pr-2">></p>
            <p style="color: rgba(0, 0, 0, .7);font-weight: 500" class="mb-0">Ajanda</p>
        </div>--%>
        
<%--        <div class="p-3">



            <div class="pl-0 pr-0 col-md-10 bgc-6 pt-4">
                <h5 class="bgc-6-h5 pl-4 mb-3">Ajanda</h5>

                <div class="p-4" id='calendar'></div>

            </div>--%>

        <asp:Calendar runat="server" ID="CL_TAKVIM" DayNameFormat="Full" SelectionMode="DayWeekMonth"
Font-Name="Verdana;Arial" Font-Size="12px" Height="500px" Width="1200px" TodayDayStyle-Font-Bold="True"
DayHeaderStyle-Font-Bold="True" OtherMonthDayStyle-ForeColor="gray" TitleStyle-BackColor="#006633"
TitleStyle-ForeColor="white" TitleStyle-Font-Bold="True" SelectedDayStyle-BackColor="#ffcc66"
SelectedDayStyle-Font-Bold="True" NextPrevFormat="FullMonth" NextPrevStyle-ForeColor="white"
NextPrevStyle-Font-Size="10px" SelectorStyle-BackColor="#ffcccc" SelectorStyle-ForeColor="navy"
SelectorStyle-Font-Size="9px" SelectWeekText="" SelectMonthText="" OnSelectionChanged="CL_TAKVIM_SelectionChanged" OnDayRender="CL_TAKVIM_DayRender">

        </asp:Calendar>
        <%--<ul>
            <li><asp:Label Text="09:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="10:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="11:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="12:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="13:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="14:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="15:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="16:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="17:00" runat="server" /><textarea runat="server"></textarea></li>
            <li><asp:Label Text="18:00" runat="server" /><textarea runat="server"></textarea></li>
        </ul>--%>
        <asp:Repeater runat="server" ID="RPT_TIME_SHEET" OnItemCommand="RPT_TIME_SHEET_ItemCommand" OnItemDataBound="RPT_TIME_SHEET_ItemDataBound">
            <ItemTemplate>
                <ul>
                    <li>
                        <asp:Label Text='<%# DataBinder.Eval(Container.DataItem, "Time") %>' ID="lblTime" runat="server" /><asp:TextBox runat="server"  ID="areaNot" TextMode="MultiLine" /><asp:LinkButton Text="Kaydet" runat="server" CommandArgument='<%# Eval("Time") %>' CommandName="Kaydet" CssClass="btn-success" /> <asp:Button Text="Sil" runat="server" CommandName="Sil" ID="btnSil" CommandArgument='<%# Eval("Time") %>' CssClass="btn-danger" /> </li>
                </ul> 
            </ItemTemplate>
        </asp:Repeater>
        <asp:Repeater ID="RPT_NOTLISTESI" runat="server">
            <ItemTemplate>
                 <ul>
                    <li>
                        <asp:Label Text='<%# Eval("kAD") %>' ID="lblUserName" runat="server" /> <asp:Label Text='<%# Eval("Time") %>' ID="lblTime" runat="server" /> <asp:Label Text='<%# Eval("Note") %>' runat="server" ID="lblNot" /> <%# Eval("Tarih") %>
                    </li>
                </ul>
            </ItemTemplate>
        </asp:Repeater>
       

    </main>


</asp:Content>

