<%@ Page Title="" Language="C#" MasterPageFile="~/CabeçalhoSuperior.Master" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Banco_onlline.Cadastrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
           <td colspan="2" align="Cadastrar">
                <h4>Cadastrar</h4>
           </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label1" runat="server" Text="Número da conta"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblNumerodaconta" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label2" runat="server" Text="Tipo de conta"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblTipodeconta" runat="server" Text="Savings"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Payee Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPayeeName" runat="server" Height="28px" Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtPayeeName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="O tamanho mínimo do Payee Name deve ter 6 caracteres(alfanuméricos)" ControlToValidate="txtPayeeName" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9\s]]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Mobile Number"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtMobileNumber" runat="server" Height="28px" Width="280px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtMobileNumber" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="O numero tem que ter no minino 11 digitos" ControlToValidate="txtMobileNumber" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[0-9]]{10}*"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label4" runat="server" Text="Senha"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSenha" runat="server" Height="28px" Width="280px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtSenha" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="O tamanho mínimo da senha deve ter 6 caracteres" ControlToValidate="txtSenha" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@#&.\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
                </td>
         </tr>
        <tr>
            <td style="width:50%">
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
                    SetFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmarSenha" ControlToCompare="txtSenha"></asp:CompareValidator>
                </div>
           </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label6" runat="server" Text="Gênero"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGenero" runat="server" Height="28px" Width="208px;">
                    <asp:ListItem>Masculino</asp:ListItem>
                    <asp:ListItem>Feminino</asp:ListItem>
                    <asp:ListItem>Outros</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="28px" Width="200px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtEmail" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Formato do emailinvalido" ControlToValidate="txtEmail" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="\w+([-+.]w+)*@\w+([-.]\w+)*\.\w+([-.]w+)*"></asp:RegularExpressionValidator>
                </div>
             </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="28px" Width="280px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAddress" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label9" runat="server" Text="Segurança"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlSecurityQuestion" runat="server" Height="28px" Width="208px;">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:BankingTransactionDBConnectionString %>"
                    SelectCommand="SELECT * FROM [SecurityQuestion]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label10" runat="server" Text="Answer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" Height="28px" Width="280px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAnswer" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server" Height="28px" Width="280px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAmount" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ErrorMessage="email deve conter no minimo de 1 a 5 caracteres" ControlToValidate="txtAmount" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" 
                ValidationExpression="\d{1,5}"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" Height="28px" OnClick="btnCadastrar_Click"/>
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
