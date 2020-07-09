<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" EnableEventValidation="false" Inherits="Laboratorio4.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridFacturas" runat="server" 
                CellPadding="4" 
                ForeColor="#333333" 
                GridLines="None"
                AutoGenerateColumns="false"  
                DataKeyNames="idFactura"
                OnRowDataBound="GridFacturas_RowDataBound" OnSelectedIndexChanging="GridFacturas_SelectedIndexChanging">

                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />


                <Columns>
                    <asp:BoundField DataField="idFactura" HeaderText="NumeroFactura" />
                    <asp:BoundField DataField="numLinea" HeaderText="NumeroLinea" />
                    <asp:BoundField DataField="codProducto" HeaderText="NumeroProducto" />
                    <asp:BoundField DataField="detProducto" HeaderText="NombreProducto" />
                    <asp:BoundField DataField="cantProducto" HeaderText="Cantidad" />
                    <asp:BoundField DataField="costUnitario" HeaderText="PrecioUnidad" />
                    <asp:BoundField DataField="totalLinea" HeaderText="Total" />
                </Columns>
            </asp:GridView>
            <br />
            <br />
            <table>
                <tr>
                    <td>Codigo de Factura</td>
                    <td><asp:TextBox ID="txtCFac" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Numero de Linea</td>
                    <td><asp:TextBox ID="txtNumLine" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Codigo de Producto</td>
                    <td><asp:TextBox ID="txtCodProd" runat="server"></asp:TextBox></td>
                </tr>
                 <tr>
                    <td>Descripcion del Producto</td>
                    <td><asp:TextBox ID="txtDescProd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Cantidad de Producto</td>
                    <td><asp:TextBox ID="txtCantProd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Costo Unitario</td>
                    <td><asp:TextBox ID="txtCostU" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td><asp:TextBox ID="txtTotal" runat="server"></asp:TextBox></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
