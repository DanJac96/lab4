using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaDatos;
using CapaDatos.Entidades;

namespace Laboratorio4
{
    public partial class Index : System.Web.UI.Page
    {
        GestionBd objBD;
        List<Facturas> auxList;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LoadDataGrid();
            }
        }
        void LoadDataGrid()
        {
            objBD = new GestionBd();
            auxList = objBD.listadoFacturas();
            GridFacturas.DataSource = auxList;
            GridFacturas.DataBind();
        }

        protected void GridFacturas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridFacturas, "Select$" + e.Row.RowIndex);
        }

        protected void GridFacturas_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            foreach (GridViewRow fila in GridFacturas.Rows)
            {

                if (fila.RowIndex == GridFacturas.SelectedIndex)
                {
                    txtCFac.Text = fila.Cells[0].Text; //obtengo el codigo de herramienta
                    txtNumLine.Text = fila.Cells[1].Text;
                    txtCodProd.Text = fila.Cells[2].Text;
                    txtDescProd.Text = fila.Cells[3].Text;
                    txtCantProd.Text = fila.Cells[4].Text;
                    txtCostU.Text = fila.Cells[5].Text;
                    txtTotal.Text = fila.Cells[6].Text;
                    fila.BackColor = ColorTranslator.FromHtml("#B2AAC2");
                }
                else
                {
                    fila.BackColor = ColorTranslator.FromHtml("#FFFFFF");
                }

            }

            LoadDataGrid();
        }

    }
}