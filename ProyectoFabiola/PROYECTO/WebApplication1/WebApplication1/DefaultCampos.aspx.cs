using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DGCCH.Negocio;
using System.Windows.Forms;
using DGCCH.Comun;

namespace DGCCH.Presentacion
{
    public partial class DefaultCampos : System.Web.UI.Page
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
            NegocioCampos NegCam = new NegocioCampos();
            if (NegCam.AltaCampo(txDes_Corta.Text, txDes_Larga.Text)>0)
            {
                LoadGrid();
            
                MessageBox.Show("Campo Insertado");
            }

        }


        protected void Reset_Lemas_Click(object sender, EventArgs e)
        {
            // txNombre.Text = "";
            txDes_Corta.Text = "";
            txDes_Larga.Text = "";
        }


        private void LoadGrid()
        {
            NegocioCampos NegCam = new NegocioCampos();
            grvCampos.DataSource = NegCam.ObtenerCampos();
            grvCampos.DataBind();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
    }
}