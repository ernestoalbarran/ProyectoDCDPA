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

            String Validacion = txdescripcion.Text;
            Int64 valida = Validacion.LongCount();
            if (valida != 0)
            {
                int id_periodo = int.Parse(periodo.SelectedValue);
                MessageBox.Show("ID periodo" + id_periodo);
                //NegLem.RELACION_LP(txtitulo.Text, txdescripcion.Text, id_periodo);

                if (NegLem.RELACION_LP(txtitulo.Text, txdescripcion.Text, id_periodo) > 0)
                {
                    //se manda a llamar al load grid para que cada vez que 
                    //se inserte un auto se refleje a la hora de cargar el grid
                    LoadGrid();
                    MessageBox.Show("Lema Insertado");

                }
                Reset_Lemas_Click(NegLem, e);
                grvLemas.SetPageIndex(grvLemas.PageCount);
            }
            else
                MessageBox.Show("Debes de ingresar una descripcion al lema");

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

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void grvLemas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView gv = (GridView)sender;
            gv.PageIndex = e.NewPageIndex;
            LoadGrid();
        }

        protected void grvLemas_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}