using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using PCEPI.Comun;
using PCEPI.Negocio;
using System.Windows.Forms;

namespace PCEPI.Presentacion
{
    public partial class DefaultPeriodo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                LoadGrid();
            }

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {


            NegocioPeriodo NegPer = new NegocioPeriodo();
            String nombre = "";
            String fechaIni = txFechaI.Text;
            String fechaFin = txFechaF.Text;

            nombre = fechaIni + " - " + fechaFin;

            if (NegPer.AltaPeriodo(nombre, DateTime.Parse(fechaIni), DateTime.Parse(fechaFin)) > 0)
            {
                //se manda a llamar al load grid para que cada vez que 
                //se inserte un auto se refleje a la hora de cargar el grid
                LoadGrid();
                MessageBox.Show("Lema Insertado");
            }

        }


             protected void Reset_Lemas_Click(object sender, EventArgs e)
        {
           // txNombre.Text = "";
            txFechaI.Text = "";
            txFechaF.Text = "";
        }

        private void LoadGrid()
        {
            NegocioPeriodo NegPer = new NegocioPeriodo();
            grvPeriodos.DataSource = NegPer.ObtenerPeriodos();
            grvPeriodos.DataBind();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

       

        
    }
}