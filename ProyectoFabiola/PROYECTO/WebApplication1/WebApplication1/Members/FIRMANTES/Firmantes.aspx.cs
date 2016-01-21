using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Data;

using Comun;
using Negocio;


namespace WebApplication1
{
        
    public partial class Firmantes : System.Web.UI.Page
    {
        /* //<!--  Parte Prueba variables de sesión-------------------------------->
        public String activo;
        public String periodoletra;
         */
        //<!--  Parte Prueba variables de sesión-------------------------------->
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                //<!--  Parte Prueba variables de sesión-------------------------------->
                lblP.Text = Session["Id_Plantel"].ToString();
                lblProyecto.Text = Session["Id_Proyecto"].ToString();
                lblArea.Text = Session["Id_Area"].ToString();
                //<!--  Parte Prueba variables de sesión-------------------------------->

                /*//<!--  Parte Prueba variables de sesión-------------------------------->
                 if (Session["proyecto_activo"] == null)
                 {
                     NegocioActivo obtenerActivo = new NegocioActivo();
                     Session["informe_activo"] = obtenerActivo.select_escalar("Informes");
                 * 
                 * ESTA ASIGNACION LA HICE DESDE QUE INICIA SESION EL USUARIO PARA DARLE EL PROYECTO ACTIVO DESDE EL COMIENZO DE SU SESION
                     Session["proyecto_activo"] = obtenerActivo.select_escalar("Proyecto");
                     //activo = Session["informe_activo"].ToString();
                 }*/
                //<!--  Parte Prueba variables de sesión-------------------------------->



                //LLENAR LOS DROPDOWNLIST DE FIRMANTES:

                NegocioFirmante1 Firmantes = new NegocioFirmante1();
                DataTable DTFirmantes = Firmantes.RecuperaDTFirmantes(Session["Id_Area"].ToString(), Session["Id_Plantel"].ToString());
                ddlJefe.DataSource = null;
                ddlJefe.DataSource = DTFirmantes;
                ddlJefe.DataTextField = "NOMBRE";
                ddlJefe.DataValueField = "RFC";
                ddlJefe.DataBind();

                //-------------------------------Consejero 1---------------------------------------
                ddlConsejero1.DataSource = null;
                ddlConsejero1.DataSource = DTFirmantes;
                ddlConsejero1.DataTextField = "NOMBRE";
                ddlConsejero1.DataValueField = "RFC";
                ddlConsejero1.DataBind();

                //-------------------------------Consejero 2---------------------------------------
                ddlConsejero2.DataSource = null;
                ddlConsejero2.DataSource = DTFirmantes;
                ddlConsejero2.DataTextField = "NOMBRE";
                ddlConsejero2.DataValueField = "RFC";
                ddlConsejero2.DataBind();

                //-------------------------------Consejero 3---------------------------------------
                ddlConsejero3.DataSource = null;
                ddlConsejero3.DataSource = DTFirmantes;
                ddlConsejero3.DataTextField = "NOMBRE";
                ddlConsejero3.DataValueField = "RFC";
                ddlConsejero3.DataBind();

                //-------------------------------Consejero 4---------------------------------------
                ddlConsejero4.DataSource = null;
                ddlConsejero4.DataSource = DTFirmantes;
                ddlConsejero4.DataTextField = "NOMBRE";
                ddlConsejero4.DataValueField = "RFC";
                ddlConsejero4.DataBind();

                //-------------------------------Consejero 5---------------------------------------
                ddlConsejero5.DataSource = null;
                ddlConsejero5.DataSource = DTFirmantes;
                ddlConsejero5.DataTextField = "NOMBRE";
                ddlConsejero5.DataValueField = "RFC";
                ddlConsejero5.DataBind();

                //-------------------------------Consejero 6---------------------------------------
                ddlConsejero6.DataSource = null;
                ddlConsejero6.DataSource = DTFirmantes;
                ddlConsejero6.DataTextField = "NOMBRE";
                ddlConsejero6.DataValueField = "RFC";
                ddlConsejero6.DataBind();
            }

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {

        
                //NegocioFirmante1 NegFirm = new NegocioFirmante1();
                //if (NegFirm.AltaFirmante1((Convert.ToInt32(Session["Id_Plantel"])), 
                //    ( Convert.ToInt32(Session["Id_Area"].ToString())), 
                //    ddlJefe.DataValueField, ddlConsejero1.DataValueField,
                //    ddlConsejero2.DataValueField, ddlConsejero3.DataValueField, 
                //    ddlConsejero4.DataValueField, ddlConsejero5.DataValueField,
                //ddlConsejero6.DataValueField, tbSiglas.Text,Convert.ToDateTime(tbFecha.Text),
                //(Convert.ToInt32(Session["Id_Proyecto"].ToString()))) > 0)
                //{
                   
                //    MessageBox.Show("Campo Insertado");
                //}

            /*
                NegocioFirmante1 NegFirm = new NegocioFirmante1();
                if (NegFirm.AltaFirmante1((Convert.ToInt32(Session["Id_Plantel"])),
                    (Convert.ToInt32(Session["Id_Area"].ToString())),
                    ddlJefe.Text, ddlConsejero1.Text,
                    ddlConsejero2.Text, ddlConsejero3.Text,
                    ddlConsejero4.Text, ddlConsejero5.Text,
                ddlConsejero6.Text, tbSiglas.Text, Convert.ToDateTime(tbFecha.Text),
               (Convert.ToInt32(Session["Id_Proyecto"].ToString()))) > 0)
                {

                    MessageBox.Show("Firmante Insertado");
                    Response.Redirect("AltaProyecto.aspx");

                }
             * 
             * 
             */

            NegocioFirmante1 NegFir = new NegocioFirmante1();
            String Validacion = tbSiglas.Text;
            Int64 valida = Validacion.LongCount();

            DateTime datevalue = default(DateTime);
            String dateString = tbFecha.Text;

            //if (IsDateTime(Convert.ToDateTime(tbFecha.Text)))
            //{

            //}

            //Boolean banderaF = DateTime.TryParse(tbFecha.Text, out VFecha);


            //if (valida != 0 || banderaF)
            if (valida != 0&& DateTime.TryParse(dateString, out datevalue))
            {
                int id_periodo = Convert.ToInt32(Session["Id_Plantel"].ToString());
                int id_plantel = Convert.ToInt32(Session["Id_Proyecto"].ToString());
                int id_area = Convert.ToInt32(Session["Id_Area"].ToString());
                MessageBox.Show("ID periodo" + id_periodo);

                if (NegFir.RELACION_FP(ddlJefe.SelectedValue.ToString(), ddlConsejero1.SelectedValue.ToString(),
                    ddlConsejero2.SelectedValue.ToString(), ddlConsejero3.SelectedValue.ToString(),
                    ddlConsejero4.SelectedValue.ToString(), ddlConsejero5.SelectedValue.ToString(),
                ddlConsejero6.SelectedValue.ToString(), tbSiglas.Text, Convert.ToDateTime(tbFecha.Text), id_plantel, id_area, id_periodo) > 0)
                {
                    //se manda a llamar al load grid para que cada vez que 
                    //se inserte un auto se refleje a la hora de cargar el grid

                    MessageBox.Show("Firmante Insertado");

                }
               
            }
            else
                MessageBox.Show("Debes de ingresar Siglas y Fecha");

            }
           



  }
}
