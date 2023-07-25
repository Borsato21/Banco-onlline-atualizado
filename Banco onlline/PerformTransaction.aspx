<%@ Page Title="" Language="C#" MasterPageFile="~/menuheader.master" AutoEventWireup="true" CodeBehind="PerformTransaction.aspx.cs" Inherits="Banco_onlline.PerformTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">

    <table align="center">
       <tr>
          <td colspan="2" align="center">
            <h4>PerformTransaction</h4>
          </td> 
       </tr>
       <tr>
            <td>
                  <asp:Label ID="Label1" runat="server" Text="Payee Account Number"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlPayeeAccountNumber" runat="server" Height="28px" Width="208px" appendDataBoundItems="true">
                <asp:ListItem Value="0">Please select Account Number</asp:ListItem>
          </asp:DropDownList>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="ddlPayeeAccountNumber" SetFocusOnError="true" Display="Dynamic" intialValue="0"></asp:RequiredFieldValidator>
            </td>
       </tr>
       <tr>
            <td>
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
            <td>
                <asp:Label ID="Label10" runat="server" Text="Remarks"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRemarks" runat="server" Height="28px" Width="280px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtRemarks" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="center">
                <asp:Button ID="btnSend" runat="server" Text="Send" Height="28px" OnClick="btnSend_Click"/>
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
