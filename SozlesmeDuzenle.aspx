<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SozlesmeDuzenle.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="SozlesmeDuzenle"  Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main>
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
                            <%--<asp:Button Text="Onayla" runat="server" ID="btnSozlesmeSil" OnClick="btnSozlesmeSil_Click" />
                            <asp:Button Text="İptal" runat="server" ID="btnSozlesmeSilmeIptal" OnClick="btnSozlesmeSilmeIptal_Click" />--%>
                        </div>
                        
                    </div>

                    <div class="col-md-3">
                        
                    </div>
                </div>
        <asp:GridView runat="server" ID="GRD_TAKSITLER">  
            <Columns>

            </Columns>
        </asp:GridView>

    </main>
        
    

    </asp:Content>
