<%@ Page Language="VB" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server"> 
        <div align="center">
            <div>
                <h4>Meus débitos</h4>
            </div>

            <asp:GridView ID="gvMyDebits" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText ="Ir para conta">
                        <ItemTemplate>
                            <asp:Label ID="accNum" runat="server" Text='<%# Eval("AccountNumber") %>' ></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Nome do beneficiário">
                        <ItemTemplate>
                            <asp:Label ID="accNum" runat="server" Text='<%# Eval("Nome do beneficiário") %>' ></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Quantia">
                        <ItemTemplate>
                            <asp:Label ID="accNum" runat="server" Text='<%# Eval("Quantia") %>' ></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText ="Observações">
                        <ItemTemplate>
                            <asp:Label ID="accNum" runat="server" Text='<%# Eval("Observações") %>' ></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <div id="error" runat="server" style="color:red"></div>

        </div>
    </form>
</body>
</html>
