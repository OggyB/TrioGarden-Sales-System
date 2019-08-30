<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusteriSozlesmeSil.aspx.cs" Inherits="MusteriSozlesmeSil" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server"> 

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
                            <label for="">SATIŞ BEDELİ</label>
                            <asp:TextBox Text=" " runat="server" ID="txtSatisBedel" CssClass="form-control form-g-input" ReadOnly="true"/>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">SÖZLEŞME TARIHI</label>
                            <asp:TextBox Text=" " runat="server" ID="txtSozlesmeTarih" CssClass="form-control form-g-input" ReadOnly="true"/>
                        </div>
                         <div class="form-group col-md-4">
                            <label for="">TAKSIT SAYISI</label>
                            <asp:TextBox Text=" " runat="server" ID="txtTaksitSayi" CssClass="form-control form-g-input" ReadOnly="true" />
                        </div>
                         <div class="form-group col-md-4">
                            <label for="">DAİRE</label>
                            <asp:TextBox Text=" " runat="server" ID="txtDaireKod" CssClass="form-control form-g-input" ReadOnly="true"/>
                        </div>
                        <div class="form-group col-md-4">
                            <asp:Button Text="Onayla" runat="server" ID="btnSozlesmeSil" OnClick="btnSozlesmeSil_Click" />
                            <asp:Button Text="İptal" runat="server" ID="btnSozlesmeSilmeIptal" OnClick="btnSozlesmeSilmeIptal_Click" />
                        </div>
                        <div>
                            <p>NOT : Sözleşme silindiği takdirde , sözleşme sahibine ait görüşme kayıtları da silinecektir.</p>
                        </div>
                    </div>

                    <div class="col-md-3">
                        
                    </div>
                </div>
            </div>
        </div>
        
    </main>

</asp:Content>


       
   

