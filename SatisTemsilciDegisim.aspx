<%@ Page Title="Satış Temsilcisi Değişim" MasterPageFile="~/MasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="SatisTemsilciDegisim.aspx.cs" Inherits="SatisTemsilciDegisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <main>
        <ul>
            <li><div class="mt-4 pt-4 pb-1 table-bgc">
            <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Değişim Yapılacak Müşteri</h5>
            <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

            <div class="m-4 pt-2">
                <table class="table table-bordered">
                    <thead class="theader-text">
                        <tr>
                            <th>AD SOYAD</th>
                            
                            <th>SATIŞ TEMSİLCİSİ</th>        
                            
                        </tr>
                    </thead>
                    <tbody>
                        
                        <asp:Repeater ID="RPT_SATIS_GUNCELLEME" runat="server" OnItemDataBound="RPT_SATIS_GUNCELLEME_ItemDataBound" OnItemCommand="RPT_SATIS_GUNCELLEME_ItemCommand">
                            <ItemTemplate>
                                <tr>
                                   
                                    <td><%# Eval("mAD") + " " + Eval("mSOYAD") %>  </td>
                                    
                                    <td><%# Eval("kAD")%></td>
                                    <td>
                                        
                                        <asp:LinkButton Text="Güncelle" runat="server" CssClass="btn-success btn pl-3 pr-3 pt-2 pb-2" ID="btnGuncelle" CommandName="TemsilciGuncelle" CommandArgument='<%# Eval("mID") +","+ Eval("mSOYAD") +","+ Eval("gID")+"," + Eval("sID") %>' />

                                    </td>
                                </tr>
                                    </ItemTemplate>
                                </asp:Repeater>    
                           
                                   
                    </tbody>
                </table>
            </div>

        </div></li>
            <li>Değişim yapılmak istenen satış temsilcisini seçiniz.</li>
            <li><asp:DropDownList runat="server" ID="DDL_Satisci" AutoPostBack="true"  />     
 </li>
        </ul>

    </main>
     
</asp:Content>



    


