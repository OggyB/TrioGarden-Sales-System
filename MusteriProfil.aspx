<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MusteriProfil.aspx.cs" Inherits="MusteriProfil" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main>
        
        
        <div class="p-3">
            <div class="pl-0 pr-0 col-md-6 bgc-7 pt-4 mt-4">
                <h5 class="bgc-7-h5 pl-4 mb-3">Kullanici Bilgileri</h5>

                <div class="mr-2 ml-2 pt-2 pb-4 pt-4">
                    <div class="col-md-6 ml-auto mr-auto">
                        <table class="table">
            <thead class="theader-text">
                <tr>
                    <th>Kullanici Adi</th>
                    <th>Ad</th>
                    <th>Soyad</th>
                </tr>
            </thead>
            <tbody class="tbody-text">
                <asp:Repeater runat="server" ID="RPT_KULLANICI_BILGI">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("kKULLANICIADI") %></td>
                    <td><%#Eval("kAD") %></td>
                    <td><%#Eval("kSOYAD") %></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
                

            </tbody>
        </table>
                    </div>
                    <div class="col-md-12 text-right">
                        <asp:Button Text="Şifre Değiştir" runat="server" ID="btnPasswordChange" CssClass="btn btn-purple btn-g-box p-2 pl-3 pr-3 mr-2" OnClick="btnPasswordChange_Click" />
        <%--<asp:Button Text="Kullanıcı Adı Değiştir" runat="server" ID="btnUserNameChange" CssClass="btn btn-purple btn-g-box p-2 pl-3 pr-3" OnClick="btnUserNameChange_Click"/>--%>
                    </div>
                </div>
            </div>
        </div>

        

    </main>
    
        
    
    </asp:Content>

