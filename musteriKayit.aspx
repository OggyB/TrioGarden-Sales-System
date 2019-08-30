<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="musteriKayit.aspx.cs" Inherits="musteriKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <main>
        <div class="p-3">

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Kayıt</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="mt-4 mb-4 mr-2 ml-2 pt-2">
                    <div class="row m-0">
                        <div class="form-group col-md-6">
                            <label for="">Ad</label>
                            <asp:TextBox ID="txtAd" runat="server" placeholder="Ad" CssClass="form-control form-g-input firstNameValid"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Soyad</label>
                            <asp:TextBox ID="txtSoyad" runat="server" placeholder="Soyad" CssClass="form-control form-g-input lastNameValid"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">E-mail</label>                            
                            <asp:TextBox ID="txtEmail" runat="server" placeholder="E-Mail" CssClass="form-control form-g-input"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Telefon Numarası</label>                            
                            <asp:TextBox ID="txtTelefonNo" runat="server" placeholder="Ör : +90555 555 44 33" CssClass="form-control form-g-input"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Ülke</label>
                            <asp:DropDownList ID="ddUlke" runat="server" CssClass="form-control form-g-input formValid">
                          <asp:ListItem Value="0">Seçiniz</asp:ListItem>
                          <asp:ListItem>Türkiye</asp:ListItem>
<asp:ListItem>Afganistan</asp:ListItem>
<asp:ListItem>Almanya</asp:ListItem>
<asp:ListItem>Amerika Birleşik Devletleri</asp:ListItem>
<asp:ListItem>Amerikan Samoa</asp:ListItem>
<asp:ListItem>Andorra</asp:ListItem>
<asp:ListItem>Angola</asp:ListItem>
<asp:ListItem>Anguilla, İngiltere</asp:ListItem>
<asp:ListItem>Antigua ve Barbuda</asp:ListItem>
<asp:ListItem>Arjantin</asp:ListItem>
<asp:ListItem>Arnavutluk</asp:ListItem>
<asp:ListItem>Aruba, Hollanda</asp:ListItem>
<asp:ListItem>Avustralya</asp:ListItem>
<asp:ListItem>Avusturya</asp:ListItem>
<asp:ListItem>Azerbaycan</asp:ListItem>
<asp:ListItem>Bahama Adaları</asp:ListItem>
<asp:ListItem>Bahreyn</asp:ListItem>
<asp:ListItem>Bangladeş</asp:ListItem>
<asp:ListItem>Barbados</asp:ListItem>
<asp:ListItem>Belçika</asp:ListItem>
<asp:ListItem>Belize Benin</asp:ListItem>
<asp:ListItem>Bermuda, İngiltere</asp:ListItem>
<asp:ListItem>Beyaz Rusya</asp:ListItem>
<asp:ListItem>Bhutan</asp:ListItem>
<asp:ListItem>Birleşik Arap Emirlikleri</asp:ListItem>
<asp:ListItem>Birmanya (Myanmar)</asp:ListItem>
<asp:ListItem>Bolivya</asp:ListItem>
<asp:ListItem>Bosna Hersek</asp:ListItem>
<asp:ListItem>Botswana</asp:ListItem>
<asp:ListItem>Brezilya</asp:ListItem>
<asp:ListItem>Brunei</asp:ListItem>
<asp:ListItem>Bulgaristan</asp:ListItem>
<asp:ListItem>Burkina Faso</asp:ListItem>
<asp:ListItem>Burundi</asp:ListItem>
<asp:ListItem>Cape Verde</asp:ListItem>
<asp:ListItem>Cayman Adaları, İngiltere</asp:ListItem>
<asp:ListItem>Cebelitarık, İngiltere</asp:ListItem>
<asp:ListItem>Cezayir</asp:ListItem>
<asp:ListItem>Christmas Adası, Avusturalya</asp:ListItem>
<asp:ListItem>Cibuti</asp:ListItem>
<asp:ListItem>Çad</asp:ListItem>
<asp:ListItem>Çek Cumhuriyeti</asp:ListItem>
<asp:ListItem>Çin</asp:ListItem>
<asp:ListItem>Danimarka</asp:ListItem>
<asp:ListItem>Doğu Timor</asp:ListItem>
<asp:ListItem>Dominik Cumhuriyeti</asp:ListItem>
<asp:ListItem>Dominika</asp:ListItem>
<asp:ListItem>Ekvator</asp:ListItem>
<asp:ListItem>Ekvator Ginesi</asp:ListItem>
<asp:ListItem>El Salvador</asp:ListItem>
<asp:ListItem>Endonezya</asp:ListItem>
<asp:ListItem>Eritre</asp:ListItem>
<asp:ListItem>Ermenistan</asp:ListItem>
<asp:ListItem>Estonya</asp:ListItem>
<asp:ListItem>Etiyopya</asp:ListItem>
<asp:ListItem>Fas</asp:ListItem>
<asp:ListItem>Fiji</asp:ListItem>
<asp:ListItem>Fildişi Sahili</asp:ListItem>
<asp:ListItem>Filipinler</asp:ListItem>
<asp:ListItem>Filistin</asp:ListItem>
<asp:ListItem>Finlandiya</asp:ListItem>
<asp:ListItem>Folkland Adaları, İngiltere</asp:ListItem>
<asp:ListItem>Fransa</asp:ListItem>
<asp:ListItem>Fransız Guyanası</asp:ListItem>
<asp:ListItem>Fransız Güney Eyaletleri (Kerguelen Adaları)</asp:ListItem>
<asp:ListItem>Fransız Polinezyası</asp:ListItem>
<asp:ListItem>Gabon</asp:ListItem>
<asp:ListItem>Galler</asp:ListItem>
<asp:ListItem>Gambiya</asp:ListItem>
<asp:ListItem>Gana</asp:ListItem>
<asp:ListItem>Gine</asp:ListItem>
<asp:ListItem>Gine-Bissau</asp:ListItem>
<asp:ListItem>Grenada</asp:ListItem>
<asp:ListItem>Grönland</asp:ListItem>
<asp:ListItem>Guadalup, Fransa</asp:ListItem>
<asp:ListItem>Guam, Amerika</asp:ListItem>
<asp:ListItem>Guatemala</asp:ListItem>
<asp:ListItem>Guyana</asp:ListItem>
<asp:ListItem>Güney Afrika</asp:ListItem>
<asp:ListItem>Güney Georgia ve Güney Sandviç Adaları, İngiltere</asp:ListItem>
<asp:ListItem>Güney Kıbrıs Rum Yönetimi</asp:ListItem>
<asp:ListItem>Güney Kore</asp:ListItem>
<asp:ListItem>Gürcistan H</asp:ListItem>
<asp:ListItem>Haiti</asp:ListItem>
<asp:ListItem>Hırvatistan</asp:ListItem>
<asp:ListItem>Hindistan</asp:ListItem>
<asp:ListItem>Hollanda</asp:ListItem>
<asp:ListItem>Hollanda Antilleri</asp:ListItem>
<asp:ListItem>Honduras</asp:ListItem>
<asp:ListItem>Irak</asp:ListItem>
<asp:ListItem>İngiltere</asp:ListItem>
<asp:ListItem>İran</asp:ListItem>
<asp:ListItem>İrlanda</asp:ListItem>
<asp:ListItem>İspanya</asp:ListItem>
<asp:ListItem>İsrail</asp:ListItem>
<asp:ListItem>İsveç</asp:ListItem>
<asp:ListItem>İsviçre</asp:ListItem>
<asp:ListItem>İtalya</asp:ListItem>
<asp:ListItem>İzlanda</asp:ListItem>
<asp:ListItem>Jamaika</asp:ListItem>
<asp:ListItem>Japonya</asp:ListItem>
<asp:ListItem>Johnston Atoll, Amerika</asp:ListItem>
<asp:ListItem>K.K.T.C.</asp:ListItem>
<asp:ListItem>Kamboçya</asp:ListItem>
<asp:ListItem>Kamerun</asp:ListItem>
<asp:ListItem>Kanada</asp:ListItem>
<asp:ListItem>Kanarya Adaları</asp:ListItem>
<asp:ListItem>Karadağ</asp:ListItem>
<asp:ListItem>Katar</asp:ListItem>
<asp:ListItem>Kazakistan</asp:ListItem>
<asp:ListItem>Kenya</asp:ListItem>
<asp:ListItem>Kırgızistan</asp:ListItem>
<asp:ListItem>Kiribati</asp:ListItem>
<asp:ListItem>Kolombiya</asp:ListItem>
<asp:ListItem>Komorlar</asp:ListItem>
<asp:ListItem>Kongo</asp:ListItem>
<asp:ListItem>Kongo Demokratik Cumhuriyeti</asp:ListItem>
<asp:ListItem>Kosova</asp:ListItem>
<asp:ListItem>Kosta Rika</asp:ListItem>
<asp:ListItem>Kuveyt</asp:ListItem>
<asp:ListItem>Kuzey İrlanda</asp:ListItem>
<asp:ListItem>Kuzey Kore</asp:ListItem>
<asp:ListItem>Kuzey Maryana Adaları</asp:ListItem>
<asp:ListItem>Küba</asp:ListItem>
<asp:ListItem>Laos</asp:ListItem>
<asp:ListItem>Lesotho</asp:ListItem>
<asp:ListItem>Letonya</asp:ListItem>
<asp:ListItem>Liberya</asp:ListItem>
<asp:ListItem>Libya</asp:ListItem>
<asp:ListItem>Liechtenstein</asp:ListItem>
<asp:ListItem>Litvanya</asp:ListItem>
<asp:ListItem>Lübnan</asp:ListItem>
<asp:ListItem>Lüksemburg</asp:ListItem>
<asp:ListItem>Macaristan</asp:ListItem>
<asp:ListItem>Madagaskar</asp:ListItem>
<asp:ListItem>Makau (Makao)</asp:ListItem>
<asp:ListItem>Makedonya</asp:ListItem>
<asp:ListItem>Malavi</asp:ListItem>
<asp:ListItem>Maldiv Adaları</asp:ListItem>
<asp:ListItem>Malezya</asp:ListItem>
<asp:ListItem>Mali</asp:ListItem>
<asp:ListItem>Malta</asp:ListItem>
<asp:ListItem>Marşal Adaları</asp:ListItem>
<asp:ListItem>Martinik, Fransa</asp:ListItem>
<asp:ListItem>Mauritius</asp:ListItem>
<asp:ListItem>Mayotte, Fransa</asp:ListItem>
<asp:ListItem>Meksika</asp:ListItem>
<asp:ListItem>Mısır</asp:ListItem>
<asp:ListItem>Midway Adaları, Amerika</asp:ListItem>
<asp:ListItem>Mikronezya</asp:ListItem>
<asp:ListItem>Moğolistan</asp:ListItem>
<asp:ListItem>Moldavya</asp:ListItem>
<asp:ListItem>Monako</asp:ListItem>
<asp:ListItem>Montserrat</asp:ListItem>
<asp:ListItem>Moritanya</asp:ListItem>
<asp:ListItem>Mozambik</asp:ListItem>
<asp:ListItem>Namibia</asp:ListItem>
<asp:ListItem>Nauru</asp:ListItem>
<asp:ListItem>Nepal</asp:ListItem>
<asp:ListItem>Nijer</asp:ListItem>
<asp:ListItem>Nijerya</asp:ListItem>
<asp:ListItem>Nikaragua</asp:ListItem>
<asp:ListItem>Niue, Yeni Zelanda</asp:ListItem>
<asp:ListItem>Norveç</asp:ListItem>
<asp:ListItem>Orta Afrika Cumhuriyeti</asp:ListItem>
<asp:ListItem>Özbekistan</asp:ListItem>
<asp:ListItem>Pakistan</asp:ListItem>
<asp:ListItem>Palau Adaları</asp:ListItem>
<asp:ListItem>Palmyra Atoll, Amerika</asp:ListItem>
<asp:ListItem>Panama</asp:ListItem>
<asp:ListItem>Papua Yeni Gine</asp:ListItem>
<asp:ListItem>Paraguay</asp:ListItem>
<asp:ListItem>Peru</asp:ListItem>
<asp:ListItem>Polonya</asp:ListItem>
<asp:ListItem>Portekiz</asp:ListItem>
<asp:ListItem>Porto Riko, Amerika</asp:ListItem>
<asp:ListItem>Reunion, Fransa</asp:ListItem>
<asp:ListItem>Romanya</asp:ListItem>
<asp:ListItem>Ruanda</asp:ListItem>
<asp:ListItem>Rusya Federasyonu</asp:ListItem>
<asp:ListItem>Saint Helena, İngiltere</asp:ListItem>
<asp:ListItem>Saint Martin, Fransa</asp:ListItem>
<asp:ListItem>Saint Pierre ve Miquelon, Fransa</asp:ListItem>
<asp:ListItem>Samoa</asp:ListItem>
<asp:ListItem>San Marino</asp:ListItem>
<asp:ListItem>Santa Kitts ve Nevis</asp:ListItem>
<asp:ListItem>Santa Lucia</asp:ListItem>
<asp:ListItem>Santa Vincent ve Grenadinler</asp:ListItem>
<asp:ListItem>Sao Tome ve Principe</asp:ListItem>
<asp:ListItem>Senegal</asp:ListItem>
<asp:ListItem>Seyşeller</asp:ListItem>
<asp:ListItem>Sırbistan</asp:ListItem>
<asp:ListItem>Sierra Leone</asp:ListItem>
<asp:ListItem>Singapur</asp:ListItem>
<asp:ListItem>Slovakya</asp:ListItem>
<asp:ListItem>Slovenya</asp:ListItem>
<asp:ListItem>Solomon Adaları</asp:ListItem>
<asp:ListItem>Somali</asp:ListItem>
<asp:ListItem>Sri Lanka</asp:ListItem>
<asp:ListItem>Sudan</asp:ListItem>
<asp:ListItem>Surinam</asp:ListItem>
<asp:ListItem>Suriye</asp:ListItem>
<asp:ListItem>Suudi Arabistan</asp:ListItem>
<asp:ListItem>Svalbard, Norveç</asp:ListItem>
<asp:ListItem>Svaziland</asp:ListItem>
<asp:ListItem>Şili</asp:ListItem>
<asp:ListItem>Tacikistan</asp:ListItem>
<asp:ListItem>Tanzanya</asp:ListItem>
<asp:ListItem>Tayland</asp:ListItem>
<asp:ListItem>Tayvan</asp:ListItem>
<asp:ListItem>Togo</asp:ListItem>
<asp:ListItem>Tonga</asp:ListItem>
<asp:ListItem>Trinidad ve Tobago</asp:ListItem>
<asp:ListItem>Tunus</asp:ListItem>
<asp:ListItem>Turks ve Caicos Adaları, İngiltere</asp:ListItem>
<asp:ListItem>Tuvalu</asp:ListItem>
<asp:ListItem>Türkiye</asp:ListItem>
<asp:ListItem>Türkmenistan</asp:ListItem>
<asp:ListItem>Uganda</asp:ListItem>
<asp:ListItem>Ukrayna</asp:ListItem>
<asp:ListItem>Umman</asp:ListItem>
<asp:ListItem>Uruguay</asp:ListItem>
<asp:ListItem>Ürdün</asp:ListItem>
<asp:ListItem>Vallis ve Futuna, Fransa</asp:ListItem>
<asp:ListItem>Vanuatu</asp:ListItem>
<asp:ListItem>Venezuela</asp:ListItem>
<asp:ListItem>Vietnam</asp:ListItem>
<asp:ListItem>Virgin Adaları, Amerika</asp:ListItem>
<asp:ListItem>Virgin Adaları, İngiltere</asp:ListItem>
<asp:ListItem>Wake Adaları, Amerika</asp:ListItem>
<asp:ListItem>Yemen</asp:ListItem>
<asp:ListItem>Yeni Kaledonya, Fransa</asp:ListItem>
<asp:ListItem>Yeni Zelanda</asp:ListItem>
<asp:ListItem>Yunanistan</asp:ListItem>
<asp:ListItem>Zambiya</asp:ListItem>
<asp:ListItem>Zimbabve</asp:ListItem>
                      </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="">Not</label>
                        <asp:TextBox ID="txtNot" runat="server" placeholder="" CssClass="form-control form-g-input notResize" Rows="4" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div class="col-md-3">
                        <asp:Button ID="btnKaydet" runat="server" CssClass="btn btn-purple btn-g-box" Text="Kaydet" OnClick="btnKaydet_Click" />
                     <asp:Button ID="btnIptal" runat="server" CssClass="btn btn-outline-secondary btn-g-box" Text="İptal" />
                        <asp:Label Text="" ID="lblHata" runat="server" />
                    </div>
                </div>
            </div>

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
                    <table id="mytrtable3" class="table table-bordered">
                        <thead class="theader-text">
                            <th>
                                Ad
                            </th>
                            <th>
                                Soyad
                            </th>
                            <th>
                                Email
                            </th>
                            <th>
                                Telefon Numarası
                            </th>
                            <th>
                                Görüşme Yap
                            </th>
                             <th>
                                #
                            </th>
                            <th>
                                Satış Temsilcisi
                            </th>

                        </thead>
                        <tbody class="tbody-text">
                            <asp:Repeater ID="RPT_MUSTERI_LISTE" runat="server" OnItemCommand="RPT_MUSTERI_LISTE_ItemCommand" OnItemDataBound="RPT_MUSTERI_LISTE_ItemDataBound">
                <ItemTemplate>
                                    <tr>
                  <td><%#Eval("mAD") %></td>
                   <td><%#Eval("mSOYAD") %></td>
                    <td><%#Eval("mMAIL") %></td>
                     <td><%#Eval("mTELEFON") %></td>
                    <td><a href="musteriGorusme.aspx?mID=<%#Eval("mID") %>">
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/icons/gorusme-purple.png" Height="35" AlternateText="Görüşme" /></a><a href="#">
                                         
                                                 </td>
                                        <td>
                                          <a href="musteriKayit.aspx?mID=<%#Eval("mID") %>">Düzenle</a>
                                        </td>
                                        <td>
                                            <%# Eval("kAD") %>
                                        </td>
                                        <td>
                                            <asp:LinkButton Text="Müsteri Sil" runat="server" ID="btnMusteriSil" CssClass="btn-danger btn pl-3 pr-3 pt-2 pb-2" CommandName="MusteriSil" CommandArgument='<%# Eval("mID") %>' />
                                            

                                        </td>
                                        <td>
                                            <asp:LinkButton Text="Temsilci Değiştir" ID="btnTemsilciDegis" CommandName="TemsilciDegis" CommandArgument='<%# Eval("mID")%>' CssClass="btn-warning btn pl-3 pr-3 pt-2 pb-2" runat="server" />
                                                
                                        </td>
                                        <%-- <td><asp:Image ID="Image3" runat="server" ImageUrl="~/dist/img/sozlesme-icon.png" Height="35" AlternateText="Sözleşme"/></a></td>
                                        <td><asp:Image ID="Image2" runat="server" ImageUrl="~/dist/img/odeme-icon.png" Height="35" AlternateText="Ödeme"/></a><a href="#"></td>--%>
                                       
         
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

