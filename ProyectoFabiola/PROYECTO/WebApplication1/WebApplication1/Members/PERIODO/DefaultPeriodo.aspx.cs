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
          
                Calendar1.Visible = false;
                Calendar2.Visible = false;
                LoadGrid();
            }

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

            NegocioPeriodo NegPer = new NegocioPeriodo();

            String nombre = "";
            String fechaIni = Calendar1.SelectedDate.ToShortDateString();
            String fechaFin = Calendar2.SelectedDate.ToShortDateString();
            String F = "0001";
            

            nombre = fechaIni.Substring(6, 4) + " - " + fechaFin.Substring(6, 4);
            bool b = nombre.Contains(F);
            if (b!=true)
               {
                    if (NegPer.AltaPeriodo(nombre, DateTime.Parse(fechaIni), DateTime.Parse(fechaFin)) > 0)
                    {
                        //se manda a llamar al load grid para que cada vez que 
                        //se inserte un auto se refleje a la hora de cargar el grid 
                        LoadGrid();
                        MessageBox.Show("Lema Insertado");
                    }
            }
            else
            {
                MessageBox.Show("Necesitas ingresar una fecha para periodo que sea valida");
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txFechaI.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }



        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            txFechaF.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            if (Calendar2.Visible)
            {
                Calendar2.Visible = false;
            }
            else
            {
                Calendar2.Visible = true;
            }
        }




    }
}