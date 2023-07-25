<%@ Page Title="" Language="C#" MasterPageFile="~/CabeçalhoSuperior.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Banco_onlline.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
            <td colspan="4" align="center">
                <h4>Login</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlogin" runat="server" Height="28px" Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtlogin" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td style="scroll-padding-right:40px;">  
            </td>
            <td>
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" Height="28px" OnClick="btnCadastrar_Click" CausesValidation="false"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSenha" runat="server" Height="28px" Width="280px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtlogin" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colspan="4" style="padding-left:77px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="20px" onClick="btnLogin_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <div id="error" runat="server" style="color:red">

                </div>
            </td>
            <td>
                <asp:LinkButton ID="lbEsqueceuSenha" runat="server" Height="28px" CausesValidation="false"  OnClick="lbEsqueceuSenha_Click" >Esqueceu Senha</asp:LinkButton>
            </td>
        </tr>
    </table>

</asp:Content>
