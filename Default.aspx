<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<iframe src="https://www.Google.com/calendar/embed?src=<%=GetCalendarID()%>&ctz=Europe%2FMoscow" style="border: 0" width="800"height="600" frameborder="0" scrolling="no"></iframe>--%>

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
            <%--<div class="col-md-12 bgc-1 p-5 text-center">
                <h2 class="text-light fw-600">Nasıl yardımcı olabilirim?</h2>
                <div class="col-md-8 ml-auto mr-auto pt-3">
                    <div class="select_mate" data-mate-select="active">
                        <select name="" onchange="" onclick="return false;" id="">
                            <option value="">Seçiniz.... </option>
                            <option value="1">asdasdas </option>
                            <option value="2">adsadasdsad</option>
                            <option value="3">adsadsadsa</option>
                        </select>
                        <p class="selecionado_opcion" onclick="open_select(this)"></p>
                        <span onclick="open_select(this)" class="icon_select_mate">
                            <svg fill="#000000" height="24" viewBox="0 0 24 24" width="24">
                                <path d="M7.41 7.84L12 12.42l4.59-4.58L18 9.25l-6 6-6-6z" />
                                <path d="M0-.75h24v24H0z" fill="none" />
                            </svg>
                        </span>
                        <div class="cont_list_select_mate">
                            <ul class="cont_select_int"> </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-8 mt-95 d-flex justify-content-center ml-auto mr-auto">
                    <a href="#" class="nav-link aText1 nav-link-padding">#Sözleşme</a>
                    <a href="#" class="nav-link aText1 nav-link-padding">#Müşteri</a>
                    <a href="#" class="nav-link aText1 nav-link-padding">#Randevu talep</a>
                    <a href="#" class="nav-link aText1 nav-link-padding">#Görüşme</a>
                    <a href="#" class="nav-link aText1 nav-link-padding">#Raporlar</a>
                </div>
            </div>--%>

            <div class="mt-4 w-100 pt-4 bgc-4">
                <h5 class="pl-3 pt-1 pb-1 bgc-4-h5">İstatistikler
                </h5>
                <div class="card-body d-flex">
                    <%--<div class="col-lg-3">
                        <p class="text-primary d-flex align-items-center mb-5">
                            <i class="fas fa-bolt pr-2"></i> Sayfa Görünümleri</p>
                        <h1 style="font-weight: 700" class="mb-0">150,286</h1>
                        <p style="font-size:11px;font-weight: 500" class="mb-5">Geçen ay Aralık ayındaki sayfa görüntüleme sayısı 2018</p>
                        <p style="color:#888888;font-size: 13px;" class="d-flex align-items-center">
                            <img class="pr-2" src="img/icons/clock.png" height="16" alt=""/>Haziran ayı verileri
                        </p>
                        <p style="color:#888888;font-size: 13px;" class="d-flex align-items-center">
                            <img class="pr-2" src="img/icons/clock.png" height="16" alt=""/>Son güncelleme tarihi: 26.06.2018
                        </p>
                    </div>--%>

                    <div class="col-12">
                        <div class="row">
                            <div class="col-4 text-center">
                                <div class="mb-3 ml-auto mr-auto p-3 d-flex align-items-center justify-content-center bgc-4-kirmizi">
                                    <i class="fas fa-user fa-3x text-white"></i>
                                </div>
                                <h3 style="color: #fe413b !important;">
                                    <asp:Label ID="lblGorusmeToplam" runat="server" Text=""></asp:Label></h3>
                                <p style="font-weight: 500; font-size: 14px" class="text-uppercase">Görüşmeler</p>
                            </div>
                            <div class="col-4 text-center">
                                <div class="mb-3 ml-auto mr-auto p-3 d-flex align-items-center justify-content-center bgc-4-sari">
                                    <i class="fas fa-chart-line fa-3x text-white"></i>
                                </div>
                                <h3 style="color: #fab63f !important;">
                                    <asp:Label ID="lblSatisToplam" runat="server" Text=""></asp:Label></h3>
                                <p style="font-weight: 500; font-size: 14px" class="text-uppercase">Satışlar</p>
                            </div>
                            <div class="col-4 text-center">
                                <div class="mb-3 ml-auto mr-auto p-3 d-flex align-items-center justify-content-center bgc-4-mor">
                                    <i class="fas fa-users fa-3x text-white"></i>
                                </div>
                                <h3 style="color: #7a86ff !important;">
                                    <asp:Label ID="lblMusteriToplam" runat="server" Text=""></asp:Label></h3>
                                <p style="font-weight: 500; font-size: 14px" class="text-uppercase">Müşteriler</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Görüşme Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table id="mytrtable" class="table table-bordered">
                        <thead class="theader-text">
                            <tr>
                                <th>Ad
                                </th>
                                <th>Soyad
                                </th>
                                <%-- <th>
                                Email
                            </th>--%>
                                <th>Telefon Numarası
                                </th>
                                <th>İlk Görüşme
                                </th>
                                <th>Randevu
                                </th>
                                <th>Konut
                                </th>
                                <th>Liste Fiyatı
                                </th>
                                <th>Verilen Teklif
                                </th>
                                <th> Indirim Oranı</th>
                                <th>Not</th>
                                <th>Sözleşme Yap
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RPT_GORUSME_LISTE" runat="server" OnItemDataBound="RPT_SOZLEME_LISTE_ItemDataBound">
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
                                        <td>
                                            <%--<button type="button" class="openCard btn-sm btn-purple">Not</button>--%> <%# Eval("gNOT") %></td>
                                        <td><a href="musteriSozlesme.aspx?gID=<%#Eval("gID") %>">
                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/img/icons/sozlesme-purple.png" Height="35" AlternateText="Sözleşme" /></a></td>

                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>


                        </tbody>
                    </table>
                </div>
            </div>

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Sözleşme Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table id="mytrtable2" class="table table-bordered">
                        <thead class="theader-text">
                            <tr>
                                <th>Ad
                                </th>
                                <th>Soyad
                                </th>

                                <th>Telefon Numarası
                                </th>
                                <th>Verilen Teklif
                                </th>
                                <th>Peşinat
                                </th>
                                <th>Taksit
                                </th>
                                <th>
                                    Kalan Taksit
                                </th>
                                <th>
                                    Kalan Tutar
                                </th>
                                <th>Sözleşme Tarihi
                                </th>
                                <th>Satış Temsilcisi</th>
                                <th>Detay
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Repeater ID="RPT_SOZLEME_LISTE" runat="server" >
                                <ItemTemplate>
                                    <tr>
                                        <td><%#Eval("mAD") %></td>
                                        <td><%#Eval("mSOYAD") %></td>

                                        <td><%#Eval("mTELEFON") %></td>
                                        <td><%#Eval("gTEKLIF_UCRET") %> <%#Eval("gTEKLIF_PARA_BIRIMI") %></td>
                                        <td><%#Eval("sSATIS_PESINAT") %> <%#Eval("gTEKLIF_PARA_BIRIMI")%></td>
                                        <td><%#Eval("sTAKSIT_SAYISI") %> </td>
                                        <td><%# Eval("Kalan_Taksit")%></td>
                                      <td>  
                                        <%# String.Format("{0:c}",Convert.ToDecimal(Eval("gTEKLIF_UCRET")) - ( ((Convert.ToDecimal(Eval("TOPLAM_TAHSIL")).Equals(null)) ? 0 : Convert.ToDecimal(Eval("TOPLAM_TAHSIL"))) + Convert.ToDecimal(Eval("sSATIS_PESINAT")) ) ) %>
                                      </td>


                                                 




                                        <td><%#Eval("sSOZLESME_TARIH") %></td>
                                        <td><%#Eval("kKULLANICIADI") %></td>





                                        <td><%--<a href="#"><i class="fa fa-file-signature fa-2x td-contract"></i></a>--%>
                                            <a href="musteriSozlesme.aspx?sID=<%#Eval("sID") %>">
                                                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/icons/sozlesme-purple.png" Height="35" AlternateText="Sözleşme"/></a>
                                        </td>

                                    </tr>
                                </ItemTemplate>
                            </asp:Repeater>

                        </tbody>
                    </table>
                </div>
            </div>

            <%--   <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Diğer</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table  class="table table-bordered">
                        <thead class="theader-text">
                            
                        </thead>
                        <tbody class="tbody-text">
                            
                            

                        </tbody>
                    </table>
                </div>
            </div>--%>
            <div class="mt-4 pt-4 pb-1 table-bgc">
            <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Son Ayın Borç Listesi</h5>
            <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

            <div class="m-4 pt-2">
                <table id="mytrtable3" class="table table-bordered">
                    <thead class="theader-text">
                        <tr>
                            <th>Ad Soyad</th>
                            <th>Taksit Tutar</th>
                            <th>Tarih</th>
                            <th>Kalan Gün</th>
                            <th>Tahsilat</th>

                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RPT_GECIKEN" runat="server" OnItemDataBound="RPT_GECİKEN_ItemDataBound" OnItemCommand="RPT_GECİKEN_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("AD_SOYAD") %></td>
                                    <td><%# Eval("TUTAR") + " " + Eval("PARA_BIRIMI") %></td>
                                    <td><%# Eval("TARIH") %></td>
                                    <td><%# Eval("KALAN_GUN") %></td>
                                    <td id="tahsilat_kolon" runat="server">
                                        <asp:LinkButton CssClass="btn-success btn pl-3 pr-3 pt-2 pb-2" ID="btnTahsilat" CommandArgument='<%# Eval("TARIH") +","+ Eval("AD_SOYAD") %>' CommandName="Tahsilat" runat="server">Tahsilat</asp:LinkButton>

                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                    <tbody>
                        <asp:Repeater runat="server" ID="RPT_ODEMELISTESI" OnItemDataBound="RPT_GECİKEN_ItemDataBound" OnItemCommand="RPT_GECİKEN_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("AD_SOYAD") %></td>
                                    <td><%# Eval("TUTAR") + " " + Eval("PARA_BIRIMI") %></td>
                                    <td><%# Eval("TARIH") %></td>
                                    <td><%# Eval("KALAN_GUN") %></td>
                                    <td id="tahsilat_kolon" runat="server">
                                        <asp:LinkButton CssClass="btn-success btn pl-3 pr-3 pt-2 pb-2" ID="btnTahsilat" CommandArgument='<%# Eval("TARIH") +","+ Eval("AD_SOYAD") %>' CommandName="Tahsilat" runat="server">Tahsilat</asp:LinkButton>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
            </div>

        </div>
        <div class="mt-4 mb-4 pt-4 pb-1 table-bgc">
            <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Ödenen Senet Listesi</h5>
            <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

            <div class="m-4 pt-2">
                <table id="mytrtable4" class="table table-bordered">
                    <thead class="theader-text">
                        <tr>
                            <th>Senet Sırası</th>
                            <th>Ad Soyad</th>
                            <th>Taksit Tarihi</th>
                            <th>Tahsilat Tarihi</th>
                            <th>Tutar</th>
                            


                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RPT_TAHSILAT_LISTESI" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("NO") %></td>
                                    <td><%# Eval("AD_SOYAD") %></td>
                                    <td><%# Eval("TARIH") %></td>
                                    <td><%# Eval("tTARIH") %></td>
                                    <td><%# Eval("TUTAR") + " " + Eval("PARA_BIRIMI") %></td>
                                    

                                </tr>
                              
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>

        </div>
        </div>
        


    </main>
    <script>
        function NotGoster() {
            $.ajax({
                type: "POST",
                url: "Default.aspx/NotMethod",
                data: '{name: "' + $("<%#Eval("gID")%>") + '" }',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: OnSuccess,
                failure: function (response) {
                    alert(response.d);
                }
            });
        }
        function OnSuccess(response) {
            alert(response.d);
        }
    </script>

    <style>
    </style>

</asp:Content>

