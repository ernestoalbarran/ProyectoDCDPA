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


        protected void Reset_Campos_Click(object sender, EventArgs e)
        {
            // txNombre.Text = "";
            txDes_Corta.Text = "";
            txDes_Larga.Text = "";
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            NegocioCampos NegCam = new NegocioCampos();
            String Validacion = txDes_Larga.Text;
            Int64 valida = Validacion.LongCount();
             if (valida != 0)
            {
                int id_periodo = int.Parse(periodo.SelectedValue);
                MessageBox.Show("ID periodo" + id_periodo);

                if (NegCam.RELACION_CP(txDes_Corta.Text, txDes_Larga.Text, id_periodo) > 0)
                {
                    //se manda a llamar al load grid para que cada vez que 
                    //se inserte un auto se refleje a la hora de cargar el grid
                    LoadGrid();
                    MessageBox.Show("Campo Insertado");

                }
                Reset_Campos_Click(NegCam, e);
                grvCampos.SetPageIndex(grvCampos.PageCount);
            }
             else
                 MessageBox.Show("Debes de ingresar una descripcion al Campo");

        }    
                 
                 /*


            if (NegCam.AltaCampo(txDes_Corta.Text, txDes_Larga.Text)>0)
            {
                LoadGrid();
            
                MessageBox.Show("Campo Insertado");
            }

        }
*/

    

        private void LoadGrid()
        {
            NegocioCampos NegCam = new NegocioCampos();
            grvCampos.DataSource = NegCam.ObtenerCampos();
            grvCampos.DataBind();
        }
        
        protected void grvCampos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView gv = (GridView)sender;
            gv.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        
        }
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

    }
}