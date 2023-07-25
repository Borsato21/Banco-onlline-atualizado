<%@ Page Title="" Language="C#" MasterPageFile="~/CabeçalhoSuperior.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Banco_onlline.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center"> 
        <tr> 
            <td colspan="2" align="center">
                <h4>Change Password</h4> 
             </td> 
        </tr>
        <tr>
            <td stile="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="New Passwoard"></asp:Label>  
                <asp:HiddenField ID="hndAnswer" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtNewPasswoard" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtNewPasswoard" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="O tamanho mínimo da senha deve ter 6 caracteres" ControlToValidate="txtNewPasswoard" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@#&.\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
         <tr>
            <td style="width:160px">
                <asp:Label ID="Label5" runat="server" Text="Confirmar Senha"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmarSenha" runat="server" Height="28px" Width="280px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtConfirmarSenh" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="O tamanho mínimo da senha deve ter 6 caracteres" ControlToValidate="txtConfirmarSenha" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@#&.\s]{6,15}$"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Senha Não Correta" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmarSenha" ControlToCompare="txtNewPasswoard"></asp:CompareValidator>
                </div>
           </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" Height="28px" OnClick="btnChangePassword_Click"/>
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="28px" OnClick="btnCancel_Click" CausesValidation="false"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="error" runat="server" style="color:red">

                </div>
            </td>
        </tr>
     </table>
</asp:Content>
