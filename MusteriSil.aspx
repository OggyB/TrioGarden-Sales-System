<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/MasterPage.master"  CodeFile="MusteriSil.aspx.cs" Inherits="MusteriSil" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main>
<main>
        <div class="p-3">

            <div class="mt-4 pt-4 pb-1 table-bgc">
                <h5 class="pl-3 pt-1 pb-1 table-bgc-h5">Müşteri Sözleşme Silme</h5>
                <!-- <p class="pl-3 mb-4 table-bgc-p">Tüm müşteri görüşme detay listesine ulaşabilirsiniz.</p> -->

                <div class="mt-4 mb-4 mr-2 ml-2 pt-2">
                    <div class="row m-0">
                        <div class="form-group col-md-4">
                            <label for="">AD SOYAD</label>
                            <asp:TextBox Text=" " runat="server" ID="txtAdSoyad" CssClass="form-control form-g-input" ReadOnly="true" />
                        </div>

                        <div class="form-group col-md-4">
                            <label for="">TELEFON</label>
                            <asp:TextBox Text="" runat="server" ID="txtPhone" CssClass="form-control form-g-input" ReadOnly="true"/>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">ULKE</label>
                            <asp:TextBox Text="" runat="server" ID="txtUlke" CssClass="form-control form-g-input" ReadOnly="true"/>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="">MAIL</label>
                            <asp:TextBox Text="" runat="server" ID="txtMail" CssClass="form-control form-g-input" ReadOnly="true" />
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">Daire</label>
                            <asp:TextBox Text="" runat="server" ID="txtDaire" CssClass="form-control form-g-input" ReadOnly="true" />
                        </div>
                        <div class="form-group col-md-4">
                            <asp:Button Text="Onayla" runat="server" ID="btnMusteriSil" OnClick="btnMusteriSil_Click" />
                            <asp:Button Text="İptal" runat="server" ID="btnMusteriSilIptal" OnClick="btnMusteriSilIptal_Click" />
                        </div>
                        <div>
                            <p>NOT : Sözleşmesi olan müşterileri silemessiniz. Önce mevcut sözleşme silinmelidir. Eğer görüşmesi varsa görüşme bilgileri silinecektir.</p>
                        </div>
                        <div>
                            <asp:Label Text="" runat="server" ID="lblHataMesaji" />
                        </div>
                    </div>

                    <div class="col-md-3">
                        
                    </div>
                </div>
            </div>
        </div>
        
    </main>
    </main>
        
    
    </asp:Content>