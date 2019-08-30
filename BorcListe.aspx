<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BorcListe.aspx.cs" Inherits="BorcListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
   <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <main>
           </div>
        <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Genel Müşteri Borç Listesi</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="m-4 pt-2">
            <table id="mytrtable3" class="table table-bordered">
                <thead class="theader-text">
                    <tr>
                         <th>Ad Soyad</th>
                         <th>Taksit Tutar</th>
                         <th>Tarih</th>
                         <th>Kalan Gün</th>
                         <th id="clnTahsilat" runat="server">Tahsilat</th>
                        
                    </tr>
                </thead>
                
                <tbody>
                    <asp:Repeater runat="server" ID="RPT_BORCLISTE" OnItemDataBound="RPT_BORCLISTE_ItemDataBound" OnItemCommand="RPT_BORCLISTE_ItemCommand">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("AD_SOYAD") %></td>
                                <td><%# Eval("TUTAR") + " " + Eval("PARA_BIRIMI") %></td>
                                <td><%# Eval("TARIH") %></td>
                                <td><%# Eval("KALAN_GUN") %></td>
                                <td id="tahsilat_kolon" runat="server">
                                    <asp:LinkButton CssClass="btn-success btn pl-3 pr-3 pt-2 pb-2" ID="btnTahsilat" CommandArgument='<%# Eval("TARIH") +","+ Eval("AD_SOYAD") %>' CommandName="Tahsilat" runat="server">Tahsil Et</asp:LinkButton>
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
                    </div>

        </div>
       </main>
       </asp:Content>
    


