<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="musteriGorusme.aspx.cs" Inherits="musteriGorusme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script src="js/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        //sayfa çalıştığında yapılan işlemler
        $(document).ready(function () {
        
        });
        //buton renkleri değiştir
        function ButonDurumGuncelle() {
            //$("#loaderGif1").show();
            //var Adet = ihtiyac_total_sayfa;//$("#ddKapak").val();
            //webmethod ile çalışacağımız için path bilgisini alıyoruz.
            var pagePath = window.location.pathname;
            //PageMethods.GetirUrunBilgi(UrunID, UrunID1);  sen mi yazdın bunu
            //ajax isteğimiz
            $.ajax({
                type: "POST", //GET veya POST
                url: pagePath + "/ButonDurumGuncelle", //hangi fonksiyonu çağıracaz.default.aspx/ilchange
                contentType: "application/json; charset=utf-8",
                data: '{bID:' + bID + '}', //gönderdiğimiz parametreler
                //data: "{Oy:" + Oy + ", Marka_ID:" + Marka_ID + "}",
                dataType: "json",
                success: onSucceededNumaratorCh, //istek başarılı olduğuda çalışacak fonksiyon
                error: onFailedNumaratorCh //istek hatalı olduğunda çalışacak fonksiyon
            });
            return false;
        }
        //istek başarılı olduğunda çalışacak fonksiyon
        function onSucceededNumaratorCh(result) {
            //ilçenin yanında ki yükleniyor gif ini hide yapıyoruz.
            $("#loaderGif1").hide();
            $("#ContentPlaceHolder1_a2a1_6").text(result.d);
            //alt_toplam_hesapla();
        }
        //istek hatalı olduğunda çalışacak fonksiyon
        function onFailedNumaratorCh(result) {
            alert(result.d);
            //$("#loaderGif1").hide();
        }
          </script>
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
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Daire Seçim</h5>
                 <h6 class="pl-3 pt-1 pb-1 table-bgc-h6">Bilgi : <a style="border-radius:3px;font-size:14px;" class="col bloked-kirmizi text-white pt-1 pb-1 pr-2 pl-2">Kırmızı</a> alanlar satışı gerçekleşen, <a style="border-radius:3px;font-size:14px;" class="col basarili-yesil text-white pt-1 pb-1 pl-2 pr-2">yeşil</a> alanlar ise üzerinde görüşme olan rezerve alanlardır.</h6>
                
                <div class="card-body mt-3">       
               <div class="row">

    <div class="col-md-5">
        <h4 class="text-black m-t-6">A BLOK</h4>
        <div class="scrollsss text-center">

            <div style="margin: 0;" class="row difBackColor">
         <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">1</div>
         <div style="padding: 0" class="col">
             <div style="margin: 0;" class="row">
                 <button type="button" id="a2a_1" class="tblTdss hvrss col" runat="server">3 - 2+1 / A2a</button>
                 <button type="button" id="a1a_1" class="tblTdss hvrss col" runat="server">4 - 1+1 / A1a</button>
                 <button type="button" id="a1bbL_1" class="tblTdss hvrss col" runat="server">5 - 1+1 / A1bbL</button>
                 <button type="button" id="a1bbR_1" class="tblTdss hvrss col" runat="server">6 - 1+1 / A1bbR</button>
                 <button type="button" id="a2c_1" class="tblTdss hvrss col" runat="server">7 - 2+1 / A2c</button>
             </div>
             <div style="margin: 0;" class="row">
                 <button type="button" id="a2a1_1" class="tblTdss hvrss col" runat="server">2 - 2+1 / A2a1</button>
                 <button type="button" id="a1a1L_1" class="tblTdss hvrss col" runat="server">1 - 1+1 / A1a1L</button>
                 <button type="button" class="tblTdss hvrsblock col"></button>
                 <button type="button" id="a1a1R_1" class="tblTdss hvrss col" runat="server">9 - 1+1 / A1a1R</button>
                 <button type="button" id="a2b1_1" class="tblTdss hvrss col" runat="server">8 - 2+1 / A2b1</button>
             </div>
         </div>
     </div>
     <div style="margin: 0;" class="row difBackColor2">
         <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">2</div>
         <div style="padding: 0;" class="col">
             <div style="margin: 0;" class="row">
                 <button type="button" id="a2a_2" class="tblTdss hvrss col" runat="server">12 - 2+1 / A2a</button>
                 <button type="button" id="a1a_2" class="tblTdss hvrss col" runat="server">13 - 1+1 / A1a</button>
                 <button type="button" id="a1bbL_2" class="tblTdss hvrss col" runat="server">14 - 1+1 / A1bbL</button>
                 <button type="button" id="a1bbR_2" class="tblTdss hvrss col" runat="server">15 - 1+1 / A1bbR</button>
                 <button type="button" id="a2c_2" class="tblTdss hvrss col" runat="server">16 - 2+1 / A2c</button>
             </div>
             <div style="margin: 0;" class="row">
                 <button type="button" id="a2a1_2" class="tblTdss hvrss col" runat="server">11 - 2+1 / A2a1</button>
                 <button type="button" id="a1a1L_2" class="tblTdss hvrss col" runat="server">10 - 1+1 / A1a1L</button>
                 <button type="button" class="tblTdss hvrsblock col"></button>
                 <button type="button" id="a1a1R_2" class="tblTdss hvrss col" runat="server">18 - 1+1 / A1a1R</button>
                 <button type="button" id="a2b1_2" class="tblTdss hvrss col" runat="server">17 - 2+1 / A2b1</button>
             </div>
         </div>
     </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">3</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_3" class="tblTdss hvrss col" runat="server">21 - 2+1 / A2a</button>
                        <button type="button" id="a1a_3" class="tblTdss hvrss col" runat="server">22 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_3" class="tblTdss hvrss col" runat="server">23 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_3" class="tblTdss hvrss col" runat="server">24 - +1 / A1bbR</button>
                        <button type="button" id="a2c_3" class="tblTdss hvrss col" runat="server">25 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_3" class="tblTdss hvrss col" runat="server">20 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_3" class="tblTdss hvrss col" runat="server">19 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_3" class="tblTdss hvrss col" runat="server">27 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_3" class="tblTdss hvrss col" runat="server">26 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">4</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_4" class="tblTdss hvrss col" runat="server">30 - 2+1 / A2a</button>
                        <button type="button" id="a1a_4" class="tblTdss hvrss col" runat="server">31 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_4" class="tblTdss hvrss col" runat="server">32 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_4" class="tblTdss hvrss col" runat="server">33 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_4" class="tblTdss hvrss col" runat="server">34 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_4" class="tblTdss hvrss col" runat="server">29 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_4" class="tblTdss hvrss col" runat="server">28 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_4" class="tblTdss hvrss col" runat="server">36 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_4" class="tblTdss hvrss col" runat="server">35 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">5</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_5" class="tblTdss hvrss col" runat="server">39 - 2+1 / A2a</button>
                        <button type="button" id="a1a_5" class="tblTdss hvrss col" runat="server">40 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_5" class="tblTdss hvrss col" runat="server">41 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_5" class="tblTdss hvrss col" runat="server">42 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_5" class="tblTdss hvrss col" runat="server">43 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_5" class="tblTdss hvrss col" runat="server">38 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_5" class="tblTdss hvrss col" runat="server">37 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_5" class="tblTdss hvrss col" runat="server">45 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_5" class="tblTdss hvrss col" runat="server">44 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">6</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_6" class="tblTdss hvrss col" runat="server">48 - 2+1 / A2a</button>
                        <button type="button" id="a1a_6" class="tblTdss hvrss col" runat="server">49 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_6" class="tblTdss hvrss col" runat="server">50 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_6" class="tblTdss hvrss col" runat="server">51 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_6" class="tblTdss hvrss col" runat="server">52 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_6" class="tblTdss hvrss col" runat="server">47 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_6" class="tblTdss hvrss col" runat="server">46 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_6" class="tblTdss hvrss col" runat="server">54 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_6" class="tblTdss hvrss col" runat="server">53 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">7</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_7" class="tblTdss hvrss col" runat="server">57 - 2+1 / A2a</button>
                        <button type="button" id="a1a_7" class="tblTdss hvrss col" runat="server">58 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_7" class="tblTdss hvrss col" runat="server">59 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_7" class="tblTdss hvrss col" runat="server">60 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_7" class="tblTdss hvrss col" runat="server">61 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_7" class="tblTdss hvrss col" runat="server">56 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_7" class="tblTdss hvrss col" runat="server">55 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_7" class="tblTdss hvrss col" runat="server">63 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_7" class="tblTdss hvrss col" runat="server">62 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">8</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_8" class="tblTdss hvrss col" runat="server">66 - 2+1 / A2a</button>
                        <button type="button" id="a1a_8" class="tblTdss hvrss col" runat="server">67 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_8" class="tblTdss hvrss col" runat="server">68 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_8" class="tblTdss hvrss col" runat="server">69 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_8" class="tblTdss hvrss col" runat="server">70 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_8" class="tblTdss hvrss col" runat="server">65 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_8" class="tblTdss hvrss col" runat="server">64 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_8" class="tblTdss hvrss col" runat="server">72 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_8" class="tblTdss hvrss col" runat="server">71 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">9</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_9" class="tblTdss hvrss col" runat="server">75 - 2+1 / A2a</button>
                        <button type="button" id="a1a_9" class="tblTdss hvrss col" runat="server">76 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_9" class="tblTdss hvrss col" runat="server">77 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_9" class="tblTdss hvrss col" runat="server">78 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_9" class="tblTdss hvrss col" runat="server">79 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_9" class="tblTdss hvrss col" runat="server">74 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_9" class="tblTdss hvrss col" runat="server">73 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_9" class="tblTdss hvrss col" runat="server">81 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_9" class="tblTdss hvrss col" runat="server">80 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">10</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_10" class="tblTdss hvrss col" runat="server">84 - 2+1 / A2a</button>
                        <button type="button" id="a1a_10" class="tblTdss hvrss col" runat="server">85 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_10" class="tblTdss hvrss col" runat="server">86 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_10" class="tblTdss hvrss col" runat="server">87 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_10" class="tblTdss hvrss col" runat="server">88 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_10" class="tblTdss hvrss col" runat="server">83 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_10" class="tblTdss hvrss col" runat="server">82 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_10" class="tblTdss hvrss col" runat="server">90 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_10" class="tblTdss hvrss col" runat="server">89 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">11</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_11" class="tblTdss hvrss col" runat="server">93 - 2+1 / A2a</button>
                        <button type="button" id="a1a_11" class="tblTdss hvrss col" runat="server">94 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_11" class="tblTdss hvrss col" runat="server">95 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_11" class="tblTdss hvrss col" runat="server">96 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_11" class="tblTdss hvrss col" runat="server">97 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_11" class="tblTdss hvrss col" runat="server">92 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_11" class="tblTdss hvrss col" runat="server">91 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_11" class="tblTdss hvrss col" runat="server">99 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_11" class="tblTdss hvrss col" runat="server">98 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">12</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_12" class="tblTdss hvrss col" runat="server">102 - 2+1 / A2a</button>
                        <button type="button" id="a1a_12" class="tblTdss hvrss col" runat="server">103 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_12" class="tblTdss hvrss col" runat="server">104 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_12" class="tblTdss hvrss col" runat="server">105 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_12" class="tblTdss hvrss col" runat="server">106 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_12" class="tblTdss hvrss col" runat="server">101 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_12" class="tblTdss hvrss col" runat="server">100 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_12" class="tblTdss hvrss col" runat="server">108 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_12" class="tblTdss hvrss col" runat="server">107 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">13</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_13" class="tblTdss hvrss col" runat="server">111 - 2+1 / A2a</button>
                        <button type="button" id="a1a_13" class="tblTdss hvrss col" runat="server">112 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_13" class="tblTdss hvrss col" runat="server">113 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_13" class="tblTdss hvrss col" runat="server">114 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_13" class="tblTdss hvrss col" runat="server">115 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_13" class="tblTdss hvrss col" runat="server">110 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_13" class="tblTdss hvrss col" runat="server">109 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_13" class="tblTdss hvrss col" runat="server">117 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_13" class="tblTdss hvrss col" runat="server">116 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">14</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_14" class="tblTdss hvrss col" runat="server">120 - 2+1 / A2a</button>
                        <button type="button" id="a1a_14" class="tblTdss hvrss col" runat="server">121 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_14" class="tblTdss hvrss col" runat="server">122 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_14" class="tblTdss hvrss col" runat="server">123 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_14" class="tblTdss hvrss col" runat="server">124 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_14" class="tblTdss hvrss col" runat="server">119 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_14" class="tblTdss hvrss col" runat="server">118 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_14" class="tblTdss hvrss col" runat="server">126 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_14" class="tblTdss hvrss col" runat="server">125 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">15</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_15" class="tblTdss hvrss col" runat="server">129 - 2+1 / A2a</button>
                        <button type="button" id="a1a_15" class="tblTdss hvrss col" runat="server">130 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_15" class="tblTdss hvrss col" runat="server">131 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_15" class="tblTdss hvrss col" runat="server">132 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_15" class="tblTdss hvrss col" runat="server">133 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_15" class="tblTdss hvrss col" runat="server">128 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_15" class="tblTdss hvrss col" runat="server">127 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_15" class="tblTdss hvrss col" runat="server">135 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_15" class="tblTdss hvrss col" runat="server">134 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">16</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_16" class="tblTdss hvrss col" runat="server">138 - 2+1 / A2a</button>
                        <button type="button" id="a1a_16" class="tblTdss hvrss col" runat="server">139 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_16" class="tblTdss hvrss col" runat="server">130 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_16" class="tblTdss hvrss col" runat="server">141 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_16" class="tblTdss hvrss col" runat="server">142 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_16" class="tblTdss hvrss col" runat="server">137 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_16" class="tblTdss hvrss col" runat="server">136 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_16" class="tblTdss hvrss col" runat="server">144 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_16" class="tblTdss hvrss col" runat="server">143 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">17</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_17" class="tblTdss hvrss col" runat="server">147 - 2+1 / A2a</button>
                        <button type="button" id="a1a_17" class="tblTdss hvrss col" runat="server">148 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_17" class="tblTdss hvrss col" runat="server">149 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_17" class="tblTdss hvrss col" runat="server">150 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_17" class="tblTdss hvrss col" runat="server">151 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_17" class="tblTdss hvrss col" runat="server">146 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_17" class="tblTdss hvrss col" runat="server">145 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_17" class="tblTdss hvrss col" runat="server">153 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_17" class="tblTdss hvrss col" runat="server">152 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">18</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_18" class="tblTdss hvrss col" runat="server">156 - 2+1 / A2a</button>
                        <button type="button" id="a1a_18" class="tblTdss hvrss col" runat="server">157 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_18" class="tblTdss hvrss col" runat="server">158 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_18" class="tblTdss hvrss col" runat="server">159 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_18" class="tblTdss hvrss col" runat="server">160 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_18" class="tblTdss hvrss col" runat="server">155 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_18" class="tblTdss hvrss col" runat="server">154 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_18" class="tblTdss hvrss col" runat="server">162 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_18" class="tblTdss hvrss col" runat="server">161 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">19</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_19" class="tblTdss hvrss col" runat="server">165 - 2+1 / A2a</button>
                        <button type="button" id="a1a_19" class="tblTdss hvrss col" runat="server">166 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_19" class="tblTdss hvrss col" runat="server">167 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_19" class="tblTdss hvrss col" runat="server">168 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_19" class="tblTdss hvrss col" runat="server">169 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_19" class="tblTdss hvrss col" runat="server">164 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_19" class="tblTdss hvrss col" runat="server">163 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_19" class="tblTdss hvrss col" runat="server">171 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_19" class="tblTdss hvrss col" runat="server">170 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">20</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_20" class="tblTdss hvrss col" runat="server">174 - 2+1 / A2a</button>
                        <button type="button" id="a1a_20" class="tblTdss hvrss col" runat="server">175 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_20" class="tblTdss hvrss col" runat="server">176 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_20" class="tblTdss hvrss col" runat="server">177 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_20" class="tblTdss hvrss col" runat="server">178 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_20" class="tblTdss hvrss col" runat="server">173 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_20" class="tblTdss hvrss col" runat="server">172 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_20" class="tblTdss hvrss col" runat="server">180 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_20" class="tblTdss hvrss col" runat="server">179 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">21</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_21" class="tblTdss hvrss col" runat="server">183 - 2+1 / A2a</button>
                        <button type="button" id="a1a_21" class="tblTdss hvrss col" runat="server">184 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_21" class="tblTdss hvrss col" runat="server">185 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_21" class="tblTdss hvrss col" runat="server">186 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_21" class="tblTdss hvrss col" runat="server">187 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_21" class="tblTdss hvrss col" runat="server">182 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_21" class="tblTdss hvrss col" runat="server">181 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_21" class="tblTdss hvrss col" runat="server">189 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_21" class="tblTdss hvrss col" runat="server">188 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">22</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_22" class="tblTdss hvrss col" runat="server">192 - 2+1 / A2a</button>
                        <button type="button" id="a1a_22" class="tblTdss hvrss col" runat="server">193 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_22" class="tblTdss hvrss col" runat="server">194 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_22" class="tblTdss hvrss col" runat="server">195 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_22" class="tblTdss hvrss col" runat="server">196 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_22" class="tblTdss hvrss col" runat="server">191 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_22" class="tblTdss hvrss col" runat="server">190 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_22" class="tblTdss hvrss col" runat="server">198 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_22" class="tblTdss hvrss col" runat="server">197 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">23</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_23" class="tblTdss hvrss col" runat="server">201 - 2+1 / A2a</button>
                        <button type="button" id="a1a_23" class="tblTdss hvrss col" runat="server">202 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_23" class="tblTdss hvrss col" runat="server">203 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_23" class="tblTdss hvrss col" runat="server">204 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_23" class="tblTdss hvrss col" runat="server">205 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_23" class="tblTdss hvrss col" runat="server">200 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_23" class="tblTdss hvrss col" runat="server">199 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_23" class="tblTdss hvrss col" runat="server">207 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_23" class="tblTdss hvrss col" runat="server">206 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">24</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_24" class="tblTdss hvrss col" runat="server">210 - 2+1 / A2a</button>
                        <button type="button" id="a1a_24" class="tblTdss hvrss col" runat="server">211 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_24" class="tblTdss hvrss col" runat="server">212 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_24" class="tblTdss hvrss col" runat="server">213 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_24" class="tblTdss hvrss col" runat="server">214 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_24" class="tblTdss hvrss col" runat="server">209 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_24" class="tblTdss hvrss col" runat="server">208 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_24" class="tblTdss hvrss col" runat="server">216 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_24" class="tblTdss hvrss col" runat="server">215 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">26</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_26" class="tblTdss hvrss col" runat="server">219 - 2+1 / A2a</button>
                        <button type="button" id="a1a_26" class="tblTdss hvrss col" runat="server">220 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_26" class="tblTdss hvrss col" runat="server">221 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_26" class="tblTdss hvrss col" runat="server">222 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_26" class="tblTdss hvrss col" runat="server">223 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_26" class="tblTdss hvrss col" runat="server">218 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_26" class="tblTdss hvrss col" runat="server">217 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_26" class="tblTdss hvrss col" runat="server">225 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_26" class="tblTdss hvrss col" runat="server">224 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">27</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_27" class="tblTdss hvrss col" runat="server">228 - 2+1 / A2a</button>
                        <button type="button" id="a1a_27" class="tblTdss hvrss col" runat="server">229 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_27" class="tblTdss hvrss col" runat="server">230 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_27" class="tblTdss hvrss col" runat="server">231 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_27" class="tblTdss hvrss col" runat="server">232 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_27" class="tblTdss hvrss col" runat="server">227 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_27" class="tblTdss hvrss col" runat="server">226 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_27" class="tblTdss hvrss col" runat="server">234 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_27" class="tblTdss hvrss col" runat="server">233 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">28</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_28" class="tblTdss hvrss col" runat="server">237 - 2+1 / A2a</button>
                        <button type="button" id="a1a_28" class="tblTdss hvrss col" runat="server">238 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_28" class="tblTdss hvrss col" runat="server">239 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_28" class="tblTdss hvrss col" runat="server">240 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_28" class="tblTdss hvrss col" runat="server">241 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_28" class="tblTdss hvrss col" runat="server">236 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_28" class="tblTdss hvrss col" runat="server">235 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_28" class="tblTdss hvrss col" runat="server">243 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_28" class="tblTdss hvrss col" runat="server">242 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">29</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_29" class="tblTdss hvrss col" runat="server">246 - 2+1 / A2a</button>
                        <button type="button" id="a1a_29" class="tblTdss hvrss col" runat="server">247 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_29" class="tblTdss hvrss col" runat="server">248 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_29" class="tblTdss hvrss col" runat="server">249 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_29" class="tblTdss hvrss col" runat="server">250 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_29" class="tblTdss hvrss col" runat="server">245 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_29" class="tblTdss hvrss col" runat="server">244 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_29" class="tblTdss hvrss col" runat="server">252 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_29" class="tblTdss hvrss col" runat="server">251 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">30</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_30" class="tblTdss hvrss col" runat="server">255 - 2+1 / A2a</button>
                        <button type="button" id="a1a_30" class="tblTdss hvrss col" runat="server">256 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_30" class="tblTdss hvrss col" runat="server">257 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_30" class="tblTdss hvrss col" runat="server">258 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_30" class="tblTdss hvrss col" runat="server">259 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_30" class="tblTdss hvrss col" runat="server">254 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_30" class="tblTdss hvrss col" runat="server">253 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_30" class="tblTdss hvrss col" runat="server">261 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_30" class="tblTdss hvrss col" runat="server">260 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">31</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_31" class="tblTdss hvrss col" runat="server">264 - 2+1 / A2a</button>
                        <button type="button" id="a1a_31" class="tblTdss hvrss col" runat="server">265 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_31" class="tblTdss hvrss col" runat="server">266 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_31" class="tblTdss hvrss col" runat="server">267 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_31" class="tblTdss hvrss col" runat="server">268 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_31" class="tblTdss hvrss col" runat="server">263 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_31" class="tblTdss hvrss col" runat="server">262 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_31" class="tblTdss hvrss col" runat="server">270 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_31" class="tblTdss hvrss col" runat="server">269 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">32</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_32" class="tblTdss hvrss col" runat="server">273 - 2+1 / A2a</button>
                        <button type="button" id="a1a_32" class="tblTdss hvrss col" runat="server">274 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_32" class="tblTdss hvrss col" runat="server">275 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_32" class="tblTdss hvrss col" runat="server">276 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_32" class="tblTdss hvrss col" runat="server">277 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_32" class="tblTdss hvrss col" runat="server">272 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_32" class="tblTdss hvrss col" runat="server">271 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_32" class="tblTdss hvrss col" runat="server">279 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_32" class="tblTdss hvrss col" runat="server">278 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">33</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_33" class="tblTdss hvrss col" runat="server">282 - 2+1 / A2a</button>
                        <button type="button" id="a1a_33" class="tblTdss hvrss col" runat="server">283 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_33" class="tblTdss hvrss col" runat="server">284 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_33" class="tblTdss hvrss col" runat="server">285 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_33" class="tblTdss hvrss col" runat="server">286 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_33" class="tblTdss hvrss col" runat="server">281 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_33" class="tblTdss hvrss col" runat="server">280 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_33" class="tblTdss hvrss col" runat="server">288 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_33" class="tblTdss hvrss col" runat="server">287 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">34</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_34" class="tblTdss hvrss col" runat="server">291 - 2+1 / A2a</button>
                        <button type="button" id="a1a_34" class="tblTdss hvrss col" runat="server">292 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_34" class="tblTdss hvrss col" runat="server">293 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_34" class="tblTdss hvrss col" runat="server">294 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_34" class="tblTdss hvrss col" runat="server">295 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_34" class="tblTdss hvrss col" runat="server">290 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_34" class="tblTdss hvrss col" runat="server">289 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_34" class="tblTdss hvrss col" runat="server">297 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_34" class="tblTdss hvrss col" runat="server">296 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">35</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_35" class="tblTdss hvrss col" runat="server">300 - 2+1 / A2a</button>
                        <button type="button" id="a1a_35" class="tblTdss hvrss col" runat="server">301 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_35" class="tblTdss hvrss col" runat="server">302 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_35" class="tblTdss hvrss col" runat="server">303 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_35" class="tblTdss hvrss col" runat="server">304 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_35" class="tblTdss hvrss col" runat="server">299 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_35" class="tblTdss hvrss col" runat="server">298 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_35" class="tblTdss hvrss col" runat="server">306 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_35" class="tblTdss hvrss col" runat="server">305 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">36</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_36" class="tblTdss hvrss col" runat="server">309 - 2+1 / A2a</button>
                        <button type="button" id="a1a_36" class="tblTdss hvrss col" runat="server">310 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_36" class="tblTdss hvrss col" runat="server">311 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_36" class="tblTdss hvrss col" runat="server">312 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_36" class="tblTdss hvrss col" runat="server">313 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_36" class="tblTdss hvrss col" runat="server">308 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_36" class="tblTdss hvrss col" runat="server">307 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_36" class="tblTdss hvrss col" runat="server">315 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_36" class="tblTdss hvrss col" runat="server">314 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">37</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_37" class="tblTdss hvrss col" runat="server">318 - 2+1 / A2a</button>
                        <button type="button" id="a1a_37" class="tblTdss hvrss col" runat="server">319 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_37" class="tblTdss hvrss col" runat="server">320 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_37" class="tblTdss hvrss col" runat="server">321 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_37" class="tblTdss hvrss col" runat="server">322 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_37" class="tblTdss hvrss col" runat="server">317 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_37" class="tblTdss hvrss col" runat="server">316 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_37" class="tblTdss hvrss col" runat="server">324 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_37" class="tblTdss hvrss col" runat="server">323 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">38</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_38" class="tblTdss hvrss col" runat="server">327 - 2+1 / A2a</button>
                        <button type="button" id="a1a_38" class="tblTdss hvrss col" runat="server">328 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_38" class="tblTdss hvrss col" runat="server">329 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_38" class="tblTdss hvrss col" runat="server">330 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_38" class="tblTdss hvrss col" runat="server">331 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_38" class="tblTdss hvrss col" runat="server">326 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_38" class="tblTdss hvrss col" runat="server">325 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_38" class="tblTdss hvrss col" runat="server">333 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_38" class="tblTdss hvrss col" runat="server">332 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">39</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_39" class="tblTdss hvrss col" runat="server">336 - 2+1 / A2a</button>
                        <button type="button" id="a1a_39" class="tblTdss hvrss col" runat="server">337 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_39" class="tblTdss hvrss col" runat="server">338 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_39" class="tblTdss hvrss col" runat="server">339 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_39" class="tblTdss hvrss col" runat="server">340 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_39" class="tblTdss hvrss col" runat="server">335 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_39" class="tblTdss hvrss col" runat="server">334 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_39" class="tblTdss hvrss col" runat="server">342 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_39" class="tblTdss hvrss col" runat="server">341 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">40</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_40" class="tblTdss hvrss col" runat="server">345 - 2+1 / A2a</button>
                        <button type="button" id="a1a_40" class="tblTdss hvrss col" runat="server">346 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_40" class="tblTdss hvrss col" runat="server">347 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_40" class="tblTdss hvrss col" runat="server">348 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_40" class="tblTdss hvrss col" runat="server">349 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_40" class="tblTdss hvrss col" runat="server">344 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_40" class="tblTdss hvrss col" runat="server">343 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_40" class="tblTdss hvrss col" runat="server">351 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_40" class="tblTdss hvrss col" runat="server">350 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">41</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_41" class="tblTdss hvrss col" runat="server">354 - 2+1 / A2a</button>
                        <button type="button" id="a1a_41" class="tblTdss hvrss col" runat="server">355 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_41" class="tblTdss hvrss col" runat="server">356 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_41" class="tblTdss hvrss col" runat="server">357 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_41" class="tblTdss hvrss col" runat="server">358 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_41" class="tblTdss hvrss col" runat="server">353 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_41" class="tblTdss hvrss col" runat="server">352 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_41" class="tblTdss hvrss col" runat="server">360 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_41" class="tblTdss hvrss col" runat="server">359 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">42</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_42" class="tblTdss hvrss col" runat="server">363 - 2+1 / A2a</button>
                        <button type="button" id="a1a_42" class="tblTdss hvrss col" runat="server">364 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_42" class="tblTdss hvrss col" runat="server">365 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_42" class="tblTdss hvrss col" runat="server">366 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_42" class="tblTdss hvrss col" runat="server">367 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_42" class="tblTdss hvrss col" runat="server">362 - 32+1 / A2a1</button>
                        <button type="button" id="a1a1L_42" class="tblTdss hvrss col" runat="server">361 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_42" class="tblTdss hvrss col" runat="server">369 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_42" class="tblTdss hvrss col" runat="server">368 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">43</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_43" class="tblTdss hvrss col" runat="server">372 - 2+1 / A2a</button>
                        <button type="button" id="a1a_43" class="tblTdss hvrss col" runat="server">373 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_43" class="tblTdss hvrss col" runat="server">374 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_43" class="tblTdss hvrss col" runat="server">375 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_43" class="tblTdss hvrss col" runat="server">376 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_43" class="tblTdss hvrss col" runat="server">371 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_43" class="tblTdss hvrss col" runat="server">370 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_43" class="tblTdss hvrss col" runat="server">378 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_43" class="tblTdss hvrss col" runat="server">377 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">44</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_44" class="tblTdss hvrss col" runat="server">381 - 2+1 / A2a</button>
                        <button type="button" id="a1a_44" class="tblTdss hvrss col" runat="server">382 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_44" class="tblTdss hvrss col" runat="server">383 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_44" class="tblTdss hvrss col" runat="server">384 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_44" class="tblTdss hvrss col" runat="server">385 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_44" class="tblTdss hvrss col" runat="server">380 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_44" class="tblTdss hvrss col" runat="server">379 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_44" class="tblTdss hvrss col" runat="server">387 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_44" class="tblTdss hvrss col" runat="server">386 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">45</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_45" class="tblTdss hvrss col" runat="server">390 - 2+1 / A2a</button>
                        <button type="button" id="a1a_45" class="tblTdss hvrss col" runat="server">391 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_45" class="tblTdss hvrss col" runat="server">392 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_45" class="tblTdss hvrss col" runat="server">393 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_45" class="tblTdss hvrss col" runat="server">394 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_45" class="tblTdss hvrss col" runat="server">389 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_45" class="tblTdss hvrss col" runat="server">388 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_45" class="tblTdss hvrss col" runat="server">396 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_45" class="tblTdss hvrss col" runat="server">395 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">46</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_46" class="tblTdss hvrss col" runat="server">399 - 2+1 / A2a</button>
                        <button type="button" id="a1a_46" class="tblTdss hvrss col" runat="server">400 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_46" class="tblTdss hvrss col" runat="server">401 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_46" class="tblTdss hvrss col" runat="server">402 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_46" class="tblTdss hvrss col" runat="server">403 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_46" class="tblTdss hvrss col" runat="server">398 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_46" class="tblTdss hvrss col" runat="server">397 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_46" class="tblTdss hvrss col" runat="server">405 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_46" class="tblTdss hvrss col" runat="server">404 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">47</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_47" class="tblTdss hvrss col" runat="server">408 - 2+1 / A2a</button>
                        <button type="button" id="a1a_47" class="tblTdss hvrss col" runat="server">409 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_47" class="tblTdss hvrss col" runat="server">410 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_47" class="tblTdss hvrss col" runat="server">411 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_47" class="tblTdss hvrss col" runat="server">412 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_47" class="tblTdss hvrss col" runat="server">407 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_47" class="tblTdss hvrss col" runat="server">406 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_47" class="tblTdss hvrss col" runat="server">414 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_47" class="tblTdss hvrss col" runat="server">413 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">48</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_48" class="tblTdss hvrss col" runat="server">417 - 2+1 / A2a</button>
                        <button type="button" id="a1a_48" class="tblTdss hvrss col" runat="server">418 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_48" class="tblTdss hvrss col" runat="server">419 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_48" class="tblTdss hvrss col" runat="server">420 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_48" class="tblTdss hvrss col" runat="server">421 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_48" class="tblTdss hvrss col" runat="server">416 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_48" class="tblTdss hvrss col" runat="server">415 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_48" class="tblTdss hvrss col" runat="server">423 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_48" class="tblTdss hvrss col" runat="server">422 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">49</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a_49" class="tblTdss hvrss col" runat="server">426 - 2+1 / A2a</button>
                        <button type="button" id="a1a_49" class="tblTdss hvrss col" runat="server">427 - 1+1 / A1a</button>
                        <button type="button" id="a1bbL_49" class="tblTdss hvrss col" runat="server">428 - 1+1 / A1bbL</button>
                        <button type="button" id="a1bbR_49" class="tblTdss hvrss col" runat="server">429 - 1+1 / A1bbR</button>
                        <button type="button" id="a2c_49" class="tblTdss hvrss col" runat="server">430 - 2+1 / A2c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="a2a1_49" class="tblTdss hvrss col" runat="server">425 - 2+1 / A2a1</button>
                        <button type="button" id="a1a1L_49" class="tblTdss hvrss col" runat="server">424 - 1+1 / A1a1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="a1a1R_49" class="tblTdss hvrss col" runat="server">432 - 1+1 / A1a1R</button>
                        <button type="button" id="a2b1_49" class="tblTdss hvrss col" runat="server">431 - 2+1 / A2b1</button>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <div class="col-md-3">
        <h4 class="text-black m-t-6">B BLOK</h4>
         <div class="scrollsss text-center">

            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">1</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_1" class="tblTdss hvrss col" runat="server">2 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_1" class="tblTdss hvrss col" runat="server">3 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_1" class="tblTdss hvrss col" runat="server">1 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_1" class="tblTdss hvrss col" runat="server">4 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_1" class="tblTdss hvrss col" runat="server">5 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_1" class="tblTdss hvrss col" runat="server">7 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_1" class="tblTdss hvrss col" runat="server">6 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">2</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_2" class="tblTdss hvrss col" runat="server">9 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_2" class="tblTdss hvrss col" runat="server">10 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_2" class="tblTdss hvrss col" runat="server">8 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_2" class="tblTdss hvrss col" runat="server">11 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_2" class="tblTdss hvrss col" runat="server">12 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_2" class="tblTdss hvrss col" runat="server">14 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_2" class="tblTdss hvrss col" runat="server">13 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">3</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_3" class="tblTdss hvrss col" runat="server">16 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_3" class="tblTdss hvrss col" runat="server">17 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_3" class="tblTdss hvrss col" runat="server">15 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_3" class="tblTdss hvrss col" runat="server">18 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_3" class="tblTdss hvrss col" runat="server">19 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_3" class="tblTdss hvrss col" runat="server">21 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_3" class="tblTdss hvrss col" runat="server">20 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">4</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_4" class="tblTdss hvrss col" runat="server">23 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_4" class="tblTdss hvrss col" runat="server">24 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_4" class="tblTdss hvrss col" runat="server">22 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_4" class="tblTdss hvrss col" runat="server">25 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_4" class="tblTdss hvrss col" runat="server">26 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_4" class="tblTdss hvrss col" runat="server">28 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_4" class="tblTdss hvrss col" runat="server">27 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">5</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_5" class="tblTdss hvrss col" runat="server">30 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_5" class="tblTdss hvrss col" runat="server">31 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_5" class="tblTdss hvrss col" runat="server">29 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_5" class="tblTdss hvrss col" runat="server">32 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_5" class="tblTdss hvrss col" runat="server">33 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_5" class="tblTdss hvrss col" runat="server">35 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_5" class="tblTdss hvrss col" runat="server">34 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">6</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_6" class="tblTdss hvrss col" runat="server">37 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_6" class="tblTdss hvrss col" runat="server">38 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_6" class="tblTdss hvrss col" runat="server">36 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_6" class="tblTdss hvrss col" runat="server">39 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_6" class="tblTdss hvrss col" runat="server">40 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_6" class="tblTdss hvrss col" runat="server">42 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_6" class="tblTdss hvrss col" runat="server">41 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">7</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_7" class="tblTdss hvrss col" runat="server">44 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_7" class="tblTdss hvrss col" runat="server">45 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_7" class="tblTdss hvrss col" runat="server">43 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_7" class="tblTdss hvrss col" runat="server">46 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_7" class="tblTdss hvrss col" runat="server">47 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_7" class="tblTdss hvrss col" runat="server">49 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_7" class="tblTdss hvrss col" runat="server">48 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">8</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_8" class="tblTdss hvrss col" runat="server">51 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_8" class="tblTdss hvrss col" runat="server">52 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_8" class="tblTdss hvrss col" runat="server">50 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_8" class="tblTdss hvrss col" runat="server">53 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_8" class="tblTdss hvrss col" runat="server">54 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_8" class="tblTdss hvrss col" runat="server">56 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_8" class="tblTdss hvrss col" runat="server">55 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">9</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_9" class="tblTdss hvrss col" runat="server">58 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_9" class="tblTdss hvrss col" runat="server">59 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_9" class="tblTdss hvrss col" runat="server">57 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_9" class="tblTdss hvrss col" runat="server">60 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_9" class="tblTdss hvrss col" runat="server">61 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_9" class="tblTdss hvrss col" runat="server">63 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_9" class="tblTdss hvrss col" runat="server">62 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">10</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_10" class="tblTdss hvrss col" runat="server">65 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_10" class="tblTdss hvrss col" runat="server">66 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_10" class="tblTdss hvrss col" runat="server">64 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_10" class="tblTdss hvrss col" runat="server">67 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_10" class="tblTdss hvrss col" runat="server">68 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_10" class="tblTdss hvrss col" runat="server">70 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_10" class="tblTdss hvrss col" runat="server">69 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">11</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_11" class="tblTdss hvrss col" runat="server">72 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_11" class="tblTdss hvrss col" runat="server">73 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_11" class="tblTdss hvrss col" runat="server">71 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_11" class="tblTdss hvrss col" runat="server">74 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_11" class="tblTdss hvrss col" runat="server">75 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_11" class="tblTdss hvrss col" runat="server">77 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_11" class="tblTdss hvrss col" runat="server">76 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">12</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_12" class="tblTdss hvrss col" runat="server">79 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_12" class="tblTdss hvrss col" runat="server">80 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_12" class="tblTdss hvrss col" runat="server">78 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_12" class="tblTdss hvrss col" runat="server">81 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_12" class="tblTdss hvrss col" runat="server">82 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_12" class="tblTdss hvrss col" runat="server">84 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_12" class="tblTdss hvrss col" runat="server">83 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">13</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_13" class="tblTdss hvrss col" runat="server">86 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_13" class="tblTdss hvrss col" runat="server">87 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_13" class="tblTdss hvrss col" runat="server">85 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_13" class="tblTdss hvrss col" runat="server">88 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_13" class="tblTdss hvrss col" runat="server">89 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_13" class="tblTdss hvrss col" runat="server">91 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_13" class="tblTdss hvrss col" runat="server">90 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">14</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_14" class="tblTdss hvrss col" runat="server">93 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_14" class="tblTdss hvrss col" runat="server">94 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_14" class="tblTdss hvrss col" runat="server">92 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_14" class="tblTdss hvrss col" runat="server">95 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_14" class="tblTdss hvrss col" runat="server">96 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_14" class="tblTdss hvrss col" runat="server">98 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_14" class="tblTdss hvrss col" runat="server">97 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">15</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_15" class="tblTdss hvrss col" runat="server">100 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_15" class="tblTdss hvrss col" runat="server">101 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_15" class="tblTdss hvrss col" runat="server">99 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_15" class="tblTdss hvrss col" runat="server">102 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_15" class="tblTdss hvrss col" runat="server">103 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_15" class="tblTdss hvrss col" runat="server">105 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_15" class="tblTdss hvrss col" runat="server">104 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">16</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_16" class="tblTdss hvrss col" runat="server">107 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_16" class="tblTdss hvrss col" runat="server">108 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_16" class="tblTdss hvrss col" runat="server">106 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_16" class="tblTdss hvrss col" runat="server">109 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_16" class="tblTdss hvrss col" runat="server">110 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_16" class="tblTdss hvrss col" runat="server">112 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_16" class="tblTdss hvrss col" runat="server">111 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">17</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_17" class="tblTdss hvrss col" runat="server">114 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_17" class="tblTdss hvrss col" runat="server">115 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_17" class="tblTdss hvrss col" runat="server">113 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_17" class="tblTdss hvrss col" runat="server">116 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_17" class="tblTdss hvrss col" runat="server">117 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_17" class="tblTdss hvrss col" runat="server">119 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_17" class="tblTdss hvrss col" runat="server">118 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">18</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_18" class="tblTdss hvrss col" runat="server">121 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_18" class="tblTdss hvrss col" runat="server">122 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_18" class="tblTdss hvrss col" runat="server">120 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_18" class="tblTdss hvrss col" runat="server">123 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_18" class="tblTdss hvrss col" runat="server">124 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_18" class="tblTdss hvrss col" runat="server">126 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_18" class="tblTdss hvrss col" runat="server">125 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">19</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_19" class="tblTdss hvrss col" runat="server">128 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_19" class="tblTdss hvrss col" runat="server">129 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_19" class="tblTdss hvrss col" runat="server">127 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_19" class="tblTdss hvrss col" runat="server">130 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_19" class="tblTdss hvrss col" runat="server">131 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_19" class="tblTdss hvrss col" runat="server">133 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_19" class="tblTdss hvrss col" runat="server">132 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">20</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_20" class="tblTdss hvrss col" runat="server">135 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_20" class="tblTdss hvrss col" runat="server">136 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_20" class="tblTdss hvrss col" runat="server">134 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_20" class="tblTdss hvrss col" runat="server">137 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_20" class="tblTdss hvrss col" runat="server">138 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_20" class="tblTdss hvrss col" runat="server">140 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_20" class="tblTdss hvrss col" runat="server">139 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">21</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_21" class="tblTdss hvrss col" runat="server">142 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_21" class="tblTdss hvrss col" runat="server">143 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_21" class="tblTdss hvrss col" runat="server">141 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_21" class="tblTdss hvrss col" runat="server">144 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_21" class="tblTdss hvrss col" runat="server">145 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_21" class="tblTdss hvrss col" runat="server">147 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_21" class="tblTdss hvrss col" runat="server">146 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">22</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_22" class="tblTdss hvrss col" runat="server">149 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_22" class="tblTdss hvrss col" runat="server">150 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_22" class="tblTdss hvrss col" runat="server">148 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_22" class="tblTdss hvrss col" runat="server">151 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_22" class="tblTdss hvrss col" runat="server">152 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_22" class="tblTdss hvrss col" runat="server">154 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_22" class="tblTdss hvrss col" runat="server">153 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">23</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_23" class="tblTdss hvrss col" runat="server">156 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_23" class="tblTdss hvrss col" runat="server">157 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_23" class="tblTdss hvrss col" runat="server">155 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_23" class="tblTdss hvrss col" runat="server">158 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_23" class="tblTdss hvrss col" runat="server">159 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_23" class="tblTdss hvrss col" runat="server">161 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_23" class="tblTdss hvrss col" runat="server">160 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">24</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_24" class="tblTdss hvrss col" runat="server">162 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_24" class="tblTdss hvrss col" runat="server">163 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_24" class="tblTdss hvrss col" runat="server">162 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_24" class="tblTdss hvrss col" runat="server">164 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_24" class="tblTdss hvrss col" runat="server">165 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_24" class="tblTdss hvrss col" runat="server">167 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_24" class="tblTdss hvrss col" runat="server">166 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">25</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_25" class="tblTdss hvrss col" runat="server">169 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_25" class="tblTdss hvrss col" runat="server">170 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_25" class="tblTdss hvrss col" runat="server">168 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_25" class="tblTdss hvrss col" runat="server">171 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_25" class="tblTdss hvrss col" runat="server">172 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_25" class="tblTdss hvrss col" runat="server">174 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_25" class="tblTdss hvrss col" runat="server">173 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">26</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_26" class="tblTdss hvrss col" runat="server">176 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_26" class="tblTdss hvrss col" runat="server">177 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_26" class="tblTdss hvrss col" runat="server">175 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_26" class="tblTdss hvrss col" runat="server">178 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_26" class="tblTdss hvrss col" runat="server">179 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_26" class="tblTdss hvrss col" runat="server">181 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_26" class="tblTdss hvrss col" runat="server">180 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">27</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_27" class="tblTdss hvrss col" runat="server">183 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_27" class="tblTdss hvrss col" runat="server">184 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_27" class="tblTdss hvrss col" runat="server">182 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_27" class="tblTdss hvrss col" runat="server">185 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_27" class="tblTdss hvrss col" runat="server">186 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_27" class="tblTdss hvrss col" runat="server">188 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_27" class="tblTdss hvrss col" runat="server">187 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">28</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2a1_28" class="tblTdss hvrss col" runat="server">190 - 2+1 / B2a1</button>
                        <button type="button" id="b2a_28" class="tblTdss hvrss col" runat="server">191 - 2+1 / B2a</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b1b1_28" class="tblTdss hvrss col" runat="server">189 - 1+1 / B1b1</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aL_28" class="tblTdss hvrss col" runat="server">192 - 1+1 / B1aL</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="b1aR_28" class="tblTdss hvrss col" runat="server">193 - 1+1 / B1aR</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="b2b1_28" class="tblTdss hvrss col" runat="server">195 - 2+1 / B2b1</button>
                        <button type="button" id="b2b_28" class="tblTdss hvrss col" runat="server">194 - 2+1 / B2b</button>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="col-md-4">
        <h4 class="text-black m-t-6">C BLOK</h4>
        <div class="scrollsss text-center">

            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">1</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_1" class="tblTdss hvrss col" runat="server">3 -  1+1 / C1a</button>
                        <button type="button" id="c1b_1" class="tblTdss hvrss col" runat="server">4 -  1+1 / C1b</button>
                        <button type="button" id="c1c_1" class="tblTdss hvrss col" runat="server">5 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_1" class="tblTdss hvrss col" runat="server">2 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_1" class="tblTdss hvrss col" runat="server">1 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_1" class="tblTdss hvrss col" runat="server">7 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_1" class="tblTdss hvrss col" runat="server">6 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">2</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_2" class="tblTdss hvrss col" runat="server">10 - 1+1 / C1a</button>
                        <button type="button" id="c1b_2" class="tblTdss hvrss col" runat="server">11 - 1+1 / C1b</button>
                        <button type="button" id="c1c_2" class="tblTdss hvrss col" runat="server">12 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_2" class="tblTdss hvrss col" runat="server">9 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_2" class="tblTdss hvrss col" runat="server">8 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_2" class="tblTdss hvrss col" runat="server">14 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_2" class="tblTdss hvrss col" runat="server">13 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">3</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_3" class="tblTdss hvrss col" runat="server">17 - 1+1 / C1a</button>
                        <button type="button" id="c1b_3" class="tblTdss hvrss col" runat="server">18 - 1+1 / C1b</button>
                        <button type="button" id="c1c_3" class="tblTdss hvrss col" runat="server">19 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_3" class="tblTdss hvrss col" runat="server">16 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_3" class="tblTdss hvrss col" runat="server">15 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_3" class="tblTdss hvrss col" runat="server">21 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_3" class="tblTdss hvrss col" runat="server">20 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">4</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_4" class="tblTdss hvrss col" runat="server">24 - 1+1 / C1a</button>
                        <button type="button" id="c1b_4" class="tblTdss hvrss col" runat="server">25 - 1+1 / C1b</button>
                        <button type="button" id="c1c_4" class="tblTdss hvrss col" runat="server">26 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_4" class="tblTdss hvrss col" runat="server">23 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_4" class="tblTdss hvrss col" runat="server">22 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_4" class="tblTdss hvrss col" runat="server">28 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_4" class="tblTdss hvrss col" runat="server">27 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">5</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_5" class="tblTdss hvrss col" runat="server">31 - 1+1 / C1a</button>
                        <button type="button" id="c1b_5" class="tblTdss hvrss col" runat="server">32 - 1+1 / C1b</button>
                        <button type="button" id="c1c_5" class="tblTdss hvrss col" runat="server">33 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_5" class="tblTdss hvrss col" runat="server">30 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_5" class="tblTdss hvrss col" runat="server">29 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_5" class="tblTdss hvrss col" runat="server">35 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_5" class="tblTdss hvrss col" runat="server">34 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">6</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_6" class="tblTdss hvrss col" runat="server">38 - 1+1 / C1a</button>
                        <button type="button" id="c1b_6" class="tblTdss hvrss col" runat="server">39 - 1+1 / C1b</button>
                        <button type="button" id="c1c_6" class="tblTdss hvrss col" runat="server">40 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_6" class="tblTdss hvrss col" runat="server">37 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_6" class="tblTdss hvrss col" runat="server">36 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_6" class="tblTdss hvrss col" runat="server">42 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_6" class="tblTdss hvrss col" runat="server">41 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">7</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_7" class="tblTdss hvrss col" runat="server">45 - 1+1 / C1a</button>
                        <button type="button" id="c1b_7" class="tblTdss hvrss col" runat="server">46 - 1+1 / C1b</button>
                        <button type="button" id="c1c_7" class="tblTdss hvrss col" runat="server">47 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_7" class="tblTdss hvrss col" runat="server">44 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_7" class="tblTdss hvrss col" runat="server">43 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_7" class="tblTdss hvrss col" runat="server">49 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_7" class="tblTdss hvrss col" runat="server">48 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">8</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_8" class="tblTdss hvrss col" runat="server">52 - 1+1 / C1a</button>
                        <button type="button" id="c1b_8" class="tblTdss hvrss col" runat="server">53 - 1+1 / C1b</button>
                        <button type="button" id="c1c_8" class="tblTdss hvrss col" runat="server">54 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_8" class="tblTdss hvrss col" runat="server">51 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_8" class="tblTdss hvrss col" runat="server">50 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_8" class="tblTdss hvrss col" runat="server">56 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_8" class="tblTdss hvrss col" runat="server">55 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">9</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_9" class="tblTdss hvrss col" runat="server">59 - 1+1 / C1a</button>
                        <button type="button" id="c1b_9" class="tblTdss hvrss col" runat="server">60 - 1+1 / C1b</button>
                        <button type="button" id="c1c_9" class="tblTdss hvrss col" runat="server">61 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_9" class="tblTdss hvrss col" runat="server">58 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_9" class="tblTdss hvrss col" runat="server">57 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_9" class="tblTdss hvrss col" runat="server">63 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_9" class="tblTdss hvrss col" runat="server">62 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">10</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_10" class="tblTdss hvrss col" runat="server">66 - 1+1 / C1a</button>
                        <button type="button" id="c1b_10" class="tblTdss hvrss col" runat="server">67 - 1+1 / C1b</button>
                        <button type="button" id="c1c_10" class="tblTdss hvrss col" runat="server">68 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_10" class="tblTdss hvrss col" runat="server">65 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_10" class="tblTdss hvrss col" runat="server">64 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_10" class="tblTdss hvrss col" runat="server">70 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_10" class="tblTdss hvrss col" runat="server">69 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">11</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_11" class="tblTdss hvrss col" runat="server">73 - 1+1 / C1a</button>
                        <button type="button" id="c1b_11" class="tblTdss hvrss col" runat="server">74 - 1+1 / C1b</button>
                        <button type="button" id="c1c_11" class="tblTdss hvrss col" runat="server">75 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_11" class="tblTdss hvrss col" runat="server">72 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_11" class="tblTdss hvrss col" runat="server">71 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_11" class="tblTdss hvrss col" runat="server">77 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_11" class="tblTdss hvrss col" runat="server">76 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">12</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_12" class="tblTdss hvrss col" runat="server">80 - 1+1 / C1a</button>
                        <button type="button" id="c1b_12" class="tblTdss hvrss col" runat="server">81 - 1+1 / C1b</button>
                        <button type="button" id="c1c_12" class="tblTdss hvrss col" runat="server">82 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_12" class="tblTdss hvrss col" runat="server">79 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_12" class="tblTdss hvrss col" runat="server">78 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_12" class="tblTdss hvrss col" runat="server">84 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_12" class="tblTdss hvrss col" runat="server">83 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">13</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_13" class="tblTdss hvrss col" runat="server">87 - 1+1 / C1a</button>
                        <button type="button" id="c1b_13" class="tblTdss hvrss col" runat="server">88 - 1+1 / C1b</button>
                        <button type="button" id="c1c_13" class="tblTdss hvrss col" runat="server">89 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_13" class="tblTdss hvrss col" runat="server">86 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_13" class="tblTdss hvrss col" runat="server">85 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_13" class="tblTdss hvrss col" runat="server">91 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_13" class="tblTdss hvrss col" runat="server">90 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">14</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_14" class="tblTdss hvrss col" runat="server">94 - 1+1 / C1a</button>
                        <button type="button" id="c1b_14" class="tblTdss hvrss col" runat="server">95 - 1+1 / C1b</button>
                        <button type="button" id="c1c_14" class="tblTdss hvrss col" runat="server">96 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_14" class="tblTdss hvrss col" runat="server">93 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_14" class="tblTdss hvrss col" runat="server">92 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_14" class="tblTdss hvrss col" runat="server">98 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_14" class="tblTdss hvrss col" runat="server">97 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">15</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_15" class="tblTdss hvrss col" runat="server">101 - 1+1 / C1a</button>
                        <button type="button" id="c1b_15" class="tblTdss hvrss col" runat="server">102 - 1+1 / C1b</button>
                        <button type="button" id="c1c_15" class="tblTdss hvrss col" runat="server">103 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_15" class="tblTdss hvrss col" runat="server">100 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_15" class="tblTdss hvrss col" runat="server">99 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_15" class="tblTdss hvrss col" runat="server">105 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_15" class="tblTdss hvrss col" runat="server">104 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">16</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_16" class="tblTdss hvrss col" runat="server">108 - 1+1 / C1a</button>
                        <button type="button" id="c1b_16" class="tblTdss hvrss col" runat="server">109 - 1+1 / C1b</button>
                        <button type="button" id="c1c_16" class="tblTdss hvrss col" runat="server">110 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_16" class="tblTdss hvrss col" runat="server">107 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_16" class="tblTdss hvrss col" runat="server">106 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_16" class="tblTdss hvrss col" runat="server">112 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_16" class="tblTdss hvrss col" runat="server">111 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">17</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_17" class="tblTdss hvrss col" runat="server">115 - 1+1 / C1a</button>
                        <button type="button" id="c1b_17" class="tblTdss hvrss col" runat="server">116 - 1+1 / C1b</button>
                        <button type="button" id="c1c_17" class="tblTdss hvrss col" runat="server">117 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_17" class="tblTdss hvrss col" runat="server">114 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_17" class="tblTdss hvrss col" runat="server">113 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_17" class="tblTdss hvrss col" runat="server">119 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_17" class="tblTdss hvrss col" runat="server">118 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">18</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_18" class="tblTdss hvrss col" runat="server">122 - 1+1 / C1a</button>
                        <button type="button" id="c1b_18" class="tblTdss hvrss col" runat="server">123 - 1+1 / C1b</button>
                        <button type="button" id="c1c_18" class="tblTdss hvrss col" runat="server">124 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_18" class="tblTdss hvrss col" runat="server">121 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_18" class="tblTdss hvrss col" runat="server">120 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_18" class="tblTdss hvrss col" runat="server">126 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_18" class="tblTdss hvrss col" runat="server">125 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">19</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_19" class="tblTdss hvrss col" runat="server">129 - 1+1 / C1a</button>
                        <button type="button" id="c1b_19" class="tblTdss hvrss col" runat="server">130 - 1+1 / C1b</button>
                        <button type="button" id="c1c_19" class="tblTdss hvrss col" runat="server">131 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_19" class="tblTdss hvrss col" runat="server">128 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_19" class="tblTdss hvrss col" runat="server">127 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_19" class="tblTdss hvrss col" runat="server">133 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_19" class="tblTdss hvrss col" runat="server">132 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>
            <div style="margin: 0;" class="row difBackColor2">
                <div style="padding: .75rem;cursor:default;" class="tblTdss d-flex align-items-center">20</div>
                <div style="padding: 0;" class="col">
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c1a_20" class="tblTdss hvrss col" runat="server">136 - 1+1 / C1a</button>
                        <button type="button" id="c1b_20" class="tblTdss hvrss col" runat="server">137 - 1+1 / C1b</button>
                        <button type="button" id="c1c_20" class="tblTdss hvrss col" runat="server">138 - 1+1 / C1c</button>
                    </div>
                    <div style="margin: 0;" class="row">
                        <button type="button" id="c0a1L_20" class="tblTdss hvrss col" runat="server">135 - 1+0 / C0a1L</button>
                        <button type="button" id="c0b1L_20" class="tblTdss hvrss col" runat="server">134 - 1+0 / C0b1L</button>
                        <button type="button" class="tblTdss hvrsblock col"></button>
                        <button type="button" id="c0b1R_20" class="tblTdss hvrss col" runat="server">140 - 1+0 / C0b1R</button>
                        <button type="button" id="c0a1R_20" class="tblTdss hvrss col" runat="server">139 - 1+0 / C0a1R</button>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
            </div>


                <div class="mr-2 ml-2">
                        <div class="form-group col-md-4">
                                <label for="">Daire Arama</label>
                                <%--<input type="text" class="form-control form-g-input">--%>
                            <asp:TextBox runat="server" ID="txtClick" CssClass="form-control form-g-input txtClick" ></asp:TextBox>
                            </div>
                            <div class="col-md-12 mt-2">
                                <%--<button type="submit" class="btn btn-outline-secondary btn-g-box">Detay Getir</button>--%>
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-outline-secondary btn-g-box mr-2" Text="Detay Getir" OnClick="Button2_Click" />
                     <asp:Label ID="lblDaireDurum" runat="server" Text="" Font-Bold="True" ForeColor="#FF3300" Font-Size="15px"></asp:Label>
                            </div>
                            <div class="row ml-0 mr-0 mt-5">
                                    <div class="form-group col-md-2">
                                        <label for="">Mevki</label>
                                        <asp:TextBox ID="txtMevki" runat="server" CssClass="form-control form-g-input" Enabled="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="">Nitelik</label>
                                        <asp:TextBox ID="txtNitelik" runat="server" CssClass="form-control form-g-input" Enabled="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="">Eklenti</label>
                                        <asp:TextBox ID="txtEklenti" runat="server" CssClass="form-control form-g-input" Enabled="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="">Net Alan</label>
                                        <asp:TextBox ID="txtNetAlan" runat="server" CssClass="form-control form-g-input" Enabled="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-2">
                                        <label for="">Brüt Alan</label>
                                        <asp:TextBox ID="txtBrutAlan" runat="server" CssClass="form-control form-g-input" Enabled="false"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-2">
                                            <label for="">Fiyat</label>
                                            <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control form-g-input" Enabled="false"></asp:TextBox>
                                        </div>
                                </div>
                </div>
            </div>

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Görüşme Detayları</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="mt-4 mb-4 mr-2 ml-2 pt-2">
                    <div class="row m-0 p-0">
                        <div class="form-group col-md-3">
                            <label for="">Ad Soyad</label>
                            <asp:TextBox ID="txtAdSoyad" runat="server" placeholder="" CssClass="form-control form-g-input" Text="" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">Görüşme Tarih</label>
                            <asp:TextBox ID="txtGorusmeTarihi1" runat="server" placeholder="gg/aa/yyyy" type="text" CssClass="form-control form-g-input tarih" ></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">Gelecek Görüşme Tarihi</label>
                            <asp:TextBox ID="txtGorusmeTarihi2" runat="server" placeholder="" CssClass="form-control form-g-input tarih" type="text"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="">Görüşme Türü</label>                            
                            <asp:DropDownList ID="ddGorusmeTuru" runat="server" CssClass="form-control form-g-input formValid-g">
                          <asp:ListItem Value="0">Seçim Yapınız</asp:ListItem>
                          <asp:ListItem>Yüz Yüze Görüşme</asp:ListItem>
                          <asp:ListItem>Telefon Görüşmesi</asp:ListItem>
                          <asp:ListItem>Online Görüşme</asp:ListItem>
                      </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">Acenta(Referans)</label>
                            <asp:TextBox ID="txtAcenta" runat="server" placeholder="" CssClass="form-control form-g-input" Text="" Enabled="True"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row m-0">
                        
                            <div class="form-group col-md-3">
                                <label for="">Liste Fiyatı(TL)</label>
                                <asp:TextBox ID="txtListeFiyati" runat="server" CssClass="form-control form-g-input" Text="" Enabled="False"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="">Verilen Teklif</label>
                                <div class="d-flex">
                                        <%--<input type="text" class="form-control col-8 form-g-input border-r-right">--%>
                                    <asp:TextBox ID="txtTeklif" runat="server" placeholder="" Text="" CssClass="form-control col-8 form-g-input border-r-right money moneyValid" ></asp:TextBox> 
                                        <%--<select name="" id="" class="form-control form-g-input border-r-left">--%>
                                                <asp:DropDownList ID="ddKur" runat="server" CssClass="form-control form-g-input border-r-left">
                                <asp:ListItem Selected="True">TL</asp:ListItem>
                              <asp:ListItem>Euro</asp:ListItem>
                              <asp:ListItem>USD</asp:ListItem>
                                </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="">Satış Olasılığı (1-5 puan arası)</label>
                                <asp:DropDownList ID="ddSatisOlasiligi" runat="server" CssClass="form-control form-g-input formValid-s">
                          <asp:ListItem Value="0">Seçim Yapınız</asp:ListItem>
                          <asp:ListItem>1</asp:ListItem>
                          <asp:ListItem>2</asp:ListItem>
                          <asp:ListItem>3</asp:ListItem>
                          <asp:ListItem>4</asp:ListItem>
                          <asp:ListItem>5</asp:ListItem>
                      </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-3">
                                <label for="">Ödeme Türü</label>
                                <asp:DropDownList ID="ddOdeme" runat="server" CssClass="form-control form-g-input formValid-o">
                          <asp:ListItem Value="0">Seçim Yapınız</asp:ListItem>
                          <asp:ListItem>Vadeli</asp:ListItem>
                          <asp:ListItem>Peşin</asp:ListItem>
                          <asp:ListItem>Balon Ödeme</asp:ListItem>
                          <asp:ListItem>İş karşılığı</asp:ListItem>
                        
                      </asp:DropDownList>
                            </div>                            
                        
                        <div class="form-group col-md-12">
                            <label for="">Not</label>
                            <%--<asp:TextBox ID="txtNot" runat="server"></asp:TextBox>--%>
                            <asp:TextBox ID="txtNot" runat="server" CssClass="form-control form-g-input notResize" Rows="3" TextMode="MultiLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-3 mt-2">
                        <%--<button type="submit" class="btn btn-purple btn-g-box">Kaydet</button>
                        <button type="submit" class="btn btn-outline-secondary btn-g-box">İptal</button>--%>
                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-purple btn-g-box" Text="Kaydet" OnClick="Button3_Click"  />
                     <asp:Button ID="Button4" runat="server" CssClass="btn btn-outline-secondary btn-g-box" Text="İptal" />
                    </div>
                </div>
            </div>



            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Görüşme Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table id="mytrtable5" class="table table-bordered">
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
                                <th>Not</th>
                            <th>
                                Sözleşme Yap
                            </th>
                            </tr>
                        </thead>
                        <tbody>
                        <asp:Repeater ID="RPT_GORUSME_LISTE" runat="server">
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

                <td><%#Eval("gNOT") %> <%--<button type="button" class="openCard btn-sm btn-purple">Not</button>--%></td>
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

