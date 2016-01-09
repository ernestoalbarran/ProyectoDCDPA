using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PCEPI.Comun;

using PCEPI.Negocio;
using System.Windows.Forms;

namespace PCEPI
{
    public partial class DefaultProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //esto se hizo solo para observar que se mantienen los valores seteados


            Label1.Text = Session["Proyecto"].ToString();
            Label2.Text = Session["Id_Area"].ToString(); // se debe hacer el cambio de materia por area en la pagina donde se despliega
            Label3.Text = Session["Id_Plantel"].ToString();
        }

        protected void btCrearGrupo_Click(object sender, EventArgs e)
        {
            int sumaOpciones = 0;

            foreach (ListItem item in ChBtnProy.Items)
            {

                if (item.Selected)
                {

                    sumaOpciones += Int32.Parse(item.Value);
                }

            }

            switch (sumaOpciones)
            {
                case 0:
                    Label4.Text = "No se ha seleccionado Opcion ";
                    break;

                case 1:
                    Label4.Text = "InterArea";
                    break;
                case 2:
                    Label4.Text = "InterPlantel";
                    break;
                case 3:
                    Label4.Text = "InterArea - InterPlantel";
                    break;
                case 4:
                    Label4.Text = "Profesor";
                    break;
                case 5:
                    Label4.Text = "Profesor - InterArea";
                    break;
                case 6:
                    Label4.Text = "Profesor - InterPlantel";
                    break;
                case 7:
                    Label4.Text = "todos";
                    break;
                default:
                    Label4.Text = " ";

                    break;

            }

            Response.Redirect("AltaProyecto.aspx?opcion=" + sumaOpciones, false);
        }
    }
}