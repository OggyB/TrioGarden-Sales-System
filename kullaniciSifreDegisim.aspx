<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="kullaniciSifreDegisim.aspx.cs" Inherits="kullaniciSifreDegisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <main>

        <div class="p-3">

            
            <div class="pl-0 pr-0 col-md-6 bgc-7 pt-4 mt-4">
                <h5 class="bgc-7-h5 pl-4 mb-3">Kullanici Değiştirme</h5>

                <div class="p-4">
                    <div class="col-md-6 mb-3">
                        <asp:TextBox runat="server" ID="txtEskipwd" CssClass="form-control form-g-input textPwdOld" TextMode="Password"  placeholder="Mevcut şifrenizi giriniz." />
                    </div>
                    <div>
<asp:Label ID="lblyanlispwd" runat="server" Text=""></asp:Label>
                    </div>
                    
                    <div class="row m-0 p-0 col-md-12 ml-auto mr-auto mb-3">
                        <div class="col-md-6">
                            <span class="pswdChng-abs" id="errorPwdNew"></span>
                            <asp:TextBox runat="server" ID="txtYenipwd" CssClass="form-control form-g-input textPwdNew" TextMode="Password" placeholder="Yeni şifrenizi giriniz." />
                        </div>
                        <div class="col-md-6">
                            <span class="pswdChng-abs" id="errorPwdNew2"></span>
                            <asp:TextBox runat="server" ID="txtYeniTekrar" CssClass="form-control form-g-input textPwdNew2" TextMode="Password" placeholder ="Yeni şifrenizi tekrar giriniz" />
                        </div>
                    </div> 
                    <div class="col-md-12 mt-2 text-right">
                        <asp:Button Text="Onayla" runat="server" CssClass="btn btn-purple btn-g-box btnPwdDegis" ID="btnPwdDegis" OnClick="btnPwdDegis_Click" />                        
                        
                    </div>
                </div>
            </div>
        

        </div>



    </main>

</asp:Content>

