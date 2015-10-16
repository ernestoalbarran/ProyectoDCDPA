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
    public partial class DefaultLema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                LoadGrid();
            }
            
        }

        protected void Reset_Lemas_Click(object sender, EventArgs e)
        {
            txtitulo.Text = "";
            txdescripcion.Text = "";
        }
        protected void btnInsert_Click(object sender, EventArgs e)
        {
           

            NegocioLemas NegLem = new NegocioLemas();
            

            
            if (NegLem.AltaLema(txtitulo.Text, txdescripcion.Text)>0)
            {
                //se manda a llamar al load grid para que cada vez que 
                //se inserte un auto se refleje a la hora de cargar el grid
                LoadGrid();
                MessageBox.Show("Lema Insertado");
            }
           
        }

        private void LoadGrid()
        {
            NegocioLemas NegLem = new NegocioLemas();
            grvLemas.DataSource = NegLem.ObtenerLemas();
            grvLemas.DataBind();
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

    }
}