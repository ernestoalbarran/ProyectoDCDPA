using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Text;
using System.Data;

using PCEPI.Comun;
using PCEPI.Negocio;
using Comun;
namespace WebApplication1
{
    public partial class ListarProyectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                DataSet ds = NegocioProyecto.GetProyecto();
                GridProyectos.DataSource = ds.Tables[0];
                GridProyectos.DataBind();

            }
        }

        protected void GridProyectos_RowCommand(object sender, GridViewCommandEventArgs e)
         {
             if (e.CommandName == "EditarProyecto")
             {
                 string sProyectoId = e.CommandArgument.ToString();
                 Response.Redirect("AltaProyecto.aspx?=" + sProyectoId);
             }
             else if (e.CommandName == "EliminarProyecto")
             {
                 Proyecto proyecto = new Proyecto();
                 proyecto.ID_PROYECTO=Convert.ToInt32(e.CommandArgument.ToString());
                 NegocioProyecto.DeleteProyecto(proyecto);
                 DataSet ds = NegocioProyecto.GetProyecto();
                 GridProyectos.DataSource = ds.Tables[0];
                 GridProyectos.DataBind();
             }
         }
    }
}