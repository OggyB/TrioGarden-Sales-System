<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusteriTahsilat.aspx.cs" Inherits="MusteriTahsilat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <main>
        <div class="p-3">

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Tahsilat</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="mt-4 mb-4 mr-2 ml-2 pt-2">
                    <div class="row m-0">
                        <div class="form-group col-md-4">
                            <label for="">AD SOYAD</label>
                            <asp:TextBox ID="txtAdSoyad" runat="server" placeholder="Ad" CssClass="form-control form-g-input firstNameValid"></asp:TextBox>
                        </div>

                        <div class="form-group col-md-4">
                            <label for="">TUTAR</label>
                            <asp:TextBox ID="txtTutar" runat="server" placeholder="E-Mail" CssClass="form-control form-g-input"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">TARIH</label>
                            <asp:TextBox ID="txtTarih" runat="server" placeholder="Ör : 0555 555 44 33" CssClass="form-control form-g-input phoneValid" MaxLength="11"></asp:TextBox>
                        </div>

                    </div>

                    <div class="col-md-3">
                        <asp:Button ID="btnTahsilatOnay" runat="server" CssClass="btn btn-purple btn-g-box" Text="Onayla" OnClick="btnTahsilatOnay_Click" />
                        <asp:Button ID="btnIptal" runat="server" CssClass="btn btn-outline-secondary btn-g-box" Text="İptal" OnClick="btnIptal_Click" />
                    </div>
                </div>
            </div>
        </div>
        <div class="mt-4 pt-4 pb-1 table-bgc">
            <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşterinin Ödenmiş Borçları</h5>
            <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

            <div class="m-4 pt-2">
                <table id="mytrtable4" class="table table-bordered">
                    <thead class="theader-text">
                        <tr>
                            <th>Senet Sırası</th>
                            <th>Ad Soyad</th>
                            <th>Tahsil Etme Tarihi</th>
                            <th>Tutar</th>
                            


                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="RPT_TAHSILAT_LISTESI_OZEL" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%# Eval("NO") %></td>
                                    <td><%# Eval("AD_SOYAD") %></td>
                                    <td><%# Eval("tTARIH") %></td>
                                    <td><%# Eval("TUTAR") %></td>
                                    

                                </tr>
                              
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>

        </div>
    </main>
</asp:Content>
