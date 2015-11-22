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
    public partial class AltaProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                lblPeriodo.Text = Session["Proyecto"].ToString();
                lblMateria.Text = Session["Area"].ToString(); // se debe hacer el cambio de materia por area en la pagina donde se despliega
                lblPlantel.Text = Session["Plantel"].ToString();

                ProfesorProyecto profesor = new ProfesorProyecto();
                profesor.ID_PLANTEL = Session["Id_Plantel"].ToString();

                MateriaProyecto materia = new MateriaProyecto();
                materia.AREA = Convert.ToInt32(Session["Id_Area"].ToString()); ;

                DataSet dsProfesor = NegocioProyecto.GetProfesor(profesor,materia);

                ListBoxProfesor.DataSource = dsProfesor.Tables[0];
                ListBoxProfesor.DataTextField ="NOMBRE";
                ListBoxProfesor.DataValueField ="RFC";
                ListBoxProfesor.DataBind();

                ListBoxMaterias.DataSource = dsProfesor.Tables[1];
                ListBoxMaterias.DataTextField = "MATERIA40";
                ListBoxMaterias.DataValueField = "ID_AREA";
                ListBoxMaterias.DataBind();


            }
           /* if (!Page.IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    int ProyectoID = Convert.ToInt32(Request.QueryString["Id"]);
                    CargarDatos(ProyectoID);
                }
            }*/

            //int id_Area = (int)Session["id_Area"];
            //int id_Area =Int32.Parse(Session["Id_Area"].ToString());

            //NegocioMateria ltMaterias = new NegocioMateria();

            //ListBoxMaterias.DataSource = ltMaterias.ObtenerMat(id_Area);
            
        }

       /* private void CargarDatos(int ProyectoID)
        {
            Proyecto proyecto = new Proyecto();
            proyecto.ID_PROYECTO = ProyectoID;
            DataSet ds = NegocioProyecto.GetProyectoIDActualizar(proyecto);
            DataRow dr = ds.Tables[0].Rows[0];

            lblPlantel.Text =dr["PLANTEL"].ToString();
            lblPeriodo.Text=dr["PERIODO"].ToString();
            Session["Id_Area"]=dr["ID_AREA"].ToString();
            txtNumOfice.Text= dr["NUM_OFICIO"].ToString();
            txtFechaEval.Text=Convert.ToString(dr["FECHA_EVAL"].ToString());
            txtTitulo.Text=dr["TITULO"].ToString();
            txtProducto.Text=dr["PRODUCTO"].ToString();
            ddlCampo.SelectedItem.Text=dr["CAMPO"].ToString();
            ListBoxMateriasP.SelectedItem.Text=dr["MATERIA"].ToString();
            txtADescProy.Text=dr["DESCRIPCION_PROY"].ToString();
            ddlOpinion.SelectedItem.Text=dr["OPINION"].ToString();
            txtObservaciones.Text=dr["OBSERVACIONES"].ToString();
            ListBoxProfProy.SelectedItem.Text=dr["PROFESOR"].ToString();
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ListBoxMaterias.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccione una materia por favor");
            }
            else
            {

                ListItem materia = ListBoxMaterias.SelectedItem;
                ListBoxMateriasP.Items.Add(materia);
                ListBoxMaterias.Items.Remove(ListBoxMateriasP.SelectedItem);
            }
        }

        protected void ButtonAddProf_Click(object sender, EventArgs e)
        {
            if (ListBoxProfesor.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccione por lo menos un profesor");
            }
            else
            {
                ListBoxProfProy.Items.Add(ListBoxProfesor.SelectedItem);
                ListBoxProfesor.Items.Remove(ListBoxProfProy.SelectedItem);
            }
        }

        protected void ListBoxMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxMateriasP_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonLimpiar_Click(object sender, EventArgs e)
        {
            ListBoxProfProy.Items.Clear();
            ListBoxMateriasP.Items.Clear();
            
            foreach (System.Windows.Forms.TextBox txt in this.Controls)
            {
                txt.Clear();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LnkNuevo_Click(object sender, EventArgs e)
        {

            Response.Redirect("Firmantes.aspx",false);
        }


        protected void LnkNuevo_ClickConsulta(object sender, EventArgs e)
        {

            Response.Redirect("ActualizarProyecto.aspx", false);
        }


        protected void btnGuardarProy(object sender, EventArgs e)
        {
            try
            {
                Proyecto proyecto = new Proyecto();
                proyecto.PLANTEL = lblPlantel.Text;
                proyecto.PERIODO = lblPeriodo.Text;
                proyecto.ID_AREA = Convert.ToInt32(Session["Id_Area"].ToString());
                proyecto.NUM_OFICIO = txtNumOfice.Text;
                proyecto.FECHA_EVAL = Convert.ToDateTime(txtFechaEval.Text);
                proyecto.TITULO = txtTitulo.Text;
                proyecto.PRODUCTO = txtProducto.Text;
                proyecto.CAMPO = ddlCampo.SelectedItem.Text;
                proyecto.MATERIA = ListBoxMateriasP.SelectedItem.Text;
                proyecto.DESCRIPCION_PROY = txtADescProy.Text;
                proyecto.OPINION_DIR = ddlOpinion.SelectedItem.Text;
                proyecto.OBSERVACIONES = txtObservaciones.Text;
                proyecto.PROFESOR = ListBoxProfProy.SelectedItem.Text;

                if (NegocioProyecto.Insertar(proyecto) > 0)
                {
                    MessageBox.Show("Se inserto el proyecto correctamente");
                    Response.Redirect("ListarProyectos.aspx", false);

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show("Algo esta mal"+ ex.Message + ex.StackTrace);
            }


            //AltaProyecto.Insertar(proyecto);


        }

        protected void ButtondellMateria_Click(object sender, EventArgs e)
        {
          if (ListBoxMateriasP.SelectedIndex == -1)
            {
                MessageBox.Show("No se eligieron materias para eliminar de la lista");
            }
            else
            {
                /*ListItem materiaProy = ListBoxMateriasP.SelectedItem;
                ListBoxMaterias.Items.Add(materiaProy);
                ListBoxMateriasP.Items.Remove(ListBoxMaterias.SelectedItem);*/

                ListBoxMaterias.Items.Add(ListBoxMateriasP.SelectedItem);
                ListBoxMateriasP.Items.Remove(ListBoxMaterias.SelectedItem);
            }
        
        }

        protected void ButtondelProf_Click(object sender, EventArgs e)
        {

            if (ListBoxProfProy.SelectedIndex == -1)
            {
                MessageBox.Show("No se eligieron profesores para eliminar de la lista");
            }
            else
            {
                ListBoxProfesor.Items.Add(ListBoxProfProy.SelectedItem);
                ListBoxProfProy.Items.Remove(ListBoxProfesor.SelectedItem);
            }
        }
       
    }
}