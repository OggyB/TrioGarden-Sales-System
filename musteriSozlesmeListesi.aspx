<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="musteriSozlesmeListesi.aspx.cs" Inherits="musteriSozlesmeListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <main>
        <div class="p-3">

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Sözleşme Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table id="mytrtable2" class="table table-bordered">
                        <thead class="theader-text">
                            <tr>
                                <th>
                                Ad
                            </th>
                            <th>
                                Soyad
                            </th>
                         
                            <th>
                                Telefon Numarası
                            </th>
                            <th>
                                Verilen Teklif
                            </th>
                           <th>
                                Peşinat
                            </th>
                                 <th>
                                Taksit
                            </th>
                                <th>Kalan Taksit</th>
                                <th>Kalan Tutar</th>
                                <th>
                                Sözleşme Tarihi
                            </th>
                                
                                <th>
Detay
                                </th>
                                
                            </tr>
                        </thead>
                        <tbody>
                        <asp:Repeater ID="RPT_SOZLESME_LISTE" runat="server" OnItemDataBound="RPT_SOZLESME_LISTE_ItemDataBound" OnItemCommand="RPT_SOZLESME_LISTE_ItemCommand">
                <ItemTemplate>
                                    <tr>
                  <td><%#Eval("mAD") %></td>
                   <td><%#Eval("mSOYAD") %></td>
                 
                     <td><%#Eval("mTELEFON") %></td>
                                         <td><%#Eval("gTEKLIF_UCRET") %> <%#Eval("gTEKLIF_PARA_BIRIMI") %></td>
                                          <td><%#Eval("sSATIS_PESINAT") %> <%#Eval("gTEKLIF_PARA_BIRIMI") %></td>
                                          <td><%#Eval("sTAKSIT_SAYISI") %> </td>
                                        <td><%# Eval("Kalan_Taksit")%></td>
                                        <td>  
                                        <%# String.Format("{0:c}",Convert.ToDecimal(Eval("gTEKLIF_UCRET")) - ( ((Convert.ToDecimal(Eval("TOPLAM_TAHSIL")).Equals(null)) ? 0 : Convert.ToDecimal(Eval("TOPLAM_TAHSIL"))) + Convert.ToDecimal(Eval("sSATIS_PESINAT")) ) ).Substring(0 , String.Format("{0:c}",Convert.ToDecimal(Eval("gTEKLIF_UCRET")) - ( ((Convert.ToDecimal(Eval("TOPLAM_TAHSIL")).Equals(null)) ? 0 : Convert.ToDecimal(Eval("TOPLAM_TAHSIL"))) + Convert.ToDecimal(Eval("sSATIS_PESINAT")) ) ).Length-2) %> <%# Eval("gTEKLIF_PARA_BIRIMI") %>
                                      </td>
                                         <td><%#Eval("sSOZLESME_TARIH") %></td>
                                       
                                   
                                      

              
                                         <td> <%--<a href="#"><i class="fa fa-file-signature fa-2x td-contract"></i></a>--%>
                                             <a href="musteriSozlesme.aspx?sID=<%#Eval("sID") %>"><img src="img/icons/sozlesme-purple.png" height="35" alt="Detayları getir" runat="server" id="sozlesmelink"/></a>
                                         </td>
                                        <td>
                                        <asp:LinkButton CssClass="btn-danger btn pl-3 pr-3 pt-2 pb-2" ID="btnSozlesmeSil" CommandArgument='<%# Eval("sID") +","+ Eval("gID") %>' CommandName="sSilme" runat="server">SİL</asp:LinkButton>                                        </td>
<%--                                        <td>
                                        <asp:LinkButton CssClass="btn-warning btn pl-3 pr-3 pt-2 pb-2" ID="btnDuzenle" CommandArgument='<%# Eval("sID") +","+ Eval("gID") %>' CommandName="sDuzenle" runat="server">DÜZENLE</asp:LinkButton>
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

