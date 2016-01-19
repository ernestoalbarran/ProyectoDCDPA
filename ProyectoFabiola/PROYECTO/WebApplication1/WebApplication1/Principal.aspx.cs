using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //<!--  Parte Prueba variables de sesión-------------------------------->       

            lblPlantel.Text = Session["Id_Plantel"].ToString();
            lblNombrePlantel.Text = Session["Plantel"].ToString();
            lblProyecto.Text = Session["Id_Proyecto"].ToString(); // se debe hacer el cambio de materia por area en la pagina donde se despliega
            lblNombreProyecto.Text = Session["Proyecto"].ToString();
            lblArea.Text = Session["Id_Area"].ToString();
            lblNombreArea.Text = Session["Area"].ToString();

            //<!--  Parte Prueba variables de sesión-------------------------------->
        

        }
    }
}