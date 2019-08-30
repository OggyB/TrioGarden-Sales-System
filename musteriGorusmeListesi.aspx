<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="musteriGorusmeListesi.aspx.cs" Inherits="musteriGorusmeListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="popup-nw">
        <div class="popup1">
            <button type="button" class="closeIcon">
                <span class="closeIconx">x</span>
            </button>
            <div class="popup-card">
                <div class="popup-card1">
                    <div class="popup-c-header">
                        <h3 class="popup-c-header-h3">Not</h3>
                    </div>
                    <div class="popup-c-body">
                        aaaaaaaaaaaa 
                    </div>
                    <div class="popup-c-footer d-flex justify-content-end">
                        <button type="button" id="closeBtn" class="btn btn-secondary btn-g-box">İptal</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
     <main>
        <div class="p-3">

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Görüşme Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table id="mytrtable" class="table table-bordered">
                        <thead class="theader-text">
                            <tr>
                                <th>
                                Ad
                            </th>
                            <th>
                                Soyad
                            </th>
                           <%-- <th>
                                Email
                            </th>--%>
                            <th>
                                Telefon Numarası
                            </th>
                            <th>
                                İlk Görüşme
                            </th>
                            <th>
                                Randevu
                            </th>
                            <th>
                                Konut
                            </th>
                            <th>
                                Liste Fiyatı
                            </th>
                            <th>
                                Verilen Teklif
                            </th>
                                <th>Indirim Oranı</th>
                                <th>Not</th>
                            <th>
                                Sözleşme Yap
                            </th>
                            </tr>
                        </thead>
                        <tbody>
                        <asp:Repeater ID="RPT_GORUSME_LISTE" runat="server" OnItemDataBound="RPT_GORUSME_LISTE_ItemDataBound">
                <ItemTemplate>
                                    <tr>
                  <td><%#Eval("mAD") %></td>
                   <td><%#Eval("mSOYAD") %></td>
                 <%--   <td><%#Eval("mMAIL") %></td>--%>
                     <td><%#Eval("mTELEFON") %></td>
                                         <td><%#Eval("gGORUSME_TARIHI") %></td>
                                         <td><%#Eval("gGORUSME_TARIHI2") %></td>
                                         <td><%#Eval("fTIP") %></td>
                                        <td><%#Eval("fTOPLAMFIYAT") %> TL</td>
                                         <td><%#Eval("gTEKLIF_UCRET") %> <%#Eval("gTEKLIF_PARA_BIRIMI") %></td>
                                        <td><%# "%" +   -1 *Convert.ToInt32(((  Convert.ToDouble(Eval("gTEKLIF_UCRET")) - Convert.ToDouble(Eval("fTOPLAMFIYAT"))) ) / Convert.ToDouble(Eval("fTOPLAMFIYAT")) * 100) %></td>
                                        <td><button type="button" class="openCard btn-sm btn-purple">Not</button></td>

              
                                       <td><a href="musteriSozlesme.aspx?gID=<%#Eval("gID") %>"><asp:Image ID="Image3" runat="server" ImageUrl="~/img/icons/sozlesme-purple.png" Height="35" AlternateText="Sözleşme"/></a></td>
                                <%--<td>
                                    <a href="#">
                                        <i class="fa fa-file-signature fa-2x td-contract"></i>
                                    </a>
                                </td>--%>
                            </tr>
                </ItemTemplate>
            </asp:Repeater>

                        </tbody>
                    </table>
                </div>
            </div>

            

            

        </div>
    </main>

</asp:Content>

