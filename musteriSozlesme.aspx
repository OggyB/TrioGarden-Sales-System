<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="musteriSozlesme.aspx.cs" Inherits="musteriSozlesme" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <main>
        <div class="p-3">

            <%#Eval("PARA_BIRIMI") %>

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Sözleşme Detayları</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="mt-4 mb-4 mr-2 ml-2 pt-2">

                    

                      
                    <div class="row m-0">
                        <div class="form-group col-md-2">
                            <label for="">Sözleşme Tarihi</label>
                            <asp:TextBox ID="txtGorusmeTarihi" runat="server" placeholder="gg/aa/yyyy" CssClass="form-control form-g-input tarih sozlesmeTarih-hata" type="text"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">Daire</label>
                            <asp:TextBox ID="txtDaire" runat="server" placeholder="" CssClass="form-control form-g-input" Text="" Enabled="False"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">Verilen Teklif (<asp:Label ID="lblParaBirimi" runat="server" Text=""></asp:Label>)</label>
                            <asp:TextBox ID="txtVerilenTeklif" runat="server" placeholder="" CssClass="form-control form-g-input" Text="" Enabled="True"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="">Satış Peşinat (<asp:Label ID="lblParaBirimi2" runat="server" Text=""></asp:Label>)</label>
                            <asp:TextBox ID="txtPesinat" runat="server" placeholder="" CssClass="form-control form-g-input money" Text="0"></asp:TextBox>
                        </div>
                        
                       
                    </div>
                     <div class="row m-0">
                    <div class="form-group col-md-2" id="Panel1" runat="server">
                       <label for="">Taksit Tarihi</label>
                        <asp:TextBox ID="txtTaksitTarihi" runat="server" placeholder="gg/aa/yyyy" type="text" CssClass="form-control form-g-input tarih taksitTarih-hata"></asp:TextBox>
                        
                        
                        
                    </div>
                           <div class="form-group col-md-2" id="Div1" runat="server">
                                <label for="">Taksit Meblağ</label>
                               <asp:TextBox ID="txtTaksitMeblag" runat="server" CssClass="form-control form-g-input money taksitMeblag-hata" Text="0"></asp:TextBox>
                               </div>
                          <div class="form-group col-md-2" id="Div4" runat="server">
                                <label for="">Kalan Meblağ</label>
                               <asp:TextBox ID="txtKalanMeblag" runat="server" CssClass="form-control form-g-input" Enabled="false" Text="0"></asp:TextBox>
                               </div>
                          
                          
                             
                         <div class="form-group col-md-3" id="Panel2" runat="server">
                    </div>
                         </div>
                    <div class="row m-0">
                          <div class="form-group col-md-4" id="Div3" runat="server">
                              
                                  <asp:Button ID="Button2" runat="server" Text="[ + ] Manuel Ekle" OnClick="Button2_Click" CssClass="btn btn-purple btn-g-box manEkle-hata" />
                                  <asp:Button ID="btnArtimli" runat="server" Text="[ + ] Otomatik Ekle" CssClass="btn btn-purple btn-g-box otoEkle-hata" OnClick="btnArtimli_Click" /><br />
                                  <div class="mt-3">
                                      <asp:Label ID="lblHataliEkleme" CssClass="text-danger fw-500" runat="server"></asp:Label> 
                                  </div>
                                  </div>
                
                              </div>
                      <div class="row m-0">
                          <div class="form-group col-md-2" id="Div2" runat="server">
                               <asp:GridView ID="GridView1" runat="server" Width="500px" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowCommand" CssClass="text-center" >
                                   
                                   <Columns>
                              
                                       <asp:CommandField ShowDeleteButton="True" ButtonType="Button" ControlStyle-CssClass="btn btn-danger pt-1 pb-1 pl-2 pr-2"  />
                                       
                                            
                                       
                                   </Columns>

                               </asp:GridView>
                               </div>
                          </div>
                    <%#Eval("TARIH") %>

                    <div class="row m-0 p-0 col-md-6">
                            <div class="form-group col-md-6 mt-13">
                                <label for="">TC Kimlik No</label>
                                <asp:TextBox ID="txtKimlikNo" runat="server" CssClass="form-control form-g-input"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6 mt-13">
                                <label for="">Vergi Dairesi (Varsa)</label>
                                <asp:TextBox ID="txtVergiDairesi" runat="server" Text="----" CssClass="form-control form-g-input"></asp:TextBox>
                            </div>
                        </div>

                      <div class="form-group col-md-4">
                            <label for="">Adres</label>
                            <asp:TextBox ID="txtAdres" runat="server" TextMode="MultiLine" rows="5" CssClass="form-control form-g-input notResize"></asp:TextBox>
                        </div>
                   
                    <div class="col-md-3 mt-2">
                        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" Visible="false"></asp:Button>
                        <asp:Button ID="btnKaydet" runat="server" CssClass="btn btn-purple btn-g-box" Text="Tamam" OnClick="btnKaydet_Click"  />
                     <asp:Button ID="btnIptal" runat="server" CssClass="btn btn-outline-secondary btn-g-box" Text="İptal" />
                    </div>

                       

                </div>
            </div>

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <div style="position: relative">
                    <%#Eval("TUTAR") %>
                    <asp:Button runat="server" CssClass="btn btn-purple btn-g-box btn-print no-print" Text="Yazdır" OnClientClick="jQuery('#ciktial').print(); return false;"></asp:Button>
                </div>
                <%---<%#Eval("PARA_BIRIMI") %>--%>
                    <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">SÖZLEŞME ve DETAYLARI</h5>
                <div class="p-3">
                    <div style="font-size:14px;" id="ciktial">
          <div class="row">
            <div class="col-lg-12 mb-4">
              <h3 style="margin-top:.75rem;" class="text-black"> SÖZLEŞME ve DETAYLARI <span class="pull-right"></span> </h3>
            </div>
            <!-- /.col --> 
          </div>
          <!-- info row -->
          <div  class="mb-3">
              <table class="w-100">
    <tr>
        <td style="width:35%;">
            <b> Müşteri Ad Soyad : </b>
        </td>
        <td>
            <b>Adres : </b>
        </td>
    </tr>
                  <tr>
        <td>
            <address>              
              <asp:Label ID="lblAdSoyad" runat="server" Text="Boş Bırakmayınız"></asp:Label>
              </address>
        </td>
        <td>
            <address>
            <asp:Label ID="lblAdres" runat="server" Text="Boş Bırakmayınız"></asp:Label>
                </address>
        </td>
    </tr>
</table>
            
            <!-- /.col -->
              <%#Eval("NO") %>
            <!-- /.col -->
              
             
          </div>
                <div class="col-md-12 col-lg-6 m-1">
              <p class="lead m-1">Özet Bilgi</p>
              <div class="table-responsive text-left">
                <table class="table">
                  <tbody><tr>
                    <th style="border-bottom:1px solid rgba(100, 100, 100, .1);" >Toplam Bedel :</th>
                     <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" >:</td>
                    <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" >
                  <asp:Label ID="lblToplamBedel" runat="server" Text=""></asp:Label></td>
                  </tr>
                  <tr>
                    <th style="border-bottom:1px solid rgba(100, 100, 100, .1);" >Peşinat</th>
                      <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" >:</td>
                    <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" ><asp:Label ID="lblPesinat" runat="server" Text=""></asp:Label></td>
                  </tr>
                         <tr>
                    <th style="border-bottom:1px solid rgba(100, 100, 100, .1);" >Ilk Taksit</th>
                             <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" >:</td>
                    <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" ><asp:Label ID="lblIlkveSonTaksit" runat="server" Text=""></asp:Label></td>
                  </tr>
                      <tr>
                    <th style="border-bottom:1px solid rgba(100, 100, 100, .1);" >Taksit Sayısı </th>
                          <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" >:</td>
                    <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" ><asp:Label ID="lblTaksitSayisi" runat="server" Text=""></asp:Label></td>
                  </tr>
                  <tr>
                    <th style="border-bottom:1px solid rgba(100, 100, 100, .1);" >Taksit Toplam Bedel </th>
                      <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" >:</td>
                    <td style="border-bottom:1px solid rgba(100, 100, 100, .1);" ><asp:Label ID="lblTaksitToplamBedel" runat="server" Text=""></asp:Label></td>
                  </tr>
                  
                </tbody></table>
              </div>
            </div>
          <!-- /.row --> 

             
       
          
          <div style="border-radius:5px;box-shadow: 0 0 10px 1px rgba(0, 0, 0, .2);" class="row m-t-3"> 
            <!-- accepted payments column -->
              <table style="margin-bottom:743px;">
                <tr>
                    <td style="width:45.8%;padding:0 15px;border-right:1px solid black;border-bottom:1px solid black;text-align:justify;" >
                        <div>
                        <div style="text-decoration:underline" class="text-center mt-2"><strong>GAYRİMENKUL SATIŞ VAADİ SÖZLEŞMESİ</strong></div>
                        
               
                <p class="well well-sm no-shadow" style="margin-top: 10px;">
                    
  
  
  
  
  
                    <strong style="text-decoration:underline">Madde 1- TARAFLAR</strong><br /><br />
  
  İşbu Gayrimenkul Satış Vaadi Sözleşmesi (aşağıda kısaca SÖZLEŞME olarak anılacaktır) , İSTANBUL Ticaret Sicil Müdürlüğü’ne 291540. Ticaret sicil numarası, MARMARA KURUMLAR Vergi Müdürlüğü’ne 7180033813 vergi numarası ile kayıtlı www.ozyurtas.com.tr.  Web sitesi sahibi   İkitelli  O.S.B.. Mutfakçılar  M11 Bl.Sk.Dış kapı no:1 Başakşehir/ İstanbul adresinde mukim ÖZYURT MADENCİLİK İNŞAAT SAN.VE TİC.A.Ş. (aşağıda kısaca SATICI olarak anılacaktır) ile <asp:Label ID="lblTcKimlikNo" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label> T.C. Kimlik numaralı / Pasaport Numaralı, <asp:Label ID="lblVergiDairesi" runat="server" Text="----"></asp:Label> Vergi Müdürlüğü’ne ---- vergi numarası  ile kayıtlı <asp:Label ID="lblAdresSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="true"></asp:Label> İstanbul adresinde mukim <asp:Label ID="lblAdSoyadSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="true"></asp:Label>.(aşağıda kısaca ALICI olarak anılacaktır) arasında aşağıda yazılı hüküm ve şartlarda <asp:Label ID="lblTarihSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label> &nbsp;tarihinde imzalanmıştır.<br/>
  İşbu sözleşmede SATICI ve ALICI tek tek (Taraf) birlikte (Taraflar) olarak anılacaklardır. <br /><br />
  
   
  <strong style="text-decoration:underline">MADDE 2- SÖZLEŞMENİN KONUSU</strong><br /><br />
  
  İşbu sözleşme ile SATICI, üzerinde konut, sosyal tesis, ticari bağımsız bölümler inşa etme ve satma hakkına
sahip olduğu, İstanbul İli, <strong>Esenyurt</strong> İlçesi, <strong>Zafer Mahallesi, 144</strong> Sokak, <strong>F21D24C1B-C-D</strong> pafta, <strong>2761</strong> ada <strong>20</strong>
parsel de yer alan ve <strong>TRIO GARDEN</strong> adıyla maruf sitede (aşağıda kısaca site olarak anılacaktır) sözleşmede
yazılı koşullar dahilinde <asp:Label ID="lblBagimsizBolumSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="true"></asp:Label> No’lu Bağımsız Bölümün (aşağıda kısaca konut/daire/bağımsız bölüm olarak
anılacaktır) inşasını ve ilgili konutun ALICI’ya satışını vaad etmiş ve ALICI da mezkûr konutu satın almayı vaad
etmiş olup, işbu sözleşme; sözleşme konusu işbu vaatler çerçevesinde satış bedelinin ödeme koşulları, bağımsız
bölümün teslimi ve tapuda mülkiyetinin devredilmesine ilişkin şartların düzenlenmesi hususlarında tarafların
karşılıklı hak ve yükümlülüklerini düzenleme üzere akdedilmiştir. <br/>
  
  ALICI, sözleşmeye konu konut dışında projede yer alan diğer yapı ve eklentileri ile ilgili mülkiyet hakkı dahil
hiçbir hak ve talebinde bulunmayacağını kabul ve taahhüt eder. SATICI’ nın, taahhüdü ALICI'ya satışı vaat
edilen bağımsız bölüm ve yine sözleşmede açık olarak inşaa ve ikmali taahhüt edilmiş olan alan ile sınırlıdır. Bu
nedenle sözleşmede ALICI'ya taahhüt edilmediği halde, Esenyurt Belediyesi'nde onaylı projede olduğundan
bahisle ALICI’dan ortak alan ve mahallere ilişkin herhangi bir imalat ve inşaatın talebi ve taahhüdünden
bahsedilmez. SATICI sözleşme ve eki projelerde bazı özelliklerin olmamasına rağmen, satış aşamasında
kullanılan broşür, resimlememe gibi görsellerde kimi opsiyonel farklı özellikleri gösterilebilir. Yine bu görseller
her türlü renk ve/veya malzeme değişikliği yapma hakkını SATICI saklı tutar.<br/><br/><br/>
  
  <strong>MADDE 3- SATIŞ VAAD EDİLEN TAŞINMAZ:</strong>
  
  <table>
      <tbody style="font-weight:900">
          <tr>
              <td>Projenin Adı</td>
              <td class="pl-2 pr-2" >:</td>
              <td>TRIO GARDEN</td>
          </tr>
          <tr>
            <td>İli</td>
            <td class="pl-2 pr-2" >:</td>
            <td>İstanbul</td>
        </tr>
        <tr>
            <td>İlçesi</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Esenyurt</td>
        </tr>
        <tr>
            <td>Mahallesi</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Zafer</td>
        </tr>
        <tr>
            <td>Sokağı</td>
            <td class="pl-2 pr-2" >:</td>
            <td>144</td>
        </tr>
        <tr>
            <td>Pafta</td>
            <td class="pl-2 pr-2" >:</td>
            <td>F21D24C1B-C-D</td>
        </tr>
        <tr>
            <td>Ada ve parsel No</td>
            <td class="pl-2 pr-2" >:</td>
            <td>2761 ve 20</td>
        </tr>
        <tr>
            <td>Blok No</td>
            <td class="pl-2 pr-2" >:</td>
            <td>
                <asp:Label ID="lblBlokNoSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Kat No</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblKatNoSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Konut Bağımsız Bölümü</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblKonutBagimsizBolum" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Oda Sayısı</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblOdaSayısı" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Konutun Metrekaresi</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblKonutMetreKare" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label> m2</td>
        </tr>
      </tbody>
  </table><br /><br />
  
  <strong style="text-decoration:underline">MADDE 4- SATIŞ BEDELİ VE ÖDEME</strong><br /><br />
  
                    <strong>4.1.</strong> Bağımsız bölümün, Vergi, Resim, Harç, masraflar ile sözleşmenin diğer hükümlerinden doğan giderleri hariç olmak üzere, <br /><br />
  <table>
      <tbody>
        <tr>
            <td>PEŞİN SATIŞ BEDELİ</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblPesinSatisBedeliSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>VADELİ SATIŞ BEDELİ</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblVadeliSatisBedeliSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>PEŞİNAT MİKTARI</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblPesinatMiktariSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>VADE SÜRESİ</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblVadeSuresiSozlesme" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
      </tbody>
  </table><br />
   
  
                    <strong>4.2.</strong> Sözleşme konusu konutun anahtar teslimi suretiyle peşin ve/veya vadeli satış bedeline, Katma Değer Vergisi
dahil değildir. (aşağıda satış bedeli olarak anılacaktır). Satılan bağımsız bölüme ait KATMA DEĞER VERGİSİ
(KDV) satış bedelinden ayrı olarak ALICI tarafından ödenecektir. KDV oranlarında meydana gelecek
değişiklikler ALICI'ya aynen yansıtılacaktır. KDV’nin süresinde ödenmemesi halinde ALICI KDV miktarını
%10 fazlası ile birlikte SATICI’ya ödeyeceğini, kabul, beyan ve taahhüt eder.<br /> 
  
                    <strong>4.3.</strong> Dövizli ödemelerde borç, döviz olarak ödenir. ALICI talep ederse: borç Merkez bankası efektif satış kuru
üzerinden Türk Lirasına çevrilerek ödeme yapılabilir. Satış bedeli; satışa konu konuta ait arsa payı, inşaat
masrafları, SSK primleri, alt yapı, çevre ve sosyal tesis düzenlemeleri esas alınarak belirlenmiş olup, ALICI’ nın
bu hususa hiçbir itirazı bulunmamaktadır. <br /> 
  
                    <strong>4.4.</strong> ALICI'nın bu sözleşmeye konu bağımsız bölümün peşinatlarını, kaparosunu ve taksitlerini bu sözleşmedeki
ödeme planı ve taahhütnamesinde belirlenen zamanlarında ve ödeme şartlarında SATICI’ nın merkezinde
nakden ödeyerek veya SATICI’ nın belirlediği banka hesaplarına ödeyecektir. ALICI, her türlü ödemelerini bu
sözleşmede belirtilen vadelerde yapmak zorundadır.<br />
  
                    <strong>4.5.</strong> ALICI, bir önceki ayın taksiti ödememiş ise, bundan sonra yapılacak ödeme öncelikle ödenmeyen ayın
taksitine mahsuben ödenmiş kabul edilecektir. <br />
  
                    <strong>4.6.</strong> ALICI, borç ve taksitlerin ödenmesini, satıcının edimlerini yerine getirmemesi nedeniyle geciktiremez.
ALICI sözleşmeden doğan haklarını talep edilmesi için borç ve yükümlülüklerini sözleşme ve eklerinde yazılı
vadelerde yerine getirmiş olmalıdır. Ayrıca ödemelerindeki aksamaların süresi kadar bu sözleşmede yazılı
bağımsız bölümün teslim süresi uzatılabilir. ALICI tarafından yapılan ödemelerde dönemsellik esastır. Buna göre,
taksitlendirilmiş borç ve/veya faizlerden herhangi birisinin ödenmesi, önceki borç taksitleri ve /veya faizlerinin
ödenmiş olduğu anlamında değerlendirilemez. ALICI, borç taksitleri ve/veya faizlerinin ödemiş olduğunu ayrı
ayrı ispatlamak zorundadır.<br />
  
                    <strong>4.7.</strong> ALICI belirlenen peşinatları, ara ödemelerini, kaparoyu ve taksitlerini zamanında ödememesi halinde,
geciken her ay için TEFE – ÜFE ortalamasından az olmamak üzere yıllık % 18 (yüzde onsekiz) oranında
gecikme faizini SATICI’ ya ödeyeceğini kabul ve taahhüt eder.<br />
  
                    <strong>4.8.</strong> ALICI, birbirini takip eden en az iki taksitini ödemede temerrüde düşer veya zamanında ödemez veya
ödenmeyen taksit tutarı toplam satış bedelinin en az on da biri kadar olur ve/veya alıcının, birbirini takip etmese
dahi, dört farklı taksitini gününde ödememesi halinde ise, bakiye alacakların tamamı muaccel hale gelir. SATICI,
işbu maddeye göre muaccel olan bakiye alacakların tamamını alıcıdan talep etme hak ve yetkisine sahiptir.
Taksitlerin ve/veya peşinat veya ara ödemelerin tediyesi anlamında ya da başka bir ödeme amacıyla, SATICI,
ALICI'dan almış olduğu emre muharrer senetlerin birbirini takip eden ikisinin ödenmemesi veya protesto
edilmesi halinde de bundan sonraki tüm alacaklar muaccel hale gelir ve alacaklı bu alacakların tümünü talep etme
hak ve yetkisine sahiptir.<br />  
  
                    <strong>4.9.</strong> Alıcı, bu sözleşmeyi madde madde satıcı ile müzakere ettiğini, incelediğini ve içeriğini madde madde kabul
ettiğini ve bu kapsamda sözleşmenin hiçbir maddesinin 6502 sayılı Tüketicinin Korunması Hakkında Kanun’un
5. maddesindeki belirtilen haksız şart kapsamına girmediğini kabul ve taahhüt etmektedir. <br />
  
                    <strong>4.10.</strong> Yukarıdaki hükümler gereğince borcun muaccel hale gelmesi halinde, ALICI 15 (onbeş) gün içinde muaccel
hale gelen borcun tümünü akdi faizi ve bu sözleşmede kararlaştırılan gecikme tazminatı ile birlikte SATICI’ ya ilk
talep tarihinde ödeyecektir.<br />
  
                    <strong>4.11.</strong> SATICI, yukarıdaki hükümler gereğince muaccel hale gelen alacağını talep etmesi ve ALICI'nın bu borcu
15 (onbeş) gün ödenmemesi halinde SATICI, bu alacağını yasal yollarla tahsil etme hakkına sahiptir.<br />
  
                    <strong>4.12.</strong> ALICI’nın temerrüdü sonrasında SATICI’nın yasal yollara başvurmamış olması da, ALICI’ya bir hak
kazandırmaz ve temerrüdünü ortadan kaldırmaz. <br />

  <strong>4.13.</strong> ALICI ödemelerini SATICININ <asp:Label ID="lblBankaSubeTR" runat="server" Text="Boş Bırakmayınız"></asp:Label> Şubesi'ndeki <asp:Label ID="lblParaBirimiBankaTR" runat="server" Text="Boş Bırakmayınız"></asp:Label> hesabı <asp:Label ID="lblSwiftBankaTR" runat="server" Text="Boş Bırakmayınız"></asp:Label> Numaralı Swift ve <asp:Label ID="lblIBANBankaTR" runat="server" Text="Boş Bırakmayınız"></asp:Label> IBAN numaralı hesabına yatıracaktır. <br /><br />
  <strong style="text-decoration:underline">MADDE 5- KONUTUN TESLİMİ</strong> <br /><br />
  
                    <strong>5.1.</strong> İşbu sözleşme konusu konutun teslimi, mücbir sebepler, beklenmeyen haller ve işbu sözleşmede belirtilen
istisnai haller dışında 2021 yılının sonunda alıcıya anahtar teslimi şeklinde teslim edecektir. SATICI herhangi bir
tazminat vs bedel söz konusu olmaksızın bu tarihi 6 ay süre ile uzatabilir. Teslimi yapılacak bağımsız bölüm
sayısının çokluğu nedeni ile aynı gün tüm bağımsız bölümlerin ALICI'lara fiilen tesliminin olanaksız hale gelmesi
teslimin geciktiği anlamına gelmez.<br /> 
  
                    <strong>5.2.</strong> SATICI taşınmazı, taşınmazın teslimi için belirlenen tarihten itibaren 6 ay içinde teslim edemezse, bu 6 ayın
bittiği tarihten itibaren teslim edemediği her ay için taşınmazı teslim tarihine kadar geçen sürede ALICI’ ya m2
başına 5 TL (m2x5TL=Aylık ödenecek cezai şart tutarı) cezai şart ödeyecektir.<br /> 
  
                    <strong>5.3.</strong> SATICI’nın, ALICI’nın konutu teslim alması için ALICI’yı yazılı olarak davet etmesinden itibaren 7 (yedi)
gün içinde, ALICI, bilfiil kendisi veya belirleyeceği bir vekil aracılığı ile işbu sözleşmeye ve teknik şartnameye
uygun olduğunu kontrol ederek konutu teslim almak zorundadır. ALICI bağımsız bölümü teslim tesellüm belgesi
ile teslim alacaktır. ALICI’nın birden fazla olması halinde ALICI’lardan birine yapılan teslim, tüm ALICI’lara
yapılmış sayılır. ALICI tarafından ödenmesi öngörülen (vergi, harç, resim, abonman bedelleri v.b.) tüm
ödemelerin yapılmış, sigorta poliçesinin yaptırılmış, bağımsız bölüm vekil aracılığı ile teslim alınacaksa usulüne
uygun düzenlenen vekaletname ve Sözleşme eki olan tüm belgelerin SATICI’ya ibraz edilmiş olması gerekir.
ALICI’nın belirtilen yükümlüklerini yerine getirmemesi halinde bağımsız bölüm ALICI’ya teslim edilemez ise
ALICI hiçbir nam altında herhangi bir hak ve alacak iddiasında bulunamaz.<br />
  
                    <strong>5.4.</strong> ALICI, vaki davet üzerine konutu teslim alır. Varsa; SATICI ile eksik ve kusurlu işlerin tespiti yapılır.
Konutun teslim günü dahil olmak üzere 5 iş günü içinde eksik ve kusurlu işlerin tespitinde mutabık kalınır Bu
süre içerisinde eksik ve kusurlu iş tespit edilmezse ALICI taşınmazı eksiksiz ve kusursuz olarak teslim aldığını
kabul ve beyan eder.<br />
  
  Eğer eksik ve kusurlu işlerin Tespiti söz konusu olursa bu tespiti müteakip eksik ve kusurlu işlerin düzeltilmesi
için SATICI tarafından yeterli bir süre tayin edilir. ALICI hiçbir surette bu süreye itiraz edemez ve eksik ve
kusurların giderilmesi için tayin edilen süre gecikme olarak mütalaa edilmez ve ALICI herhangi bir şekilde
gecikme ya da temerrüt faizi gibi bir tazminat, zarar ve ziyan talebinde bulunamaz teslim esnasında tamirat
ihtiyaçları olduğunun tespiti halinde, ALICI söz konusu tamirat ihtiyacını sebep göstererek teslim almaktan
imtina etmeyeceğini beyan, kabul ve taahhüt eder. ALICI’nın ortak giderlerden doğan sorumlulukları bu halde de
geçerlidir.<br /> 
  
                    <strong>5.5.</strong> Bu haller dışında ALICI’nın bağımsız bölümü teslim alması ve teslim günü dahil olmak üzere 5 iş günü
içinde bir itirazı olmaması durumunda bağımsız bölüm ALICI’ya her türlü ayıptan ari olarak teslim edilmiş olarak
kabul edilecek ve ALICI buna dayanarak SATICI’dan ne nam altında olursa olsun tazminat, cezai şart vs bedel
iadesi talep etmeyecek ve bu yöndeki tüm dava haklarından feragat etmiş sayılacaktır. ALICI bu tarihten sonra
6502 sayılı Tüketicinin Korunması Hakkındaki Kanun’una dayanarak herhangi bir hak ve talepte
bulunmayacağını kabul ve taahhüt etmiştir.<br />
  
                    <strong>5.6.</strong> ALICI’nın, SATICI’nın yapacağı vaki davete 15 (onbeş) gün içerisinde icabet etmemesi veya icabet etmesine
rağmen konutu her ne nedenle olursa olsun teslim almaması halinde dahi ALICI ilgili yazılı davet tarihinden
itibaren siteye ait her türlü yönetim ve ortak masraflara katılmak zorundadır. Ancak bu maddede öngörülen iki
durumda da SATICI, daire bedelini tamamen tahsil etmiş olması halinde, söz konusu konutu yediemin sıfatıyla
muhafaza edecektir. SATICI bu sıfatla konutun bakım ve muhafazasını temin etmek ile yükümlü değildir.
SATICI bu hizmeti mukabilinde her gün için dairenin rayiç değerinin ‰ 1 (BindeBir) oranında yediemin ücreti alacaktır.
ALICI, bakım, muhafaza ve sigorta için yapılan masraflar ile ortak gider masraflarını fiili ödeme gününden
itibaren aylık % 10 gecikme cezası ile birlikte ödeyecektir.<br />
  
                    <strong>5.7.</strong> SATICI’nın tüm bu alacaklar için rehin hakkı vardır. SATICI davet tarihinden itibaren 1 yıl içinde teslim
alınmayan daireleri muhafaza ile yükümlü değildir. SATICI’ nın bu halde işbu sözleşmeden tek yanlı irade beyanı
ile tazminat, cezai şart vs her ne nam altında olursa olsun bir bedel ödemeksizin dönmeye yetkilidir. SATICI’ nın
mevzuattan doğan diğer hakları saklıdır. Sözleşmenin bu şekilde feshi halinde SATICI satış bedelinin fesih
tarihine kadar ödenmiş olan kısmını işbu sözleşmenin 8.3. maddesindeki hükümlere göre ALICI ya ödeyecek
olup, anılan madde gereği SATICI’ nın bundan kaynaklı zararlarını tazmin hakkı saklıdır.<br /> 
  
  
                    <strong>5.8.</strong>  Elektrik, Su, Doğalgaz temin eden Kamu/özel kurum ve kuruluşlardan kaynaklanan gecikmeler, aksaklıklar,
SATICI’ nın tasarrufunda bulunmadığı için bu durumlar fiziki eksiklik olarak kabul edilmeyecek ve teslim
süresini etkilemeyecektir. ALICI bunları ileri sürerek bağımsız bölümü teslim almaktan imtina edemez. Bağımsız
bölüm SATICI tarafından Elektrik, su, doğalgaz, telefon, internet vs. hizmetlerini talep etmeye hazır bir halde
alıcıya teslim edecek, bu mal ve hizmetleri temin eden kamu ve özel kurum ve kuruluşların alt yapı eksikliğinden
kaynaklanan ve yapı kullanma izin belgesi alınmasına kadar geçen süre içinde suyun ve elektriğin şantiye
tarifesinden olması, eksik veya kusur olarak kabul edilmeyecektir. ALICI şimdiden bu husus kabul ve beyan
etmiştir.<br />
  
                    <strong>5.9.</strong> Taşınmazın teslimi ile birlikte hasar ve zarar ALICI ya geçer. Teslimden sonra taşınmaz ile ilgi ödenmesi
gereken her türlü emlak, çevre temizlik vs. vergi harç ve masraflar ALICI tarafından karşılanacaktır. <br />
  
                    <strong>5.10.</strong> ALICI'nın bağımsız bölümü teslim alması veya almış sayılması ile birlikte Kat Mülkiyeti Kanunu gereği ve
Yönetim Planı Doğrultusunda, Malik ve Malik yerine geçen kişilere yüklenen tüm yükümlülüklerden sorumlu
olacaktır. Teslimden önce oluşmuş bulunan geçici yönetimin işletme projesi doğrultusunda talep edeceği gider
avanslarını da ALICI ödemeyi kabul ve taahhüt etmiştir.<br /> 
  
                    <strong>5.11.</strong> Bağımsız bölümü teslim almış sayılan ALICI, teslim tarihinde kendi bloğu gibi, diğer bölümler de dâhil
projenin tümünde, inşaat faaliyetlerinin 7 gün 24saat devam etmesi nedeniyle, ses, gürültü olabileceğini, fiziki
görünümü görerek kabul ettiğini, inşaat sahasına girmesinin tehlikeli olduğunu bildiğini ve bunun bir eksiklik ve
kusur/ayıp sayılmayacağını şimdiden kabul etmiştir.<br />
  
                    <strong>5.12.</strong> SATICI, işbu Sözleşmede yer alan mücbir sebeplerin söz konusu olması halinde, işbu nedenlerin ortadan
kalktığı zamana kadar, bağımsız bölümün teslimi ile mükellef değildir. Bu hallerde, teslim tarihine, mücbir
sebebin devam ettiği süre kadar ilave süre eklenir. Ayrıca projenin icrası esnasında karşılaşılan ve teslim süresinin
gecikmesine yol açabilecek teknik ve hukuki zorluklar nedeniyle ALICI, SATICI’dan herhangi bir hak ve
tazminat iddiasında bulunmayacağını beyan, kabul ve taahhüt eder.<br /><br /><br/>
  
  
  <strong style="text-decoration:underline">MADDE 6- TAPUNUN DEVRİ</strong><br /><br />
  
  ALICI'nın tüm taksitlerini, sözleşme gereğince istenecek diğer ödemelerin tümünü ifa etmesi ve bu sözleşme
gereğince SATICI’ ya herhangi bir borcu kalmaması ve ALICI'nın bilumum vergi, tapu, iskan raporu, resim
harcı, KDV ve tüm masraflarını ödemesi ve bu sözleşmeden kaynaklanan diğer tüm yükümlülüklerini yerine
getirmesi halinde, bağımsız bölümün tapusu ALICI’ ya devredilecektir.<br /><br /> 
  
  <strong style="text-decoration:underline">MADDE 7- SATICININ HAK VE YÜKÜMLÜLÜKLERİ</strong><br /><br />
  
                    <strong>7.1.</strong> SATICI, konutu işbu sözleşmenin Mücbir Sebep başlıklı maddesinde yazılı nedenler hariç Ek de yer alan
Teknik Şartname’de belirtilen koşullara uygun olarak tamamlayarak ALICI’ ya anahtar teslimi suretiyle teslim
edecektir.<br />
  
                    <strong>7.2.</strong> SATICI, işbu sözleşmenin tanziminden sonra resmi kurumlardan kaynaklanan zorunluluklar nedeni ile
belirtilen bağımsız bölümlerin brüt alanı, konumu ve katı değişmemesi şartı ile projelerinde aynı kaliteyi muhafaza
etmek kaydı ile Teknik Şartnamede ve Vaziyet Planında değişiklik yapılabilir.<br />
  
                    <strong>7.3.</strong> ALICI'nın tüm taksitlerini, sözleşme gereğince istenecek diğer ödemelerin tümünü ifa etmesi ve bu
sözleşme gereğince SATICI’ ya herhangi bir borcu kalmaması ve ALICI'nın bilumum vergi, tapu, iskan raporu,
resim harcı, KDV ve tüm masraflarını ödemesi ve bu sözleşmeden kaynaklanan diğer tüm yükümlülüklerini
yerine getirmesi şartı ile kat mülkiyeti tapusunu ALICI’ya teslim edecektir. <br />
  
                    <strong>7.4.</strong> SATICI yapı kullanma izin belgesinin (iskan) alınması ile ilgili başvuruları yapacak ancak ALICI iskanla ilgili
satıcıya baskı yapmayacak, bunlardaki gecikmelerden veya duraksamadan dolayı ALICI, SATICI’dan her ne nam
altında olursa olsun zarar, ziyan ve tazminat talep edemeyecektir. İdari zorunluluklar nedeni ile iskan alınamaması
halinde ALICI, SATICI’dan her ne nam altında olursa olsun hiçbir bedel, tazminat, zarar ve ziyan talebinde
bulunmayacağını kabul, beyan ve taahhüt etmektedir. <br />
  
                    <strong>7.5.</strong> SATICI, dilediği ebat ve metinde reklam, yazı ve panolarını inşaatın/sitenin uygun yerlerine koyabilecektir
Satışa sunulan bağımsız bölümün bulunduğu proje ile ilgili olarak SATICI tarafından yayınlanan her türlü afiş,
maket, broşür, el ilanı, vb. yayınlarda kullanılan ifadeler tanıtım ve bilgi mahiyetinde olup, taahhüt niteliğinde
değildir. ALICI, işbu tanıtımlara dayanarak SATICI’dan her ne nam altında olursa olsun herhangi bir şey talep
etmeyecektir.<br /><br /> 
  
<strong style="text-decoration:underline">MADDE 8-ALICININ HAK VE YÜKÜMLÜLÜKLERİ</strong><br /><br />
  
                    <strong>8.1.</strong> ALICI, SATICI’nın talebi halinde konut ile ilgili olarak her türlü tatbikat ve tadilat projeleri çizdirmek tapuda
leh ve aleyhte şahsi ve ayni irtifak hakkı kurmak, cins tashihi yaptırmak kat irtifakını kat mülkiyetine çevirmek,
iskan ruhsatı almak, kat irtifakını terkin ettirmek yeniden kat irtifakı kurmak, tadilat projelerini tasdik ettirmek,
yönetim planının tadil ettirmek, konutun ve/veya sitenin bakım onarım, güvenlik hizmetlerinin yürütülmesi, 3.
kişilerle hizmet ve işletmecilik sözleşmeleri akdetmek, elektrik, su, doğalgaz, kanalizasyon bağlantılarını yapmak,
resmi ve özel kuruluşlar nezdinde bu konular ile ilgili tüm işlemlerin yürütülebilmesi için belediye başkanlığı, imar
müdürlüğü, TEDAŞ, İGDAŞ, İSKİ ,Emlak Vergi Dairesi, Harçlar Vergi Dairesi’nde işlem yapmak üzere
SATICI’nın göstereceği kişilere gerekli ve yeterli yetkileri içeren vekaletnameyi SATICI’ya verecektir. Ayrıca işbu
vekaletname içerisinde ALICI, bağımsız bölümün yer aldığı yapının mimari projesi kapsamında bağımsız bölüm
sayısının arttırılması, bağımsız bölümlerde değişiklik yapılması ve bunlarla sınırlı kalmamak üzere sair tüm
tasarruflarda bulunmaya ve her türlü değişikliği yapmaya, yapılan tasarruflara ve değişikliklere muvafakat etmeye,
bu yönde müteahhit şirket veya site Yönetim Kurulu tarafından alınacak tüm kararların uygulanması için gerekli
tüm yükümlülükleri yerine getirmeye ve bu doğrultuda Tapu Sicil Müdürlüğü ve İlgili Belediyeler nezdinde
muvafakatname vermeye yetkili olmak üzere SATICI’ya mezkur yetkiler yer alacak ve işbu sözleşmenin eki olarak
kabul edilecektir. <br /> 
  
                    <strong>8.2.</strong> Konutların tesliminden sonra elektrik, su, doğalgaz aboneliğini yaptırmak ve bunlarla ilgili idarelerce
istenecek her türlü giderler ALICIYA aittir. ALICI, konutunun bulunduğu alan bir site bütünlüğü içinde
kullanılacağından; çevre bakımı, onarımı, güvenliği ve sosyal tesislerin işletilmesi için gerekirse komşu parsel
malikleriyle ve üçüncü kişi veya kuruluşlarla yapılacak sözleşmeleri aynen kabul etmiştir. Bu husus yönetim
planında da düzenlenecektir. ALICI, bu amaçla gerek üçüncü kişilerle ve gerekse komşu parsel malikleri ile
yapılacak sözleşmelere aynen uyacak, giderlere katılacak ve taşınmazın tapuda maliki olurken bu sözleşmeleri ciro
yoluyla devralarak aktin doğrudan tarafı haline gelecektir. Alıcı konutun kendisine tesliminden itibaren, kat
mülkiyetine geçilmemiş olsa dahi ortak giderlere katılmakla yükümlüdür.<br />
  
                    <strong>8.3.</strong> Sözleşmenin SATICI tarafından tek yanlı irade beyanı ile feshedilmesi halinde ALICI, kendisi tarafından
fesih tarihine kadar ödenmiş bedellerin faizsiz olarak, fesih tarihini takip eden 15. günden başlamak üzere 10
taksitle ödeneceğini kabul ettiğini beyan eder. Sözleşmenin bu şekilde feshi halinde, SATICI’nın akitten ve
mevzuattan kaynaklanan diğer hakları saklı kalmak kaydıyla; ALICI, SATICI’nın fesihten doğan ve SATICI
tarafından tek taraflı olarak tespit edilen tüm zararlarını da ayrıca ödemek zorundadır. SATICI’nın uğradığı zarar
kalemlerinin SATICI’nın, ALICI’ya geri ödeyeceği miktardan SATICI tarafından resen mahsup edileceğini kabul
beyan ve taahhüt etmiştir. SATICI’nın ALICI’ya iade edeceği miktarın bu tutarının altında olması durumunda
SATICI’nın bakiyeyi talep etme hakkı saklıdır.<br /> 
  
                    <strong>8.4.</strong> SATICI, satış bedelini ödemede temerrüde düşmüş olan ALICI’dan, bu bedel ile satılanın başkasına
dürüstlük kurallarına uygun olarak satışından elde ettiği bedel arasındaki farka göre hesaplanacak zararın
giderilmesini isteyebilir. Bu tazmin tutarı satış bedelinin % 5’inden az olamaz. ALICI söz konusu tutarın ve
SATICI’nın uğradığı zarar kalemlerinin SATICI’nın, ALICI’ya geri ödeyeceği miktardan SATICI tarafından resen
mahsup edileceğini kabul beyan ve taahhüt etmiştir. SATICI’nın ALICI’ya iade edeceği miktarın bu tutarının
altında olması durumunda SATICI’nın bakiyeyi talep etme hakkı saklıdır. Sözleşmenin feshi tarihinde konut
ALICI’ya teslim edilmiş ise; ALICI fesih tarihinden itibaren 3 ay içinde konutu boşaltacağını kabul, beyan ve
taahhüt eder.<br />
  
                    <strong>8.5.</strong> Sözleşmeye konu bağımsız bölümün ilgili Tapu Sicil Müdürlüğü nezdinde ALICI’ya devri sonrasında
ALICI’nın kazanacağı kat maliki sıfatı ile SATICI’nın ve konutun yer aldığı sitenin Yönetim Kurulu’nun
sözleşme konusu mimari proje kapsamında yapacağı bağımsız bölüm sayısının arttırılması, bağımsız bölümlerde
değişiklik yapılması ve bunlarla sınırlı kalmamak üzere sair tüm tasarruflar bakımından SATICI’nın ve konutun
yer aldığı sitenin Yönetim Kurulu’nun dilediği gibi tasarrufta bulunmasına, her türlü değişikliği yapmasına
muvafakat ettiğini ve bu yönde alınacak tüm kararların uygulanması için üzerine düşen yükümlülükleri eksiksiz ve
tam olarak yerine getireceğini ihtiva eden işbu sözleşmeye ek olarak muvafakatname vereceğini ve mezkur
taşınmazı satması halinde dahi satacağı kişi için bu muvafakatnamenin geçerli olacağını kabul, beyan ve taahhüt
etmektedir.<br />
  
                    <strong>8.6.</strong> ALICI, SATICI tarafından tapuda tescil ettirilecek yönetim planının ve işletme projesinin tüm hükümleri ile
kat malikleri genel kurulu tarafından alınmış veya alınacak bilcümle kararlara aynen uymak ve teslim alınmış
sayıldığı veya fiilen konutunu teslim aldığı tarihten itibaren ikamet etsin veya etmesin kullanım ile ilgili masraflar
ile yönetimin saptayacağı giderlere katılmak ve bunları süresi içerisinde ödemek mecburiyetindedir.<br /> 
  
                    <strong>8.7.</strong> Sözleşme konusu konutun genel standardını korumak amacıyla ALICI işbu satış vaadi sözleşmesinden
doğan haklarını ancak SATICI’ nın yazılı onayı ile gerçek ya da tüzel kişilere, kurum ya da kuruluşlara (Üçüncü
kişilere) devir ve temlik edebilir. Ancak SATICI, bu devri kabul edip, etmemekte serbesttir. Bunun dışında
ALICI, SATICI'ya olan borçlarının bitimi ya da tapusunun alımına kadar taşınmazı ve bu sözleşmeden doğan
haklarını 3. kişi/kişilere devir ve temlik, rehin, haciz edemez. SATICI'nın muvafakati alınmadan devir yapılması
SATICI'ya sözleşmeyi tek taraflı fesih hakkını verir. Bu durumda sözleşmenin feshe dair hükümleri aynen yerine
getirilmek şartı ile sözleşme feshedilir.<br /> 
  
  
                    <strong>8.8.</strong> Tapu tescili için gerekli evrakları istenilen zamanda göndermeyerek tapu devrinin gecikmesine neden olan
ALICI, SATICI tarafından ödenmek durumunda kalınan vergi, resim, harç ve masrafları yasal faiziyle birlikte
SATICI’ ya ödemeyi beyan, kabul ve taahhüt eder.<br />
  
                    <strong>8.9.</strong> ALICI, proje dâhilinde elektrik enerjisinin kesilmesi halinde, merkezi sistemi besleyecek jeneratörlerin
devreye girmesi durumunda elektrik sayaçlarından geçecek enerji bedelini ödemeyi beyan, kabul ve taahhüt eder.<br />
  
                    <strong>8.10.</strong> ALICI’ nın birden fazla gerçek veya tüzel kişi olması halinde, ALICI’ larla başka türlü bir yazılı anlaşma
olmadığı sürece, yapılan ödemelerin ALICI’ lar tarafından eşit oranda ödendiği kabul edilir. Borcun tamamen
ödenip tapuda mülkiyetin nakli aşamasında bağımsız bölüm mülkiyeti, hisseleri oranında ALICI’ lara devredilir.
Ancak ALICI’ nın birden fazla gerçek veya tüzel kişi olduğu durumda ALICI’ lar borcun tamamından
müştereken ve müteselsilen sorumludur. Borcun tamamı ödenmediği sürece tapuda devir ve tescil işlemi
gerçekleştirilmeyecektir.<br />
  
                    <strong>8.11.</strong> Bağımsız bölümün tesliminden itibaren, Kat Mülkiyeti Kanunu'na ve yönetim planına göre gerekli yönetim
organları oluşuncaya kadar bağımsız bölümün ve blokların, yönetim ve işletmesi SATICI tarafından
yürütülecektir. SATICI, sahip olduğu bu yönetim ve işletme yetkisini herhangi bir gerçek veya tüzel kişiye
devretmesi halinde ALICI, Site Yönetim Hizmetlerinin işbu şahıslar tarafından deruhte edilmesine, aidatların
toplanmasına karşı husumet itirazında bulunamayacaklardır. Aidatlarını zamanında ödemeyen kişilere karşı
başlatılacak icra takibi ve/veya site yönetim hizmetlerinden dolayı açılabilecek davalar, doğrudan site yönetim
hizmetlerini deruhte eden şahıslar ve/veya tüzel kişiler tarafından açılacaktır. ALICI bunlara karşı husumet
itirazında bulunmamayı beyan, kabul ve taahhüt eder.<br /><br /><br/><br/>
  
<strong style="text-decoration:underline">MADDE 9- VERGİ, RESİM, HARÇ İLE DİĞER GİDERLERE İLİŞKİN ESASLAR</strong><br /><br />
  
                    <strong>9.1.</strong> Sözleşmeye konu bağımsız bölümün tapusunun ALICI'ya devredilmesi sırasında ödenmesi gereken tapu
harçları ALICI tarafından ödenecektir. ALICI, satış bedeline ek olarak bağımsız bölüme ilişkin kat irtifakı
masraflarını ve cins değişikliği ve sair yürürlükteki mevzuattan doğan kat mülkiyetine geçiş masrafları ile işbu
bağımsız bölümün satışından kaynaklanan tapu ve noter masrafları dahil bilumum harç, masraf ve sair giderlerin
tamamını ödemeyi kabul, beyan ve taahhüt eder.<br />  
  
                    <strong>9.2.</strong> ALICI’ya kat irtifakı tapusunun verilmesinden sonraki emlak, çevre temizlik vergisi ve harçları gibi vergi harç
ve diğer yükümlülüklerin tamamı ALICI'ya aittir. Bahsi geçen vergi harç ve diğer yükümlülükler SATICI
tarafından ödenmiş ve yerine getirilmiş olursa, ödenmiş ve yerine getirilmiş bu yükümlülükler, alıcı nam ve
hesabına yapılmış bir tasarruf olup, ALICI en geç on beş gün içinde bunları SATICI’ ya öder ve yerine getirir.<br />
  
                    <strong>9.3.</strong> Sözleşmenin imzalanması ile birlikte damga vergisini ALICI ödeyecektir. Damga vergisi sözleşme bedelinden
ayrı olarak ödenmelidir.<br />
  
                    <strong>9.4.</strong> ALICI almış olduğu bağımsız bölüme ait Yapı Kullanma İzin Belgesi (İskan) müracaatı aşamasında
ödenmesi gereken emlak, cins tashihi, iskan harçları, Belediye payları ve burada belirtilmeyip her ne ad altında
olursa olsun yasal yükümlülük olarak ödenmesi gereken harç, vergi ve rüsumları satış bedelinden ayrı olarak ilk
talepte SATICI’ ya ödeyecektir. <br />
  
                    <strong>9.5.</strong> ALICI, satın aldığı bağımsız bölümün elektrik, su, doğalgaz, telefon, internet işlemleri ve kullanım
sözleşmeleri ile bu işlemlere ait katılım gider payları, abonelik payları, depozito ve sair gider ve masrafları ile
ayrıca bu anlamda ortak tesislerin depozito ve teminatlarını da, satış bedelinden ayrı olarak ödeyecektir.<br /> 
  
                    <strong>9.6.</strong> ALICI teslim aldığı bağımsız bölümün Doğal Afet Sigortası (DASK) ve sözleşme süresince yasal mevzuat
gereği istenebilecek sigortalarını yaptırmak zorundadır. Bu sigortalar 20 (yirmi) gün içinde ALICI tarafından
yaptırılmamışsa, SATICI tarafından yaptırılacak ve bedelleri ALICI'dan talep edilecektir. ALICI bu bedelleri ilk
talep tarihinden itibaren 3 (üç) gün içerisinde ödemek zorundadır. <br />
  
                    <strong>9.7.</strong> ALICI, bu sözleşmeyle doğmuş veya doğacak borçlarını ( vergi, resim, harç ile diğer giderlerini) hiçbir neden
ve mazeretle ya da gerekçe ile aksatmadan, bir ön koşul öne sürmeden vadesinde ödeyeceğini taahhüt etmektedir.
Bu sözleşmede ALICI tarafından ödenmesi vaat ve taahhüt edilen, ancak senet tanzim edilmeyen bir borç için
SATICI, ALICI'ya ödemesi gereken borcunu bildiren bir hesap belgesi tanzim ederek adresine gönderir. Borç,
hesap belgesi tarihinde tahakkuk etmiş sayılır. Borcun vadesi ise hesap belgesi tanzim tarihini takip eden 15.
(onbeşinci) gündür.<br /> <br />
  
<strong style="text-decoration:underline">MADDE 10-  KAT İRTİFAKI VE KAT MÜLKİYETİNİN TESİSİ</strong><br /><br />
  
                    <strong>10.1.</strong> Kat irtifakı tesisi sırasında hazırlanacak Yönetim Planı, SATICI tarafından tapuya verilecektir. İnşaası
yapılan taşınmazların ve kapsamındaki bağımsız bölümler ile ortak tesis, ortak alan, ticari alan v.s. kısımların
kullanım, yönetim ve idaresi ile temizlik, bakım ve onarımlarına dair kurallar bu Yönetim Planında yer alacaktır.
ALICI'ya bu sözleşmenin akdi sırasında Yönetim Planı verilmiş ve ALICI, Yönetim Planını incelediğini, içeriğini
anladığını ve aynen kabul ettiğini, her türlü halde gayrikabili rücu ve süresiz olarak beyan, kabul ve ikrar eder.
Yine ALICI, bağımsız bölümü herhangi bir tarihte üçüncü şahsa satarsa, satış sırasında bu hükmü yeni ALICI'ya tebliğ edeceğini kabul, beyan ve taahhüt eder.<br />
  
                    <strong>10.2.</strong> ALICI, satışa konu edilen bağımsız bölümler dışındaki ortak alanlardaki tesis ve yapılarda, varsa eklenti ve
tahsisli alanlarda SATICI’nın, gerekli gördüğü teknik, mimari kullanım değişikliklerini tek taraflı olarak yapmaya
yetkili olduğunu kabul ve taahhüt etmiştir.<br /> 
  
                    <strong>10.3.</strong> İnşa edilecek sitenin adı <strong>TRİO GARDEN olup</strong>, Yönetim Planına bu isim yazılacaktır. <br /><br /><br/><br/><br/>
  
<strong style="text-decoration:underline">MADDE 11-  SİTE YÖNETİMİ</strong><br /><br />
  
                    <strong>11.1.</strong> ALICI, Kat Mülkiyeti Hakkından kaynaklanan tüm haklarını yapıların bir kısmı veya tamamının tesliminden
itibaren 2 yıl süreliğine işbu sözleşme ile SATICI veya yetkili kılacağı gerçek veya tüzel kişi ya da kişilere gayri
kabili rücu olmak üzere devrettiğini kabul ve taahhüt etmektedir. Site halinde yapılacak inşaatın yönetimi;
yapıların bir kısmı veya tamamının tesliminden itibaren 2 yıl süre ile SATICI’ nın bizzat veya yetkili kılacağı
gerçek veya tüzel kişi ya da kişilerce yapılacaktır. Bu sürenin sonunda Kat Malikleri Kurulunun İstemesi halinde;
SATICI ve yetkili kılacağı gerçek veya tüzel kişi ya da kişilerce sitenin yönetimine devam edilecektir. Bu sürenin
sonunda Kat Malikleri istemez ise, site yönetimi; site bağımsız bölüm Maliklerine devredilecektir. ALICI, bu
maddenin yürürlükten kaldırılmasına yönelik herhangi bir girişimde bulunmayacağını, girişimde bulunanlara
destek vermeyeceğini, bu madde için kendisine gerekli bilginin verildiğini, konunun SATICI ile müzakere
edildiğini kabul etmektedir.<br />  
  
                    <strong>11.2.</strong> Bu süre içinde SATICI veya yetkili kılacağı gerçek veya tüzel kişi ya da kişilerce yapılacak yönetim
esnasında, yönetimden sorumlu olanlar Kat Maliklerine karşı bir vekil gibi sorumlu değildir. Tahsilat İşletme
bütçesi ile tahakkuk eder ve SATICI veya yetkili kılacağı gerçek veya tüzel kişi ya da kişilerce sarf ve mahsup
eder. Yönetimin ibrası münferiden SATICI tarafından yapılır. ALICI, Yönetim Planına göre hareket edecek olan
ve SATICI tarafından yetkili kıldığı gerçek veya tüzel kişilerin kararlarına uymayı, ortak yerlere, tesislere ve
bağımsız bölümlere ait bilcümle giderleri Yönetim Planında yazılı hükümlere uygun olarak ödemeyi kabul ve
taahhüt etmiştir.<br />
  
                    <strong>11.3.</strong> Geçici yönetim süresi; (KMK) Kat Mülkiyeti Kanununa göre gerekli yönetim organları oluşuncaya kadar
uzatılabilir. Bu husus ve Yönetim Planına yazılması hususu ALICI tarafından aynen kabul edilmiş olup, bu
konuda gerekli rıza, muvafakat verilmiştir. Bu süreçte ALICI, Kat Mülkiyetine geçilmemiş olsa dahi, Kat
Mülkiyeti Kanununun tüm hükümlerine riayet edeceğini, Onaylanmış İşletme Projesine uyacağını, belirlenecek
aidat ödemelerini düzenli ve zamanında yapacağını, bağımsız bölümü teslim almasa bile, bu ortak gider avansı ve
ortak gider aidatını ödemeyi kabul ettiğini, halen (KMK) Kat Mülkiyetin Kanununda uygulanmakta olan ve
zamanında ödenmeyen aidatlar veya gider avansları için aylık % 5 (yüzde beş) gecikme tazminatı ödeyeceğini,
daha sonra Kat Mülkiyeti Kanununda gecikme tazminatı ve diğer maddelerde yapılan değişikliklere uyacağını da
peşinen kabul ve taahhüt eder.<br />
  
                    <strong>11.4.</strong> ALICI Site Yönetim Planına uyacak ve gereklerini yerine getirerek konutların iskana açılması ile İşletme
Projesinin uygulanmaya konulması arasında geçecek süre içerisinde kullanılmak üzere belirlenecek ortak gider
avansını ödeyeceğini, tüm giderlere katılacağını, (KMK) Kat Mülkiyet Kanunu gereğince işletilecek tüm gider ve
avansları ödeyeceğini kabul eder. <br />
  
                    <strong>11.5.</strong> ALICI, satın almış olduğu bağımsız bölümü satıcının onayı ile kendi namına satma ve kiraya verme hakkına
sahiptir. Kat maliki/ALICI satma ve kiraya verme konusunda kendisi dışında 3. şahısları emlakçıları ve emlakçı
gibi hareket edenleri yetkilendiremez. Bu konuda tek yetkili SATICI’ dır. <br /><br /><br/>
  
<strong style="text-decoration:underline">MADDE 12- SÖZLEŞMENİN SÜRESİ VE FESHİ</strong><br /><br />
  
<strong>12.1.</strong> İşbu sözleşme imza tarihinde yürürlüğe girecek olup, ALICI’nın işbu sözleşmeye dayanan tüm
yükümlülüklerini yerine getirmiş olması, konutun teslim edilmesi/teslim edilmiş sayılması ile birlikte
herhangi bir bildirime gerek olmaksızın kendiliğinden sona erecektir. <br />  
  
                    <strong>12.2.</strong> ALICI’nın işbu Sözleşme hükümlerinden birine/birkaçına uymaması, belgelerde sunduğu beyanlarının
doğru olmadığının tespit edilmesi, yanlış ve yanıltıcı bilgi verilmesi, SATICI’nın ALICI’nın bildirdiği adresine
yapacağı her türlü tebligatta belirtilen hususların, ALICI tarafından öngörülen sürede yerine getirilmemesi, tapu
devir ve ipotek işlemleri için gerekli belgelerin SATICI tarafından belirtilen sürede ALICI tarafından hazırlanıp
SATICI’ya teslim edilmemesi; bağımsız bölümün belirlenen süre içerisinde teslim alınmaması, tapu tescil
işlemlerinden önce uygulama yapılan projeye aykırı imalat ve tadilatların ALICI tarafından yapılması, ALICI’nın
ödemesi gereken tüm borçlarını vadesinde ödememesi ve özellikle tapu, iskan, harç, vergi ve masrafları, aidatları
ödememesi, sözleşmeye aykırılık teşkil eden diğer tüm hallerde işbu hususlar ile ilgili Sözleşmede yer alan özel
düzenlemeler saklı kalmak kaydıyla SATICI işbu Sözleşme’yi tek taraflı olarak hiçbir ihtara gerek kalmadan
tazminat, cezai şart vs herhangi bir bedel ödemeksizin derhal feshetmek hakkına sahiptir. SATICI’nın sözleşmeyi
işbu şekilde feshetmesi halinde ALICI, SATICI’nın uğradığı bilcümle zararlarının yanında ve buna ek olarak
taşınmaz satış bedelinin %20’ sini ilk talep tarihinden itibaren 7 (yedi) gün içerisinde nakden ve defaten ödemeyi
peşinen kabul, beyan ve taahhüt eder. ALICI, cezai şart bedeli hakkında fahişlik iddiasında bulunmamayı, tenkisi
veya geçersizliği sebebi ile herhangi bir hukuki yola müracaat etmemeyi, cezai şartın icra yolu ile tahsili kabil likit
bir alacak teşkil ettiğini kabul ve beyan eder.<br />
  
  İhlal edilen yükümlülük ani edimli ise veya süre vermenin tesirsiz kalacağı halin icabından anlaşılmakta ise
veya ihlal edilen yükümlülük yapmama şeklinde olumsuz edim içermekte ise SATICI ihlalin giderilmesi için
süre vermeksizin işbu sözleşmeyi derhal ve tek taraflı olarak feshedebilecek ve yukarıda hüküm altına alınan
cezai şart bedelini talep edebilecektir. <br />
  
                    <strong>12.3.</strong> ALICI’nın acze düşmesi, konkordato ilan etmesi ve/veya iflasına karar verilmesi halinde SATICI,
sözleşmeyi derhal her ne nam ve ad altında olursa olsun herhangi bir bedel ödemeksizin feshetme hak ve
yetkisine sahip olacaktır.<br />
  
                    <strong>12.4.</strong> Sözleşmenin SATICI tarafından işbu sözleşmeye hükümlerine istinaden feshedilmesi halinde işbu
sözleşmenin 8.3. maddesine uğramış olduğu zararları tahsil etme hakkına sahip olacaktır. <br />
  
                    <strong>12.5.</strong> ALICI, tarafından sözleşmenin tek yanlı irade beyanı ile feshedilmesi halinde SATICI’nın fesih nedeniyle
uğradığı zararı tazmin ile mükelleftir. Bu tutar satış bedelinin 20’sinden az olamaz. SATICI işbu sözleşmenin 8.3.
maddesine göre zararını tahsil edecektir. ALICI, konutun ALICI ya tesliminin ve/veya tapu ferağ takririnin
yapılmış olması durumlarında sözleşmenin kendisi tarafından tek taraflı olarak feshedilemeyeceğini şimdiden
kabul ve beyan eder.<br />
  
                    <strong>12.6.</strong> Banka Konut Kredili (Mortgage) işlemlerde ALICI’nın kredi şartlarının yerine getirmemesi ya da bankanın
belirlediği sayıdaki taksiti zamanında ödememesi gibi sebeplerle Bankanın ihbarıyla işbu sözleşme SATICI
tarafından tek taraflı olarak hiçbir ihtara gerek kalmadan tazminat, cezai şart vs herhangi bir bedel ödemeksizin
derhal fesih edilebilecektir. Kredinin kapatma cezası faiz, masraf, komisyon ALICI’nın yükümlülüğündedir. İşbu
durumda SATICI aldığı kredi bedelini aynen Banka’ya iade eder. Bu durumda SATICI bağımsız bölümün
tamamı veya bir bölümü üzerinde dilediği kişiye dilediği şartlarla her ne türden olursa olsun aynî veya şahsi hak
tesis edebilir. <br /><br />
  
<strong style="text-decoration:underline">MADDE 13- MÜCBİR SEBEPLER</strong><br /><br />
  
                    <strong>13.1.</strong> Savaş, seferberlik, deprem ve sel gibi doğal afetler, ülke genelinde oluşan ekonomik dar boğaz nedeniyle
hükümet tarafından getirilen kısıtlamalar, ruhsat alımlarında, SATICI’dan kaynaklanmayan nedenlerle meydana
gelen gecikmeler, tehlikeli salgın hastalıklar, grev, lokavt nedeniyle inşaat için gerekli malzeme ve enerjinin ve
personelin sağlanamaması gibi sözleşmenin imzası sırasında mevcut olamayan ve inşaatın yapımına etki eden
veya tarafların yükümlülüklerini yerine getirmesine engel teşkil eden olağanüstü ve beklenmeyen haller işbu
sözleşme kapsamında mücbir sebep olarak kabul edilmiştir. Ayrıca ve ilaveten SATICI’nın elinde olmayan ve
idareden kaynaklanan nedenlerle inşaatın durması ve/veya yavaşlaması halinde bu süreler teslim süresine ilave
edilir. SATICI’nın herhangi bir mücbir sebep nedeniyle konutun tesliminde gecikme halinde, SATICI, mücbir
sebep süresini anahtar teslim süresine eklemek hakkına sahiptir. Bayındırlık Bakanlığınca, İstanbul İli için kabul
edilen hava şartları sebebi ile çalışılmayan günler teslim süresine ilave edilecektir. <br />
  
                    <strong>13.2.</strong> Bu maddede sözü geçen mücbir sebepler nedeni ile ortaya çıkabilecek zararlar, sözleşmenin imzalandığı
tarihteki maliyetleri aşırı derecede artırması ve bu maliyetlerin inşaatın tamamlanmasını zorlaştırması halinde;
ALICI ortaya çıkabilecek zararları hak ve mesafet (hak ve adalet) oranında SATICI’ ya ödemeyi kabul ve taahhüt
etmiştir. Bu maddede sözü geçen durumların ortaya çıkması halinde, bu durum SATICI tarafından, ALICI'ya 21
gün içinde bildirilir. ALICI, kendisine bildirilen bu maliyetleri karşılamak istememesi halinde sözleşmeyi feshetme
hakkına sahiptir. ALICI bu nedenle sözleşmeyi feshetmesi halinde, fesih bildiriminin SATICI’ ya
bildirilmesinden itibaren ALICI'nın o güne kadar ödediği meblağ 6 ay sonra kendisine faizsiz olarak iade edilir.
ALICI, bu maddede sözü geçen nedenleri ileri sürerek bu sözleşmedeki ödeme ve diğer yükümlülüklerini yerine
getirmekten kaçınamaz. İşbu sözleşmenin 8.3. maddesi gereği SATICI’nın bundan kaynaklı zararlarını tazmin
hakkı saklıdır.<br /> 
  
                    <strong>13.3.</strong> Yukarıda belirtilen mücbir sebepler 3 aydan fazla sürerse, bu süre bitiminde, SATICI işbu sözleşmeyi,
tazminat, cezai şart vb. her ne nam ve ad altında olursa olsun herhangi bir bedel ödemeksizin
feshedebileceklerdir. Bu durumda SATICI o güne kadar ALICI'nın ödediği meblağı 6 ay sonra faizsiz iade eder
Bu halde ALICI tapusunu almışsa tahsis edilen bağımsız bölüme isabet eden arsa payının mülkiyetini SATICI'ya
ferağ (devir) eder. Tapuda arsa payı devri yapılmadan ALICI'ya geri ödeme yapılamaz. Tapu devir harçları,
ALICI tarafından ödenecektir. İşbu sözleşmenin 8.3. maddesi gereği SATICI’nın bundan kaynaklı zararlarını
tazmin hakkı saklıdır.<br />
  
                    <strong>13.4.</strong> Mücbir sebepler 3 aydan fazla sürerse aynı zamanda ALICI ödemelerini askıya almaya veya devam etmekte
serbesttir. ALICI, bundan dolayı ödemelerini askıya alması halinde, mücbir sebebin ortadan kalkması ve
durumun kendisine bildirilmesinden sonra, o güne kadar biriken tüm borçlarını 6 ay içinde ve o tarihten sonraki
ödemelerini de vadelerinde SATICI'ya ödemeye devam eder.<br /><br /><br/>
  
<strong style="text-decoration:underline">MADDE 14-PROJELERDE TADİLAT VE MALZEME DEĞİŞİKLİĞİ</strong><br /><br />
  
  SATICI, satmayı vaad ettiği konut ile ilgili Projelerde, zorunluluklar, yeni imar durumu, betonarme hesapları,
uygulama ve pazarlamadan doğan ihtiyaç gibi nedenlerle ve/veya SATICI’nın gerekli görmesi halinde imar planı
ve mevzuatına uygun olarak-,projenin vaziyet planında, mimari projelerinde, blok ve konut sayıları ile yerleri ve
yönlerinde, konut tip ve alanlarında, kat planlarında, blok ve konut içlerinde, imalat cinslerinde, tasdikli
projelerde, değişiklik yapmaya, Konsept veya yerleşimini değiştirmekte ALICI’nın satın aldığı konutun brüt
metrekaresinde ve konumunda değişiklik olmamak kaydıyla, kendisinin veya teknik imkanların zorunlu gördüğü
tadilatları yapmaya yetkilidir. Yapılan tadilatlar sebebiyle oluşan gecikmeler konutun teslim süresine eklenecek
olup SATICI bu süre sebebiyle ALICI’ ya; cezai şart, tazminat vb hangi nam ve ad altında olursa olsun herhangi
bir bedel ödemeyecektir.<br /> 
  
  Sözleşme konusu konut projesi İdare tarafından onaylandıktan sonra herhangi bir sebeple yine İdare tarafından
değiştirildiği ya da iptal edildiği takdirde SATICI tarafından o tarihe kadar ödenen tutar projenin İdare tarafından
değiştirildiği ya da iptal edildiği tarihten itibaren 6 Ay içinde SATICI’nın ALICI’ya bildirdiği hesap numarasına
faizsiz olarak iade edilecektir. SATICI, konut projesinin İdare tarafından herhangi bir şekilde değiştirilmesi ya da
iptal edilmesi sebebiyle ALICI’ya tazminat, cezai şart vb. her ne nam altında olursa olsun herhangi bir bedel
ödemeyecektir.<br /> 
  
  SATICI’nın gerekli görmesi halinde konutun inşası sırasındaki malzemeleri değiştirme hakkı saklıdır, kullanılacak
yeni malzemeler değişen malzemelerin muadili olarak yer alacaktır.<br />
  
  SATICI, ticaret merkezi, sosyal ve kültürel tesisler, spor alanları, yeşil alan, çocuk parkları ve benzeri alanlarda
yapılacak olan tüm inşaatları ve nihai projeyi belirleme hak ve yetkisine sahiptir. ALICI, SATICI’nın işbu madde
kapsamında yer alan hak ve yetkileri ile bunlara uygun olarak yapılan değişiklikleri kabul, beyan ve taahhüt
etmiştir.<br /><br />
  
<strong style="text-decoration:underline">MADDE 15- GİZLİLİK</strong><br /><br />
  
                    <strong>15.1.</strong> Gizli Bilgi; Tarafların üçüncü şahısların bilmesini istemedikleri, alenileşmemiş, gizli kalmasında fayda
gördükleri personel, mali, vb, bilgilerden mahiyeti itibariyle gizli olan firma bilgileridir. Taraflar, birbirlerine ait
“Gizli Bilgi’nin” bilgi almaya yetkili resmi kuruluşlar hariç üçüncü kişilere ifşa yasağına tabi olduğunu, hiçbir
gerekçe ile bu bilgileri üçüncü şahıslara vermemeyi, ifşa edilmemesi için gerekli her türlü tedbiri almayı, bu
yükümlülüklere gerek kendi personelinin gerekse sair ilgili kişilerin de uymasını sağlamayı; Gizli Bilgi’yi kısmen
veya tamamen, doğrudan veya dolaylı surette üçüncü kişilerin (kişi, kurum, kuruluş, firma, şirket vb.) bilgisine
ve kullanmasına sunmamayı, ifşa etmemeyi kabul ve taahhüt etmişlerdir.<br /> 
  
                    <strong>15.2.</strong> Sözleşme süresi dâhilinde ya da sözleşme sona erdikten sonra işbu gizlilik yükümlülüğünün ALICI
tarafından ihlal edildiğinin SATICI tarafından herhangi bir mahkeme hükmüne hacet olmaksızın tek yanlı
olarak tespit edilmesi halinde ALICI işbu sözleşmenin 12.2. maddesiyle hüküm altına alınan cezai şart bedelini
ödemeyi kabul ve taahhüt eder.<br /> 
  
                    <strong>15.3.</strong> ALICI, sorumlu olduğu kişilerce diğer tarafa ait gizli bilgilerin sözleşmeye aykırı biçimde açıklandığından
haberdar olduğunda, derhal ve yazılı olarak SATICI’ya durumu bildirmekle yükümlüdür. Gizli bilgileri
sözleşmeye aykırı olarak açıklanmış SATICI, bu bildirim üzerine veya kendiliğinden masrafları ALICI’ya ait
olmak kaydıyla tüm yasal yollara başvurma ve uğradığı her türlü zararın giderimini ALICI’dan talep etme
hakkına sahiptir.<br />
  
                    <strong>15.4.</strong> Bu madde hükümleri Sözleşme’nin herhangi bir şekilde sona ermesi veya feshi halinde dahi Taraflar
arasında bağımsız bir taahhüt olarak geçerli kalmaya devam eder.<br /><br />

<strong style="text-decoration:underline">MADDE 16- UYUŞMAZLIKLARIN ÇÖZÜMÜ VE DELİL SÖZLEŞMESİ</strong><br /><br />
  
                    <strong>16.1.</strong> Sözleşmenin uygulanmasından kaynaklanan ihtilafların çözüm yeri İstanbul Çağlayan Mahkemeleri ve
İcra Daireleri’dir.<br />
  
                    <strong>16.2.</strong> ALICI, işbu Sözleşmeden ve işbu Sözleşme'nin ifasından doğabilecek ihtilaflarda SATICI’nın kendi
veritabanında, sunucularında tuttuğu elektronik ve sistem kayıtlarının, ticari defter ve kayıtlarının, bilgisayar
kayıtlarının, elektronik ortamda yapılmış olan yazışmalarının muteber bağlayıcı, kesin ve münhasır delil teşkil
edeceğini, SATICI’yı yemin teklifinden ber’i kıldığını ve bu maddenin H.M.K 193. Maddesi anlamında delil
sözleşmesi niteliğinde olduğunu kabul, beyan ve taahhüt eder.<br /><br />

<strong style="text-decoration:underline">MADDE 17- TEBLİGAT</strong><br /><br />
  Tarafların tebligat adresleri sözleşmenin 1. Maddesinde yer alan adresleri olup; adres değişikliği 5 gün
içerisinde diğer tarafa noter kanalı ile ve yazılı olarak bildirmediği takdirde, tarafların sözleşmede yazılı
adreslerine gönderilen tebligatlar bila tebliğ iade olunsa dahi, muhatabına yapılmış sayılacak ve geçerli bir
tebligatın tüm hukuki sonuçlarını doğuracaktır.<br /><br />
  
<strong style="text-decoration:underline">MADDE 18- KISMİ GEÇERSİZLİK VE İFADE EDİLMEYEN FERAGAT</strong><br /><br />
  
                    <strong>18.1.</strong> İşbu sözleşme, ekleri ile bir bütün teşkil eder. Sözleşmenin her bir maddesi birbirinden bağımsız olarak hüküm ifade eder. İşbu sözleşme maddelerinden herhangi biri geçersiz sayılır ya da iptal edilirse, bu hal sözleşmenin diğer maddelerinin geçerliliğine etki etmez.<br /> 
                    <strong>18.2.</strong> Taraflardan birinin bu sözleşme hükümlerinin diğeri tarafından yerine getirilmesini talep etmemesi bu
hükümlerin tamamen yerine getirilmesi gereğini hiçbir şekilde etkilemez. Taraflardan herhangi birinin bu
sözleşmenin hükümlerinden birinin bir bölümünün ihlalinden doğacak haklarından feragati aynı veya farklı
bir maddenin bir sonraki ihlali durumunda da talebinden feragat edeceği anlamına gelmez.<br /><br />
  
<strong style="text-decoration:underline">MADDE 19- DİĞER HÜKÜMLER </strong><br /><br />
  
                    <strong>19.1.</strong> Bu sözleşme, taraflar arasında mevcut olan sözleşmenin tamamını teşkil eder ve bu sözleşmenin konusu ile
ilgili olarak taraflar arasında daha önce mevcut olan her türlü müzakere, beyan, taahhüt, sözleşme ve
muvafakatleri hükümsüz kılar ve bunların yerini alır. İşbu Sözleşme’ye ilişkin tüm hükümler için yapılacak tadil,
değişiklik, ya da ilaveler tarafların yazılı onayı olmadıkça geçerli kabul edilmeyecektir.<br />
  
                    <strong>19.2.</strong> TRIO GARDEN Projesini hayata geçiren SATICI, Projeye ait bağımsız bölümleri kiraya vermemek ve
kullanmamak şartı ile bu bağımsız bölümleri satıp, tapu devri 3. kişilere yapılana kadar, hiçbir aidat ve ortak
gidere katılmayacağını, ALICI kabul, beyan ve taahhüt eder. <br />
  
                    <strong>19.3.</strong> Taraflar, işbu Sözleşmenin esas itibarı ile noterlikçe düzenleme şeklinde hazırlanması gerektiğini, bunun bir
geçerlilik (sıhhat) şartı olduğunu ve bu şekil şartının kanun koyucu tarafından tarafları düşünmeye sevk etmek ve
daha dikkatli hareket etmeleri hususunda uyarmak için konulduğunu bildiklerini, anılan şekil şartının SATICI
tarafından hatırlatıldığını; Ancak bu şekil şartına rağmen işlemin gerektirdiği masraflara katlanmayı tercih
etmedikleri için ve taraflar arasındaki karşılıklı güven ve iyi niyet temellerinde sözleşmenin adi yazılı şekilde
düzenlenmesine razı olduklarını, sözleşmenin bütün mali ve hukuki sonuçlarını anladıklarını gayrikabili rücu
kabul ve beyan ederler.<br />
  
                    <strong>19.4.</strong> ALICI, bağımsız bölüme ait kesin teslim formunu imzalamadan bağımsız bölümü kendisi kullanamaz ve
başkalarına da kullandıramaz.<br />
  
                    <strong>19.5.</strong> Bu sözleşmeye konu olan bağımsız bölümde inşaat ikmal ve/veya inşaatın devamı esnasında imar
durumunda kat, bağımsız bölüm, emsal artışı olursa; bu artıştan yalnızca, SATICI yararlanır. ALICI tapusunu
almış olsun veya olmasın bu artıştan pay sahibi olmadığını kabul, beyan ve taahhüt eder. ALICI proje tadili
dolayısıyla herhangi bir hak ve alacak talebinde bulunmayacağını peşinen bu sözleşme ile kabul ve taahhüt
etmiştir. Bunun için ALICI, SATICI'ya talep ettiği vekaletnameyi ve taahhütnameyi de verecektir.<br />
  
                    <strong>19.6.</strong> Bu sözleşmeden doğan SATICI’nın alacakları tamamen ödenmeden mülkiyet ALICI’ ya geçmemiş
olacaktır. ALICI kısmen veya tamamen borcunu vadesinde ödememiş olması halinde, bağımsız bölümde
mülkiyet iddiasında bulunmayacağını ve/veya bağımsız bölüm mülkiyetinden kaynaklanan haklardan
yararlanmayacağını, bu hakları öne sürmeyeceğini, borç tamamen ve vadesinde ödeninceye kadar mülkiyetin her
türlü hakları ile, SATICI’ya ait sayılacağını, ALICI bağımsız bölümü kullanıyor olsa bile, bağımsız bölümdeki
varlığına borç ödenmedikçe SATICI’nın muvafakati olmadığını kabul, beyan ve taahhüt eder. <br /><br />
  
<strong style="text-decoration:underline">MADDE 20- SON HÜKÜM</strong><br /><br />
  
                    <strong>20.1.</strong> İşbu Sözleşme, 14 sayfa, 20 ana maddeden ve ek olarak mahal listesi, vaziyet planı, teknik şartname ile 1 adet
düzenlenmesi gereken vekaletname ve muvafakatname örneğinden ibaret olup, ALICI İşbu Sözleşme’yi
tamamen okuduğunu, Sözleşme hükümlerinin münhasıran ALICI ve SATICI arasındaki düzenlemelere ilişkin
olduğunu ve sözleşme hükümlerinin her biri ayrı ayrı olmak üzere tamamının SATICI ile ALICI arasında
müzakere edildiğini, yazılı tüm hususları SATICI’nın yöntem ve mevzuatının hiçbir koşul ileri sürmeksizin kabul
ettiğini, bütün hüküm ve koşullarına tamamen uyacağını açık bir şekilde kabul, beyan ve taahhüt eder.<br />
  
                    <strong>20.2.</strong> Bir nüsha olarak tanzim edilip imza altına alınan işbu Sözleşme’nin aslı SATICI’da kalarak ALICI’ya bir
fotokopisi teslim edilmiştir.
                     
                    <table>
    <tbody>
        <tr>
            <td>Ek 1</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Vaziyet Planı, Mahal Listesi ve Teknik Şartname</td>
        </tr>
        <tr>
          <td>Ek 2</td>
          <td class="pl-2 pr-2" >:</td>
          <td>Vekaletname ve Muvafakatname Örneği</td>
      </tr>
    </tbody>
  </table><br />
        <div style="margin-bottom:10rem !important" class="d-flex justify-content-center text-center">
             <p class="ml-auto mr-auto"><strong>SATICI</strong></p>
             <p class="ml-auto mr-auto"><strong>ALICI</strong><br />
                 <asp:Label ID="lblAliciAdSoyadImzaYeri" runat="server" Text="Boş Bırakmayınız"></asp:Label>
             </p>
        </div>
                  
                    
                  
 <%#Eval("TOPLAM_TAKSIT") %>

             
                    
        
                </p>
              </div>
                    </td>

                    <td style="padding:0 15px;text-align:justify;border-bottom:1px solid black;" >
                        <div>
                        <div style="text-decoration:underline" class="text-center mt-2"><strong>REAL PROPERTY PRELIMINARY SALES CONTRACT </strong></div>
                        
               
                <p class="well well-sm no-shadow" style="margin-top: 10px;">
                    
  
  
  
  
  
                    <strong style="text-decoration:underline">ARTICLE 1- PARTIES</strong><br /><br />

                          This Real Property Preliminary Sales contract (hereinafter referred to as CONTRACT) is made and entered into by and between <strong>ÖZYURT MADENCİLİK İNŞAAT SAN.VE TİC.A.Ş. </strong>(hereinafter referred to as SELLER) residing at the address <strong>İkitelli  O.S.B.. Mutfakçılar  M11 Bl. Sk. Dış Kapı No:1 Başakşehir/ Istanbul</strong>, registered under the Trade Register Number <strong>291540</strong> with <strong>ISTANBUL</strong> Trade Registry Office, registered with the Tax ID Number <strong>7180033813</strong> with <strong>MARMARA CORPORATE</strong> Tax Office, the owner of the website  <strong>www.ozyurtas.com.tr</strong> on the one hand and <asp:Label ID="lblAdSoyadSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="true"></asp:Label>&nbsp;(hereinafter referred to as BUYER) residing at the address <asp:Label ID="lblAdresSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="true"></asp:Label> &nbsp;registered under the Trade Register Number ----&nbsp; with&nbsp;Trade Registry Office, registered with the Tax ID Number or Passport Number
                    <asp:Label ID="lblTcKimlikNo0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label> &nbsp;with <asp:Label ID="lblVergiDairesi0" runat="server" Text="----"></asp:Label> &nbsp;Tax Office, the owner of the website  <strong>www.ozyurtas.com.tr</strong> on the other hand upon the following terms and conditions on <asp:Label ID="lblTarihSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label> <br/>
  In this Contract, SELLER and BUYER shall be referred to as Party individually and Parties collectively. <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 2- SUBJECT-MATTER OF THE CONTRACT </strong><br /><br />

                          By means of this Contract, SELLER has promised to BUYER the construction of the Independent Section (hereinafter referred to as residence / apartment / independent section) with No.<asp:Label ID="lblBagimsizBolumSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="true"></asp:Label> &nbsp;and the sale of relevant residence located in the Province of Istanbul, District of <strong>Esenyurt</strong>, Quarter of <strong>Zafer, 144</strong>  Sokak, <strong>F21D24C1B-C-D</strong>… map section, …<strong>2761</strong>…  block,  <strong>20</strong> parcel on which it has the right to construct and sell residences, leisure centers, independent commercial sections and in the site known well with the name <strong>TRIO GARDEN</strong> (hereinafter referred to as Site) and BUYER promised to buy above-mentioned residence within the terms and conditions herein and this Contract is concluded to regulated the mutual rights and conditions of the Parties hereto on regulation of the payment terms of the sale price, and the conditions for delivery of the independent section and transfer of the ownership thereof before the relevant land registry office within the framework of these promise which are the subject hereof. <br/>

                          BUYER acknowledges and undertakes that it shall not demand nor make any claim on any right including any proprietary right relating to any other buildings and the appurtenances thereof contained by the project other than the subject residence. The undertaking of the SELLER is limited to the independent section promised to be sold to BUYER and the area undertaken again herein expressly to be constructed and completed only. Therefore, one cannot mention that there is any request and undertaking directed by BUYER for any manufacture and construction in relation to common areas and locations with making a reference to the existence of the same in the project approved by Esenyurt Municipality although not undertaken to BUYER hereunder. Although certain specifications are not included in the Contract and the projects attached hereto, SELLER may indicate certain different specifications as options in visuals like brochures, illustrations used at the stage of sale.  Likewise, SELLER reserves the right to make any change of color and/or material on such visuals.   <br/><br/><br/>

                          <strong>ARTICLE 3- IMMOVABLE PROPERTY PROMISED TO BE SOLD:</strong>

                          <table >
      <tbody style="font-weight:900">
          <tr>
              <td>Name of the Project</td>
              <td class="pl-2 pr-2" >:</td>
              <td>TRIO GARDEN</td>
          </tr>
          <tr>
            <td>Province</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Istanbul</td>
        </tr>
        <tr>
            <td>District</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Esenyurt</td>
        </tr>
        <tr>
            <td>Quarter</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Zafer</td>
        </tr>
        <tr>
            <td>Street</td>
            <td class="pl-2 pr-2" >:</td>
            <td>144</td>
        </tr>
        <tr>
            <td>Map Section</td>
            <td class="pl-2 pr-2" >:</td>
            <td>F21D24C1B-C-D</td>
        </tr>
        <tr>
            <td>Block and Parcel No</td>
            <td class="pl-2 pr-2" >:</td>
            <td>2761 ve 20</td>
        </tr>
        <tr>
            <td>Blok No</td>
            <td class="pl-2 pr-2" >:</td>
            <td>
                <asp:Label ID="lblBlokNoSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Floor No</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblKatNoSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Residence Independent Section</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblKonutBagimsizBolum0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Number of Rooms</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblOdaSayısı0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>Square Meter of Residence</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblKonutMetreKare0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label> &nbsp;m2</td>
        </tr>
      </tbody>
  </table><br /><br />

                          <strong style="text-decoration:underline">ARTICLE 4- SALES PRICE AND PAYMENT</strong><br /><br />

                          <strong>4.1.</strong> Except for the Tax, Duty, Fee, costs of the Independent Section and the expenses thereof arising from other provisions of the Contract: <br /><br />

                          <table>
      <tbody>
        <tr>
            <td>CASH SALE PRICE</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblPesinSatisBedeliSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>CREDIT SALE PRICE</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblVadeliSatisBedeliSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>AMOUNT OF DOWNPAYMENT</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblPesinatMiktariSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
        <tr>
            <td>MATURITY PERIOD</td>
            <td class="pl-2 pr-2" >:</td>
            <td><asp:Label ID="lblVadeSuresiSozlesme0" runat="server" Text="Boş Bırakmayınız" Font-Bold="True"></asp:Label></td>
        </tr>
      </tbody>
  </table><br />

                          <strong>4.2.</strong> The cash and/or credit sale price of the subject residence in sale thereof on a turnkey basis (hereinafter referred to as Sale Price) is not inclusive of the Value Added Tax. The VALUE ADDED TAX (VAT) of the independent section sold shall be paid by BUYER separately from the sale price. The changes to occur in VAT rates shall be reflected on BUYER exactly. In case of failure to pay the VAT in due period, BUYER acknowledges, represents and undertakes that it shall pay the VAT amount to SELLER together with 10% excess thereof. <br />
                          <strong>4.3.</strong> In payments denominated in foreign currencies, the payment is paid in such currency. If BUYER requests so, the sale price due may be paid by being converted into Turkish Lira over the effective selling rate of the Central Bank. The sale price has been determined based on the land share which is the subject of the sale, construction costs, SSK premiums, infrastructure, environmental and leisure center arrangements and BUYER does not have any objection to this subject. <br />
                          <strong>4.4.</strong> BUYER shall pay the down payments, deposits and installments of the subject independent section in the headquarters of SELLER in cash or to such bank accounts as are determined by SELLER in such due periods and upon such conditions as are determined in the payment schedule and undertaking. BUYER is required to make any kinds of payments of it on maturity dates specified in this Contract. <br />
  
                    <strong>4.5.</strong> If BUYER has not paid the installment of the previous month, the payment to be made hereafter shall be deemed to have been paid to the account of the installment of the month not paid first.  <br />
  
                    <strong>4.6.</strong> BUYER cannot retard the payment of its debt and installments due to failure by SELLER to fulfill its performances. In order for BUYER to be able to claim its contractual rights, it should have fulfilled its debts and obligations on the due dates referred to in the Contract and the annexes hereto. The delivery period of the independent section hereunder may be extended as much as the period of failures in the payments. In payments made by BUYERİ, periodicity is fundamental. Accordingly, payment of any of the debts and/interests for which an installment plan is made cannot be assessed that previous debt installments and/or their interests have been paid. BUYER is required to prove the payment made by it of the debt installments and/or their interests separately. <br />
  
                    <strong>4.7.</strong> In case it fails to effect the down payments, interim payments, deposits and the installments determined in a timely manner, BUYER acknowledges and undertakes that it shall pay the default interest at the rate of 18% (eighteen percent) per annum for each month in delay no less than the WPI - PPI average.   <br />
  
                    <strong>4.8.</strong> In the event that BUYER goes into default in payment of its two successive installments or fails to pay its two successive installments in a timely manner as a minimum or the installment amount not paid becomes as much as minimum one tenth of the total sale price and/or BUYER fails to pay its four different installments on their respective due dates even if such installments are not successive, all of the remainder receivables become due and payable. SELLER has a right and is entitled to claim from BUYER all of its remainder receivables having become due according to this Article. In case of failure by BUYER to pay two successive promissory notes it has given to SELLER or such promissory notes are noted in the meaning of effect of the payment of the installments and/or down payments or interim payments or with a view to making another payment, all receivables hereafter become due and payable and SELLER has a right and is entitled to claim all its receivables. <br />  
  
                    <strong>4.9.</strong> BUYER acknowledges and undertakes that it has negotiated, examined this Contract with the SELLER Article by Article and accepted the content hereof Article by Article and, within this scope, no Article of this Contract falls within the scope of unjust condition as referred to in Article 5 of the Law No. 6502 on Protection of Consumer.   <br />
  
                    <strong>4.10.</strong> In case the debt becomes due and payable in accordance with the provisions hereinabove, BUYER shall pay the entire debt having become due and payable to SELLER within 15 (fifteen) days together with it’s the contractual interest and the default interest determined in this Contract upon first demand by SELLER. <br />
  
                    <strong>4.11.</strong> In case SELLER demands its receivable having become due and payable within the framework of the provisions hereinabove and BUYER fails to pay such debt within 15 (fifteen) days, SELLER is entitled to collect these receivable of it through legal channels. <br />
  
                    <strong>4.12.</strong> Failure by SELLER to pursue legal proceedings after the default of BUYER does not entitle BUYER to any right nor does it remove the default of BUYER. <br />
                   
                    <strong>4.13.</strong> BUYER shell pay its payments to SELLERS <asp:Label ID="lblBankaSubeENG" runat="server" Text="Boş Bırakmayınız"></asp:Label> branch <asp:Label ID="lblParaBirimiBankaENG" runat="server" Text="Boş Bırakmayınız"></asp:Label> account , <asp:Label ID="lblSwiftBankaENG" runat="server" Text="Boş Bırakmayınız"></asp:Label>  Swift and <asp:Label ID="lblIBANBankaENG" runat="server" Text="Boş Bırakmayınız"></asp:Label> IBAN number bank account.<br /><br /><br/><br/><br/><br/>

                          <strong style="text-decoration:underline">ARTICLE 5- DELIVERY OF THE RESIDENCE</strong> <br /><br />

                          <strong>5.1.</strong> The delivery of residence which is the subject hereof shall be realized to BUYER on a turnkey basis on the end of 2021 except for force majeure events, unexpected situations and the exceptional situations referred to herein. SELLER may extend this date for a period of 6 months without any obligation to pay any indemnity, cost, etc. The fact that delivery of all independent sections to BUYER becomes impossible actually on the same date due to abundance of the number of independent section to be delivered does not mean that the deliver has delayed.  <br /> 
  
                    <strong>5.2.</strong> If SELLER cannot deliver the immovable property within 6 months from the date determined for the delivery, SELLER shall pay penalty to BUYER in the amount of TL 5 per m2 (m2x5TL=the penalty amount payable on a monthly basis) in the period elapsed from the date on which this period of 6 months has expired until the delivery of the immovable property for each month for which it cannot deliver the immovable property.<br /> 
  
                    <strong>5.3.</strong> Within 7 (seven) days from the written invitation by SELLER of the BUYER for BUYER taking delivery of the residence, BUYER is required to take delivery of the residence in person or through a proxy it is to designate upon controlling that the residence is in compliance with this Contract and the technical specifications. BUYER shall take delivery of the independent section by means of a certificate of acceptance. In case BUYER is more than one, a delivery made to one of BUYERS is deemed to have been made to all BUYERS. It is required that all payments envisaged to be paid by BUYER (taxes, fees, duties, subscription fees, etc.) have been made, the insurance policy maintained; if the independent section is to be taken delivery of through a proxy, the power of attorney issued properly and all the documents being annexes to the Contract have been submitted to SELLER. In case BUYER fails to fulfill its contractual obligations, and the independent section cannot be delivered to BUYER, BUYER cannot make any claim and demand any right under any name whatsoever. <br />
  
                    <strong>5.4.</strong> BUYER takes delivery of the residence upon the invitation taking place. If any, the defective and deficient works are determined with the SELLER. The Parties agree on the determination of the deficient and defective works within 5 business days including the delivery date of the residence. If any deficient and defective work is not determined within this period, BUYER acknowledges and represents that it has taken delivery of the immovable property in full and in a perfect condition.  <br />
  
  If deficient and defective works are determined, SELLER determines a sufficient period for correction of the deficient and defective works after such determination. BUYER cannot raise any objection to this period in any way and the period determined for elimination of these deficiencies and defects is not considered to be a delay and BUYER cannot make any claim of indemnity, damages and losses such as delay or default interest in any way and in case it is determined during the delivery of the residence that there are the needs of repair, BUYER acknowledges, represents and undertakes that it shall not abstain from taking delivery of the residence showing the need for repair as a reason. The responsibilities of BUYER arising from the common expenses shall apply also in this case. <br /> 
  
                    <strong>5.5.</strong> Apart from these situations, in case BUYER takes delivery of the independent section and does not have any objection within 5 business days including the delivery date, the independent section shall be deemed to have been delivered to BUYER free of any defects and BUYER shall not claim any refund of price, indemnity, penalty, etc. under any name whatsoever based thereon and BUYER shall be deemed to have waived all its rights to sue in this direction. BUYER has acknowledged and undertaken that it shall not demand any right and make any claim based on the Law No. 6502 on Protection of Consumer.    <br />
  
                    <strong>5.6.</strong> Even if BUYER fails to accept the invitation of SELLER within 15 (fifteen) days or fails to take delivery of the residence due to any reason whatsoever although it has accepted the invitation, BUYER is required to participate in any kinds of management and common expenses of the site from the written invitation date. However, in case SELLER has collected the price of the residence in full also in two cases envisaged in this Article, SELLER shall keep the residence as trustee. SELLER is not obliged to procure the maintenance and protection of the residence in this capacity of it. SELLER shall receive a trustee fee at the rate of ‰ 1 of the current market value of the residence for each day against this service. BUYER shall pay the expenses made for maintenance, protection and insurance and common expenses together with the monthly delay penalty of 10% from the actual payment date. <br />
  
                    <strong>5.7.</strong> SELLER is entitled to lien for all these receivables. SELLER is not obliged to keep the residences not taken delivery of within 1 year from the invitation date. In this case, SELLER is entitled to renege on the Contract without payment of any sum under any name whatsoever such as indemnity, penalty, etc. unilaterally. SELLER reserves other rights arising from the legislation. In case of termination of this Contract in this way, SELLER shall pay to BUYER the portion of sale price paid until the date of termination according to the provisions of Article 8.3 hereof save for the right of SELLER to claim indemnity arising from this situation in accordance with said Article.  <br /> 
  
  
                    <strong>5.8.</strong>  The delays, faults arising from public / private institutions and organizations procuring Electricity, Water, and Natural Gas shall not be deemed to be physical deficiency and not affect the delivery period since these situations are not at the disposition of SELLER. BUYER cannot abstain from taking delivery of the independent section asserting these. The independent section shall be delivered by SELLER to BUYER in the condition being ready to request the electricity, water, natural gas, telephone, internet, etc. services and the fact that the costs of water and electricity are applied at the site tariff arising from the infrastructure deficiency of the public and private institutions and organizations procuring such goods and services and within the period elapsing until obtaining the occupancy permit shall not be deemed to be deficiency or fault. BUYER has acknowledged and represented this situation in advance. <br />
  
                    <strong>5.9.</strong> Upon delivery of the immovable property, all damages and losses pass on BUYER. Any kinds of taxes such as real property taxes, environmental cleaning tax, etc., fees and expenses required to be paid relating to the immovable property after the delivery thereof shall be borne by BUYER.  <br />
  
                    <strong>5.10.</strong> Upon considering that BUYER has taken delivery of the independent section or is deemed to have taken delivery of the independent section, BUYER shall be responsible for all obligations attributed to Owner and persons deemed to be Owner as per the Property Ownership Law and in line with the Management Plan. BUYER has acknowledged and undertaken to pay also the advances on expenses to be claimed by the provisional management having been formed prior to the delivery of the residence in line with the business project.  <br /> 
  
                    <strong>5.11.</strong> Deemed to have taken delivery of the independent section, BUYER has acknowledged in advance that it has accepted the residence understanding that there may be sound, noise due to continuation of the construction activities on a 7/24 basis in the entire project including other sections as with its own block on the date of delivery and seeing the physical condition of the residence, and it is aware of the fact that entry by it to the construction site is dangerous and this shall not be deemed to be a deficiency and defect/fault.  <br />
  
                    <strong>5.12.</strong> In case of existence of any force majeure events as referred to herein, SELLER is not liable to deliver the independent section until disappearance of such force majeure conditions. In such conditions, an additional period of time as much as the period in which force majeure event continues is added to the date of delivery. Furthermore, BUYER acknowledges, represents and undertakes that it shall not claim any right and indemnity from SELLER due to technical and legal difficulties encountered during performance of the project and being able to give rise to delay in the delivery period. <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 6- TITLE DEED TRANSFER</strong><br /><br />

                          In case BUYER pays all its installments, fulfills all of other payments that may be requested in accordance with the Contract and it does not have any debt left to SELLER in accordance with this Contract and BUYER further pays all taxes, title deed fees, occupancy permit fees, duties, VAT and all expenses and fulfills all other obligations of it arising from this Contract, the title deed of the independent section shall be transferred to the BUYER.    <br /><br /><br/>

                          <strong style="text-decoration:underline">ARTICLE 7- RIGHTS AND OBLIGATIONS OF THE SELLER </strong><br /><br />

                          <strong>7.1.</strong> SELLER shall deliver the residence to BUYER on a turnkey basis by completing the same in accordance with the terms and conditions specified in the Technical Specifications attached hereto as an Annex except for the reasons written in Article with heading ‘Force Majeure’ in this Article. <br />
  
                    <strong>7.2.</strong> SELLER may make changes in the Technical Specifications and Layout Plan provided that it preserves the same quality in its projects on condition that the gross area, location and floor of the independent sections specified are not changed due to the difficulties arising from official agencies after drawing up this Contract. <br />
  
                    <strong>7.3.</strong> On condition that BUYER pays all its installments, fulfills all of other payments that may be requested in accordance with the Contract and it does not have any debt left to SELLER in accordance with this Contract and BUYER further pays all taxes, title deed fees, occupancy permit fees, duties, VAT and all expenses and fulfills all other obligations of it arising from this Contract, the title deed of property ownership shall be transferred to the BUYER.  <br />
  
                    <strong>7.4.</strong> SELLER shall make the necessary application with respect to obtaining the occupancy permit; however, BUYER shall not press on SELLER with respect to the occupancy permit and not claim from SELLER any damages, losses and indemnities under any name whatsoever due to delays or hesitancies in those mentioned. In the event of failure to obtain the occupancy permit due to administrative obligations, BUYER acknowledges, represents and undertakes that it shall not claim any sum, indemnity, damages and losses from SELLER under any name whatsoever.  <br />
  
                    <strong>7.5.</strong>SELLER may place its advertisements, writings and boards of sizes and texts of its choice to the suitable locations of the construction / site. With respect to the project containing the independent section offered for sale, the statements used in any publications such as any kinds of banners, muck-up, brochure, flyer are of introductory and informative nature and not of any undertaking character. Based on these publicities, BUYER shall not claim anything from SELLER under any name whatsoever. <br /><br /><br/>

                          <strong style="text-decoration:underline">ARTICLE 8- RIGHTS AND OBLIGATIONS OF THE BUYER</strong><br /><br />

                          <strong>8.1.</strong> In case of any demand by SELLER, BUYER shall give SELLER the power of attorney containing the necessary and sufficient authorizations to such persons as shall be designated by SELLER whereby such person(s) is/are authorized and empowered to have any kinds of application drawings and renovation projects drawn with respect to the residence, constitute personal and real right of easement for and against, have correction of type made, convert the construction servitude to condominium, obtain habitation permit, have the construction servitude cancelled, constitute construction servitude again, have the renovation projects certified, have the management plan amended, carry out the maintenance, repair, security services of the residence and/or site, conclude service and operating contracts with 3rd parties, have the electricity, water, natural gas and sewerage system connections made, take any action before municipalities, development directorates, TEDAŞ, İGDAŞ, İSKİ, Real Property Tax Office, Fees Tax Office for all procedures relating to these subjects to be done and performed before all public and private departments. Besides, within such power of attorney which shall contain said powers, BUYER shall give SELLER powers to be authorized to make any dispositions including, but not limited to, increasing the number of the independent sections, and making alteration in independent section within the architecture project in which the independent section is found, and make any changes, give consent to the dispositions and alterations made, fulfill all the obligations necessary for carrying out all decisions to be taken by the contractor company or the Board of Property Owners of the site in this direction and give consent before Land Registry Office and relevant Municipalities in this direction and such power of attorney shall be deemed to be an annex hereto.  <br /> 
  
                    <strong>8.2.</strong> Having the subscription to electricity, water, natural gas made after delivery of the residences and any expenses to be requested by relevant departments with respect to the same belong to the BUYER. Since the area where its residence is found shall be used within the integrity of the site, BUYER has acknowledged exactly the contracts to be made with neighboring parcel owners and third parties or organizations for the environmental maintenance, repair, security thereof and operation of the leisure centers. This subject shall also be regulated in the management plan. BUYER shall comply with all the contracts to be made with both third parties and neighboring parcel owners and participate in the relevant expenses and become direct party to the contract by taking over such contract by way of endorsement when becoming the owner of the immovable property before land registry office.  BUYER is liable to participate in the common expenses from the date of delivery of the residence to it even if the condominium is not started. <br />
  
                    <strong>8.3.</strong> In case the Contract is terminated by SELLER unilaterally, BUYER represents that it has acknowledged that the amounts paid by it until the date of termination shall be paid in 10 installments without interest with effect from the 15th day following the date of termination. In case of termination of the Contract in this way, BUYER is, save for other rights of SELLER arising from the contract and legislation, required to pay separately all the damages of SELLER arising from the termination and determined by SELLER unilaterally. BUYER has acknowledged, represented and undertaken that the items of losses sustained by SELLER shall be set off ex officio by SELLER against the sum due and payable by SELLER to the BUYER. In case the amount to be returned by SELLER to BUYER is below this amount, SELLER reserves the right to claim the remainder amount.<br /> 
  
                    <strong>8.4.</strong> SELLER may request the BUYER having gone into default in payment of the sale price to remedy the damages to be calculated according to the difference between such sum and the price it has obtained from sale of the item sold to another party in compliance with the rules of good faith. The amount of this indemnity cannot be less than 5% of the sales price. BUYER has acknowledged, represented and undertaken that such amount and the items of loss incurred by SELLER shall be set off ex officio by SELLER against the sum due and payable by SELLER to the BUYER. In case the amount to be returned by SELLER to BUYER is below this amount, SELLER reserves the right to claim the remainder amount. If the residence has been delivered to BUYER on the date of termination of the Contract, BUYER acknowledges, represents and undertakes that it shall vacate the residence within 3 months from the date of termination. <br />
  
                    <strong>8.5.</strong> BUYER acknowledges, represents and undertakes that, after transfer of the independent section which is the subject of the Contract to BUYER before relevant Land Registry Office, BUYER with the capacity of apartment owner it shall gain, agrees that SELLER and the Board of Property Owners of the site where the residence is found make such dispositions, and carry out any kinds of changes as they wish in terms of any and all dispositions including, but not limited to, increasing the number of the independent sections, and making alteration to be made by SELLER and the Board of Property Owners of the site where independent section is found, and shall give deed of consent as an annex to this Contract containing that it shall perform all the obligations on its part in full and completely for all decisions to be taken in this direction to be carried out and that, even in case it sells the said immovable property, such deed of consent shall apply also to the person to whom it is to sell the immovable property. <br />
  
                    <strong>8.6.</strong> BUYER is required to comply with all the provisions of the management plan and business project to be registered by SELLER before land registry office and all the decisions taken and to be taken by the general board of property owners and participate in the expenses relating to the use of the residence, whether dwelled in or not, from the date on which the residence is deemed to have been taken delivery of or it has taken delivery of its residence, and such expenses as shall be determined by the management and pay the same in due time. <br /> 
  
                    <strong>8.7.</strong> With a view to preserving the general standard of the residence which is the subject of the Contract, BUYER may assign or transfer its rights arising from this real property preliminary sales contract to real or legal persons, institutions or organizations (third parties) only on condition that it obtains written approval of the SELLER. However, SELLER is free whether to accept this transfer. Apart from this, BUYER cannot assign or transfer, pledge, attach the immovable property and its rights arising from this Contract to any 3rd party/parities until completion of its debts to SELLER or receipt of the title deed of the immovable property. Transfer or assignment without prior consent of SELLER entitles the SELLER to terminate the Contract unilaterally. In this case, the contract is terminated on condition that the provisions in relation to termination of the Contract are fulfilled exactly. <br /> 
  
  
                    <strong>8.8.</strong> Causing the delay in the title deed transfer by not sending the documents necessary for title deed registration in the requested period, BUYER acknowledges, represents and undertakes that it shall pay the taxes, duties, fees and expenses that are required to be paid by SELLER to SELLER together with their legal interests.  <br />
  
                    <strong>8.9.</strong> In case the electric energy is cut off within the project, BUYER acknowledges, represents and undertakes that it shall pay the price of the energy to pass through the electric meter in case the generators to supply energy to the central system step in. <br />
  
                    <strong>8.10.</strong> In case BUYER is more than one real or legal person, it is considered that the payments made have been effected by BUYERS on an equal basis unless other written contract with BUYERS is in force. At the stage of the transfer of the ownership before land registry office upon payment of the debt in full, the ownership of the independent section is transferred to BUYERS in proportion to their shares. However, in case where BUYER is more than one real or legal person, BUYERS are jointly and severally responsible for the entire debt. So long as the entire debt is not paid, no transfer and registration procedure shall take place before land registry office.  <br />
  
                    <strong>8.11.</strong> Until constitution of the management organs of the immovable property necessary according to the Property Ownership Law and management plan from the delivery of the independent section, the management and operation of the independent section and blocks shall be implemented by SELLER. In case SELLER assigns this management and operation power it has to any real or legal person, BUYER shall not raise any objection of hostility against the Site Management Services being undertaken and the subscription fees being collected by such persons. The execution proceedings to be instigated against the persons not paying their subscription fees on time and/or lawsuits that may be brought due to management services shall be instigated and brought directly by persons and/or legal persons undertaking the site management services. BUYER acknowledges, represents and undertakes that it shall not raise objection of hostility against such proceedings or lawsuits.   <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 9- PRINCIPLES IN RELATION TO TAXES, DUTIES, FEES AND OTHER EXPENSES</strong><br /><br />

                          <strong>9.1.</strong> All the title deed fees required to be paid during transfer of the title deed of the independent section which is the subject of the Contract to BUYER shall be paid by BUYER. In addition to the sale price, BUYER acknowledges, represents and undertakes that it shall pay all fees, expenses and other costs including the expenses of construction servitude and the expenses for change of type and transition to condominium arising from the legislation in force in relation to the independent section and the land registry and notary expenses arising from sale of this independent section.<br />  
  
                    <strong>9.2.</strong> All the taxes, fees and other obligations such as real property tax, environmental cleaning tax and fees after issuance to BUYER of the construction servitude shall belong to BUYER. If said taxes, fees and other obligations have been paid and fulfilled by SELLER, such obligations paid and fulfilled are the disposition made for and on account of BUYER who shall be required to pay and fulfill the same within fifteen days at the latest. <br />
  
                    <strong>9.3.</strong> Upon signing the Contract, the stamp tax shall be paid by BUYER. The stamp tax should be paid separately from the contract price.<br />
  
                    <strong>9.4.</strong> At the stage of application to Occupancy Permit for the independent section it has bought, BUYER shall pay the real property tax, expenses for correction of type, occupancy fees, Municipality contributions and any fees, expenses and imposts not mentioned herein; however, required to be paid as a legal obligation under any name whatsoever to SELLER upon first demand separately from the sales price.  <br />
  
                    <strong>9.5.</strong> BUYER shall pay the expenses of electricity, water, natural gas, telephone, internet of the independent section it has purchased and utilization contracts and the participation expense shares of these procedures, the subscription shares, deposits and other expenses and costs and also the deposits and guarantees of the leisure centers separately from the sale price. <br /> 
  
                    <strong>9.6.</strong> BUYER is required to maintain the Natural Disaster Insurance (Doğal Afet Sigortası (DASK)) of the independent section it takes delivery of and such insurances that may be requested as per the legal legislation during the term of the Contract. If these insurances have not been maintained by BUYER within 20 (twenty) days, such insurances shall be maintained by SELLER and their costs shall be requested from BUYER. BUYER is required to pay such amounts within 3 (three) days from the date of first demand by SELLER.  <br />
  
                    <strong>9.7.</strong> BUYER undertakes that it shall pay all its debts arisen or to arise from this Contract (taxes, duties, fees and other expenses) without delaying the same with any excuse or ground in due period without asserting any condition. For a debt promised and undertaken by BUYER to be paid hereunder; however, for which no note has been drawn up, SELLER draws up an account document notifying the BUYER of the debt it is required to pay and sends the same to BUYER. The debt is deemed to have accrued on the date of the account document. The due date of the debt is the 15th (fifteenth) date following the date of issuance of the account document.<br /><br /><br/><br/>

                          <strong style="text-decoration:underline">ARTICLE 10- CONSTITUTION OF THE CONSTRUCTION SERVITUDE AND CONDOMINIUM </strong><br /><br />
                          <strong>10.1.</strong> To be prepared during the constitution of construction servitude, the Management Plan shall be submitted by the SELLER to land registry office. The rules in relation to utilization, management and administration, cleaning, maintenance and repairs of the immovable properties constructed and the independent sections, leisure centers, common areas, commercial areas, etc. within the scope thereof shall be included in this Management Plan. During conclusion of this Contract, BUYER has been given a Management Plan and BUYER acknowledges, represents and undertakes irrevocably and for an indefinite period of time that it has examined such Management Plan and understood its content and accepted the same exactly. Again, BUYER acknowledges, represents and undertakes that, if it sells the independent section to any third party on any date, it shall notify this provision to new BUYER during the sale. <br />
  
                    <strong>10.2.</strong> BUYER has acknowledged and undertaken that SELLER is authorized to carry out any technical, architectural utilization changes as it deems necessary unilaterally in the facilities and buildings in the common spaced other than the independent sections which are the subject of the Contract, and if any, in the appurtenances and allocated areas thereof. <br /> 
  
                    <strong>10.3.</strong> The name of the site to be constructed is <strong>TRIO GARDEN</strong>, which is to be written as such to the Management Plan.  <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 11- SITE MANAGEMENT</strong><br /><br />

                          <strong>11.1.</strong> BUYER acknowledges and undertakes irrevocably that it has assigned all its rights arising from its Condominium Right to SELLER or such real or legal person or persons as shall be authorized by SELLER by means of this Contract for a period of … years from the date of delivery of one part or all of the buildings. The management of the construction to be made in site shall be carried out by SELLER in person or such real or legal person or persons as shall be authorized by SELLER for a period of … years from the date of delivery of one part or all of the buildings. In case the Board of Property Owners requests to do so at the end of this period, the management of the site shall be continued by SELLER in person or such real or legal person or persons as shall be authorized by SELLER. If property owners do not request such management function at the end of this period, the site management shall be assigned to independent section owners of the site. BUYER acknowledges that it shall not take any step for abrogation of this Article nor shall it give support to those taking steps in that direction and that it has been informed as necessary for this Article and the subject has been negotiated with the SELLER.  <br />  
  
                    <strong>11.2.</strong> Within this period, during the management to be performed by SELLER in person or such real or legal person or persons as shall be authorized by SELLER, those who are responsible for the management are not responsible like a proxy towards the Property Owners. The collection is accrued according to the operating budget and expended and set off by SELLER in person or such real or legal person or persons as shall be authorized by SELLER. The release of the management is made by SELLER on an individual basis. BUYER has acknowledged and undertaken that it shall comply with the decisions of such real or legal person or persons as shall be authorized by SELLER who shall act according to the Management Plan and pay all the expenses of common spaces, leisure centers and independent sections in compliance with the provisions of the Management Plan  <br />
  
                    <strong>11.3.</strong> The provisional management period may be extended until constitution of the necessary management organs according to the Property Ownership Law. This situation and reducing the same to writing in the Management Plan have been accepted by BUYER exactly and the necessary consent and approval have been given on this subject. In this process, BUYER acknowledges and undertakes in advance that, even if the Condominium is started, it shall comply with all the provisions of the Property Ownership Law, respect the Approved Business Project, pay the subscription fees on a regular and timely basis and, even if it does not take delivery of the independent section, it has accepted to pay advance on joint expenses and joint expense subscription and that it shall pay delay indemnity of monthly 5% (five percent) for subscriptions or advances on expenses being in force in the Property Ownership Law and not paid in a timely manner and that it shall comply with the delay indemnity referred to in the Property Ownership Law and changes to other Articles.   <br />
  
                    <strong>11.4.</strong> BUYER acknowledges that it shall comply with the Management Plan and pay the joint advance on expenses to be determined to be used within the period to elapse during putting the Business Project into practice upon the residences being opened for occupancy by fulfilling the requirements and participate in all expenses and pay all the expenses and advances to be charged in accordance with the provisions of the Property Ownership Law.  <br />
  
                    <strong>11.5.</strong> BUYER is entitled to sell or lease out the independent section it has bought to its own name with the approval of the SELLER. Property owner / BUYER cannot authorize the 3rd party real estate agents and those acting like real estate agents other than it itself regarding selling and leasing out the residence. The only authorized person on this subject is SELLER.  <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 12- TERM AND TERMINATION OF THE CONTRACT</strong><br /><br />

                          <strong>12.1.</strong> This Contract shall enter into force on the date on which it is signed and expire automatically without any need for further notice with BUYER having fulfilled its contractual obligations, and the residence being/having been delivered.  <br />  
  
                    <strong>12.2.</strong> In the event that BUYER fails to comply one / several of the provisions of this Contract, it is determined that the statements it presented in the documents are not accurate, wrong and misleading information is given, BUYER fails to fulfill the points stated in any notifications to be made by SELLER to the address of BUYER within the due periods foreseen, BUYER fails to prepare the documents necessary for title deed transfer and mortgage procedures and deliver the same to SELLER within the due period determined by SELLER, the independent section is not taken delivery of within the period determined, the BUYER makes the manufactures and alterations contrary to the project applied prior to the land registry office procedures, BUYER fails to pay all its debts required to be paid by it and especially it fails to pay land registry fees, occupancy permit fees, taxes and expense as well as subscriptions, SELLER is entitled to terminate this Contract unilaterally and promptly without the need for further notice, without the need for payment of any indemnity, penalty and any other prices save for the special regulations hereunder relating to these points in all other cases constituting contradiction to the contract. In the event that SELLER terminates this Contract in this way, BUYER acknowledges, represents and undertakes that it shall pay 20% of the price of the immovable property along with and in addition to all damages incurred by SELLER in cash and in a single sum within 7 (seven) days from the date of first demand by SELLER. BUYER hereby acknowledges and represents that it shall not make any claim of exorbitance regarding the amount of penal clause nor shall it have recourse to any legal remedies due to reduction or invalidity of the same and that the penalty constitutes a liquid claim collectable by way of execution proceedings. <br />
  
  If the obligation violated is with immediate performance or it is understood res ipsa loquitur that granting period shall remain ineffectual or the obligation violated contains a negative performance, SELLER may terminate this Contract unilaterally and promptly without the need for further notice, without the need for granting any time for elimination of the violation and claim the penalty amount prescribed hereinabove.  <br />
  
                    <strong>12.3.</strong> In case BUYER is incapable of making its payments, goes bankrupt and/or its bankruptcy is decreed, SELLER is entitled and has a right to terminate this Contract forthwith without any need for payment of any price under any name whatsoever. <br />
  
                    <strong>12.4.</strong> In case of termination by SELLER of the Contract based on the provisions hereof, SELLER shall be entitled to collect all the damages it has incurred according to Article 8.3 hereof.  <br />
  
                    <strong>12.5.</strong> In case of termination by BUYER of the contract unilaterally, BUYER is liable to indemnify any damages incurred by SELLER due to the termination of the Contract. This amount cannot be less than 20 percent of the contract price. SELLER shall collect its damages according to Article 8.3 hereof. In cases where the residence has been delivered to BUYER and/or waiver of ownership rights has been made in relation thereto, BUYER acknowledges and represents in advance that the Contract cannot be terminated by it unilaterally.   <br />
  
                    <strong>12.6.</strong> In Bank Mortgage Loan transactions, due to failure by BUYER to fulfill the conditions for loan or BUYER failing to make payment of the installments in the number determined by the Bank, this Contract may, upon notification of the bank, be terminated by SELLER unilaterally, without the need for payment of any indemnity, penalty or any other sum without the need for giving any notice. The penalty for settlement of a loan, interests, expenses, commission are under the obligation of the BUYER. In this case, SELLER returns the amount of loan it received to the Bank exactly. In this case, SELLER may constitute real or legal rights of whatever nature on one part or whole of the independent section for such persons upon such terms as it wishes.  <br /><br /><br/><br/><br/><br/>

                          <strong style="text-decoration:underline">ARTICLE 13- FORCE MAJEURE EVENTS </strong><br /><br />

                          <strong>13.1.</strong> The extraordinary and unexpected conditions which do not exist during signature hereof and constitute impediment affecting the construction of the building or fulfillment of the obligations of the parties such as war, mobilization, natural disasters like earthquake and flood, the restrictions introduced by the government due to an economic bottleneck existing throughout the country, the delays in obtaining licenses due to reasons not attributable to SELLER, dangerous epidemics, failure to provide the materials, energy and personnel necessary for construction due to strike, lockout have been considered to be force majeure events hereunder. Besides and in addition to the above, in case the construction stops and/or slow down due to reasons beyond the reasonable control of SELLER and not resulted from the administration, these periods are added to the delivery period. In case of any delay by SELLER in delivery of the residence due to any force majeure event, SELLER is entitled to add the period of force majeure to the period of delivery of the key. The days on which work is not carried out due to weather conditions accepted by the Ministry of Public Works for the province of Istanbul shall be added to the delivery period.  <br />
  
                    <strong>13.2.</strong> In the event that the damages that may arise due to said force majeure events in this Article increase the costs extremely on the date on which the Contract is signed and such costs aggravate the completion of the construction, BUYER has acknowledged paying to SELLER the damages that may arise in the proportion of rights and equity. In case of occurrence of the situations mentioned in this Article, this situation is notified by SELLER to BUYER within 21 days. BUYER is entitled to terminate the Contract in case BUYER does not want to cover such expenses notified to it. In case BUYER terminates the Contract due to this reason, the sum paid by BUYER from the notification of the termination to SELLER to that date is returned to BUYER without any interest 6 months later. Asserting the reasons mentioned in this Article, BUYER cannot abstain from fulfillment by it of its payment and other obligations save for the right of SELLER to claim its damages arising from this in accordance with Article 8.3 of the Contract. <br /> 
  
                    <strong>13.3.</strong> If the force majeure events last more than 3 months, the SELLER may be terminate this Contract without the need for payment of any indemnity, penalty and any sum under any name whatsoever. In this case, SELLER returns the sum paid by BUYER to that date 6 months later without any interest. In this case, if BUYER has obtained its title deed, it conveys the ownership of the land share corresponding to the independent section allocated to it to SELLER. Without carrying out the transfer of land share before land registry office, no repayment is made to BUYER. The title deed transfer fees shall be paid by BUYER save for the right of SELLER to claim its damages arising from this in accordance with Article 8.3 of the Contract. <br />
  
                    <strong>13.4.</strong> If the force majeure events last more than 3 months, BUYER is free to suspend its payments or continue to make such payments. In case BUYER suspends its payments due to this, BUYER continues to make all its payments accumulated to that date within 6 months and its payments on their due dates after that date upon disappearance of the force majeure and this situation being notified to it.  <br /><br /><br/><br/><br/><br/><br/><br/>

                          <strong style="text-decoration:underline">ARTICLE 14- AMENDMENTS TO THE PROJECTS AND CHANGE IN MATERIALS </strong><br /><br />

                          SELLER is entitled to make amendments to the certified projects by making amendments to the layout plan, architectural projects, in the numbers of block and residences and their places as well as their locations, the types and areas of residences, thee floor plans, inside the blocks and residences, in types of manufactures, and change the concept and settlement due to obligations in related projects relating to the residence it promises to sell ads well as reasons arising from new zoning status, concrete calculations, application and marketing and/or in case SELLER deems necessary in accordance with the zoning plan and legislation on condition that no change occurs in gross square meter and location of the residence bought by BUYER, or make such alterations it itself deems necessary or technical opportunities require to be made. The delays occurring due to amendments made shall be added to the delivery period of the residence and SELLER shall not pay any penalty, indemnity, any sum, etc. under any name whatsoever to BUYER due to this period. <br /> 
  
  In case the residence project which is the subject of the Contract is changed or cancelled by the Administration due to any reason after being approved by the Administration, the sum paid by SELLER to that date shall be returned to the account number notified by SELLER to BUYER without any interest within 6 months from the date on which the project is changed or cancelled by the Administration. SELLER shall not pay to any penalty, indemnity, any sum, etc. under any name whatsoever to BUYER due to change or cancellation of the project by the Administration relating to subject residence project. <br /> 
  
  In case SELLER deems necessary, SELLER reserves the right to change the materials during the construction of the residence and the new materials to be used shall be equivalent of the materials changed. <br />
  
  Seller is entitled to and has a right to determine all the constructions and final project to be made in trade center, leisure center and cultural facilities, sports areas, green area, children’s parks and similar areas. BUYER has acknowledged, represented and undertaken the rights and powers of SELLER contained within the scope of this ARTICLE and the changes made in compliance with the same. <br /><br /><br/><br/><br/>

                          <strong style="text-decoration:underline">ARTICLE 15- CONFIDENTIALITY </strong><br /><br />

                          <strong>15.1.</strong> Confidential information is the firm’s information being confidential by their nature, which the Parties do not want them to be known to third parties, have not been made public, and which the Parties see benefit in keeping the same confidential such as financial, personnel related information. The Parties have acknowledged and undertaken that the “Confidential Information” is subject to the prohibition to be disclosed to any third parties except for official departments that are authorized to receive the same, and that they shall not give such information to any third parties with any reason whatsoever, and they shall take any measure for such information not to be disclosed, and ensure that their own personnel as well as other persons comply with this obligation, and that they shall not present the confidential information to the knowledge and use of third parties (persons, institutions, organizations, firms, companies, etc.) either directly or indirectly in any way. <br />

                          <strong>15.2.</strong> In case it is determined by SELLER unilaterally without the need for obtaining any court decree that this obligation of non-disclosure has been violated by BUYER either during the term or expiration/termination of this Contract, BUYER acknowledges and undertakes that it shall pay penalty to SELLER as prescribed in Article 12.2. <br /> 
  
                    <strong>15.3.</strong> When BUYER becomes aware of the fact that the confidential information has been disclosed by persons for whom it is responsible as contrary to the Contract, it is liable to notify SELLER forthwith and in writing of the same. SELLER whose confidential information has been disclosed contrary to the Contract is entitled to claim indemnification by BUYER of any of its damages it has incurred as well as have recourse to legal remedies at the cost of the BUYER upon such notification or automatically. <br />
  
                    <strong>15.4.</strong> The provisions of this ARTICLE shall survive the termination or expiration of this Contract due to any reason as an independent undertaking between the Parties hereto. <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 16- SETTLEMENT OF DISPUTES AND EVIDENTIAL CONTRACT </strong><br /><br />

                          <strong>16.1.</strong> In settlement of any disputes arising from this Contract, Istanbul Çağlayan Courts and Enforcement Offices shall have exclusive jurisdiction. <br />
  
                    <strong>16.2.</strong> In disputes that may arise from this Contract and the performance hereof, BUYER acknowledges, represents and undertakes that the electronic and system records kept by SELLER in its database and on its servers, its commercial books and their entries, computer records and correspondences made on electronic environment shall constitute binding, conclusive and exclusive evidences and that it holds harmless the SELLER from tendering oath and this Article is of evidential contract nature in accordance with Article 193 of the Code of Civil Procedure. <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 17- NOTIFICATION </strong><br /><br />

                          The notification addressees of the Parties are their addresses first written in Article 1 of this Contract and in case any change in such addresses is not notified to other party within 5 days through notary public or in writing, the notification sent to the written addresses of the Parties shall be deemed to have been notified to its addressee and have all the legal outcomes of a valid notification even if the same is returned without being served. <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 18- PARTIAL INVALIDITY AND IMPLIED WAIVER </strong><br /><br />

                          <strong>18.1.</strong>This Contract is the entire contract together with its annexes. Every Article of the Contract has independent effect. If any of the Articles of this Contract is held to be invalid or cancelled, this situation does not affect the validity of other Articles. <br /> 
                    <strong>18.2.</strong> Failure by any of the Parties to request any of the provisions hereto to be fulfilled by the other party does not affect the requirement of the full performance of these provisions. Any wavier by any of the parties from exercising its rights arising from violation of any of the provisions hereof does not mean that such party will waive its request in case of violation of the same article or a different article in the future.  <br /><br /><br/><br/>

                          <strong style="text-decoration:underline">ARTICLE 19- MISCELLANEOUS PROVISIONS  </strong><br /><br />

                          <strong>19.1.</strong>This Contract constitutes the entire contract between the Parties hereto and supersedes and invalidates all the negotiations, statements, undertakings, arrangements, and consents existing between the Parties previously with respect to the subject-matter hereof. Any amendments, changes or additions to this Contract in relation to all provisions shall not be accepted to be valid unless made by the parties in writing. <br />
  
                    <strong>19.2.</strong> BUYER acknowledges, represents and undertakes that it shall not participate any subscription fee and common expenses until such independent sections belonging to <strong>
                        <asp:Label ID="lblAdSoyad19madde" runat="server" Text="Boş Bırakmayınız"></asp:Label></strong> are sold and title deeds of such independent sections are transferred to 3rd parties by the SELLER having put into practice the <strong>Project TRIO GARDEN</strong>  on condition that such independent sections are not leased and used.   <br />
  
                    <strong>19.3.</strong> The Parties hereto acknowledge and represent irrevocably that this Contract is mainly required to be drawn up by notary public in statutory form and that this is a condition for validity of the Contract and they are aware of the fact that this requirement as to form has been included by lawmaker in order to induce the Parties to think and act more attentively, and that said requirement as to form was reminded by SELLER; however, the parties have agreed to the issuance of the Contract in ordinary written form since the parties did not prefer incurring the expenses required by the procedure in spite of this requirement as to form and they wanted it to be prepared in said ordinary written form based on mutual trust and goodwill, and that they have understood all the financial and legal outcomes thereof. <br />
  
                    <strong>19.4.</strong> BUYER cannot use or cannot procure others to use the independent section without signing the definitive delivery form of the independent section. <br />
  
                    <strong>19.5.</strong> If there is an increase of floor, independent section, precedent in zoning status in the independent section which is the subject hereof during completion and/or continuance of the construction, the only party to benefit from such an increase shall be SELLER. BUYER acknowledges, represents and undertakes that it is not a shareholder of such an increase. BUYER has acknowledged and undertaken in advance by means of this Contract that it shall not demand any right nor claim any receivable due to the amendment to the project. For this, BUYER shall give SELLER the power of attorney and undertaking requested by SELLER. <br />
  
                    <strong>19.6.</strong> Without payment of the receivables of SELLER arising from this Contract in full, the ownership and title to the independent section shall be deemed not to have passed on the BUYER. In case BUYER has not paid its debts either in full or in part, BUYER acknowledges, represents and undertakes that it shall not claim any right of ownership on the independent section and/or it shall not benefit from the rights arising from the ownership of the independent section and that it shall not assert such rights in any way and that the title shall be deemed to belong to SELLER with all rights attached thereto until the debt is paid in full and in due period and that even if the BUYER is using the independent section, SELLER does not have any consent to its existence on the independent section unless the debt is paid.   <br /><br />

                          <strong style="text-decoration:underline">ARTICLE 20- FINAL PROVISION </strong><br /><br />

                          <strong>20.1.</strong> BUYER hereby acknowledges, represents and undertakes expressly that it has read this Contract consisting of 20 main Articles in 14 pages as well as a location list, layout plan, technical specifications and 1 copy of power of attorney and undertaking as annexes hereto in its entirety and that the provisions of the Contract are exclusively related to the arrangements between BUYER and SELLER and that all of the provisions of the Contract have been negotiated between BUYER and SELLER each being on a separate basis and that it has acknowledged all this written points without asserting any condition against the method and legislation of SELLER and it shall comply with all these provisions and conditions in full. <br />
  
                    <strong>20.2.</strong> This Contract has been drawn up and signed in one copy and the original of the Contract shall remain with the SELLER and one photocopy of it has been delivered to BUYER. <br />
                          <br />
                     
                    <table>
    <tbody>
        <tr>
            <td>Annex 1</td>
            <td class="pl-2 pr-2" >:</td>
            <td>Layout Plan, Location List and Technical Specifications</td>
        </tr>
        <tr>
          <td>Annex 2</td>
          <td class="pl-2 pr-2" >:</td>
          <td>Sample Power of Attorney and Deed of Consent</td>
      </tr>
    </tbody>
  </table><br />
        <div style="margin-bottom:10rem !important" class="d-flex justify-content-center text-center">
             <p class="ml-auto mr-auto"><strong>SELLER</strong></p>
             <p class="ml-auto mr-auto"><strong>BUYER</strong><br />
                 <asp:Label ID="lblAliciAdSoyadImzaYeri0" runat="server" Text="Boş Bırakmayınız"></asp:Label>
             </p>
        </div>
                  

                  
  <%#Eval("GUN") %>

             
                    
        
                </p>
              </div>
                    </td>
                </tr>
            </table>
            
              

              <!-- SENET TR -->
              <div class="col-lg-12">
              <asp:Repeater ID="RPT_SENET" runat="server">
                        <ItemTemplate>
                             <div style="padding-bottom:83.25px;padding-top:83.25px;" class="col-lg-12">
              <div class="border border-dark p-2">
                        <div class="border border-dark p-2">
                            <div style="padding:3rem 3rem 3rem 3rem !important" class="border border-dark">
                                <table class="col-lg-12">
      <thead>
          <tr >
              <td style="width:25%" class="text-center"><strong style="border-bottom: 1px solid;">Ödeme Günü</strong></td>
              <td style="width:25%" class="text-center"><strong style="border-bottom: 1px solid;"><%#Eval("PARA_BIRIMI") %></strong></td>
              <td style="width:25%" class="text-center"><strong style="border-bottom: 1px solid;">KR.</strong></td>
              <td style="width:25%" class="text-center"><strong style="border-bottom: 1px solid;">No.</strong></td>
          </tr>
      </thead>
      <tbody>
        <tr>
            <td class="text-center"><ss style="border-bottom:1px solid #666f73;"><%#Eval("TARIH") %></ss></td>
            <td class="text-center"><ss style="border-bottom:1px solid #666f73;"><%#Eval("TUTAR") %><%---<%#Eval("PARA_BIRIMI") %>--%></ss></td>
             <td class="text-center"><ss style="border-bottom:1px solid #666f73;"></ss></td>
          
            <td class="text-center"><ss style="border-bottom:1px solid #666f73;"><%#Eval("NO") %>/<%#Eval("TOPLAM_TAKSIT") %></ss></td>
        </tr>
    </tbody>
  </table><br /><br />
                                <p>İş bu emre yazılı senedim<strong>in</strong> mukabilinde <strong><%#Eval("GUN") %> <%#Eval("AY") %> <%#Eval("YIL") %></strong> tarihinde  Sayın, <strong>ÖZYURT MADENCİLİK İNŞAAT SAN. VE TİC. A.Ş.</strong> veya emruhavale<strong>sine</strong> Yukarıda yazılı yalnız <strong><%#Eval("TUTAR_YAZIYLA")%></strong> kayıtsız şartsız ödeyeceği<strong>m</strong> Bedeli malen ahzolunmuştur.<br />
İş bu emre yazılı senet vadesinde ödenmediği takdirde müteakip bonolarında muacceliyet kesbedeceğini, Avukat ücreti dahil Mahkeme masraflarını ödeyeceği<strong>mi</strong>, ihtilaf vukuunda İstanbul Mahkemelerinin selahiyetini şimdiden kabul eyleri<strong>m</strong>.</p>
                                <br /><br />

<div class="d-flex justify-content-space text-center">
    <p class="mr-auto"><strong style="border-bottom: 1px solid;">ÖDEYECEK</strong></p>
    <%--<p class="ml-auto mr-auto"><strong>İMZA</strong></p>--%>
</div>
                     <table class="col-lg-12">
                        <tr>
                            <td style="width:60%;">
                                <table >
                    <tbody>
                      <tr>
                          <td style="width:180px;">İsim / Ünvan</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td><%#Eval("AD_SOYAD") %></td>
                      </tr>
                      <tr>
                          <td>Ödeme Yeri <p style="font-size:12px;margin:0px;position:absolute;">(Adres)</p>
                          </td>
                          <td class="pl-2 pr-2" >:</td>
                          <td rowspan="2" ><%#Eval("ADRES") %></td>
                      </tr>
                        <tr>
                          <td colspan="2">&nbsp</td>
                      </tr>
                      <tr>
                          <td>V.D; No.su / T.C. Kimlik No</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td><%#Eval("TCNO") %></td>
                      </tr>
                        <tr>
                            <td>Kefil Ad Soyad - 1</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td>...............................................................</td>
                        </tr>
                      <tr>
                          <td>V.D; No.su / T.C. Kimlik No</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td>...............................................................</td>
                      </tr>
                        <tr>
                            <td>Kefil Ad Soyad - 2</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td>...............................................................</td>
                        </tr>
                      <tr>
                          <td>V.D; No.su / T.C. Kimlik No</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td>...............................................................</td>
                      </tr>
    
                    </tbody>
                </table>
                            </td>
                            <td class="d-flex justify-content-end">
                                <table >
                    <tbody>      
                      <tr>
                          <td >Düzenleme Tar.</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td><%#Eval("BUGUN") %></td>
                      </tr>
                      <tr>
                          <td>Düzenleme Yeri</td>
                          <td class="pl-2 pr-2" >:</td>
                          <td>İSTANBUL</td>
                      </tr>
                        <tr>
                          <td colspan="3">&nbsp</td>
                      </tr>
                        <tr class="text-center">
                          <td>İmza</td>
                            <td>&nbsp</td>
                          <td>İmza</td>
                      </tr>
                        <tr>
                          <td colspan="3">&nbsp</td>
                      </tr>
                        <tr>
                          <td colspan="3">&nbsp</td>
                      </tr>
                        <tr>
                          <td colspan="3">&nbsp</td>
                      </tr>
                        <tr>
                          <td colspan="3">&nbsp</td>
                      </tr>
                           
                    </tbody>
                </table>
                            </td>
                        </tr>
                    </table>     
                
                            </div>
                        </div>
              </div>
                  </div>
                   
                        </ItemTemplate>
                    </asp:Repeater>
                  </div>
              
              
              
          
                </div>
          
          
          </div>
                </div>

            </div>

        </div>
    </main>

</asp:Content>

