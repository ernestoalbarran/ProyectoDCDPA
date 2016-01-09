﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Threading.Tasks;
using System.Text;
using System.Data;
using System.Globalization;
using System.Text.RegularExpressions;

using PCEPI.Comun;
using PCEPI.Negocio;
using Comun;


namespace PCEPI
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
                Label6.Text = Request.QueryString["opcion"]; // esto es para saber que se tienen guardadas las opciones del check box

                ProyectoLabels labels = new ProyectoLabels();
                labels.PERIODO = Session["Proyecto"].ToString();
                labels.PLANTEL = Session["Id_Plantel"].ToString();
                labels.ID_AREA = Session["Id_Area"].ToString();
                labels.Fecha = "@Fecha";
                labels.Grupo = "@Grupo";



                DataSet texto = NegocioProyectoLabels.LabelsProyecto(labels);
                DataRow dr = texto.Tables[0].Rows[0];
                txtFechaEval.Text = dr["Fecha"].ToString();
                lblGrupo.Text = dr["Grupo"].ToString();



                ProfesorProyecto profesor = new ProfesorProyecto();
                profesor.ID_PLANTEL = Session["Id_Plantel"].ToString();

                MateriaProyecto materia = new MateriaProyecto();
                materia.AREA = Convert.ToInt32(Session["Id_Area"].ToString()); ;

                DataSet dsProfesor = NegocioProyecto.GetProfesor(profesor, materia);

                ListBoxProfesor.DataSource = dsProfesor.Tables[0];
                ListBoxProfesor.DataTextField = "NOMBRE";
                ListBoxProfesor.DataValueField = "RFC";
                ListBoxProfesor.DataBind();

                ListBoxMaterias.DataSource = dsProfesor.Tables[1];
                ListBoxMaterias.DataValueField = "ID_MATERIA";
                ListBoxMaterias.DataTextField = "MATERIA40";


                ListBoxMaterias.DataBind();

                DataTable dtProfesores = new DataTable();
                dtProfesores.Columns.Add("RFC", typeof(string));
                dtProfesores.Columns.Add("Coordinador", typeof(bool));
                dtProfesores.Columns.Add("Nombre", typeof(string));
                dtProfesores.Columns.Add("Perfil", typeof(int));
                dtProfesores.Columns.Add("ProfesorCarrera", typeof(bool));

                gvProfesor.DataSource = dtProfesores;
                gvProfesor.DataBind();
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
                ListBoxMaterias.Items.Remove(materia);
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
                //ListBoxProfProy.Items.Add(ListBoxProfesor.SelectedItem);
                //ListBoxProfesor.Items.Remove(ListBoxProfProy.SelectedItem);

                DataTable dtProfesores = new DataTable();
                dtProfesores.Columns.Add("RFC", typeof(string));
                dtProfesores.Columns.Add("Coordinador", typeof(bool));
                dtProfesores.Columns.Add("Nombre", typeof(string));
                dtProfesores.Columns.Add("Perfil", typeof(int));
                dtProfesores.Columns.Add("ProfesorCarrera", typeof(bool));

                object[] valores = new object[5];

                //Esto para llenar la tabla temporal de los registros que ya estan en el grid
                foreach (GridViewRow registro in gvProfesor.Rows)
                {
                    valores[0] = gvProfesor.DataKeys[registro.RowIndex][1].ToString();//RFC
                    System.Web.UI.WebControls.CheckBox chbCoordinador = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
                    valores[1] = (bool)chbCoordinador.Checked;
                    valores[2] = registro.Cells[2].Text;
                    valores[3] = 1;//Profesor de carrera o no
                    valores[4] = gvProfesor.DataKeys[registro.RowIndex].Value; //Convert.ToBoolean(registro.Cells[6].Text);


                    dtProfesores.Rows.Add(valores);
                }


                object[] valoresNuevos = new object[5];
                valoresNuevos[0] = ListBoxProfesor.SelectedItem.Value;//RFC
                valoresNuevos[1] = false;
                valoresNuevos[2] = ListBoxProfesor.SelectedItem.Text;
                valoresNuevos[3] = 1;
                valoresNuevos[4] = profesorCarrera(ListBoxProfesor.SelectedItem.Value);//Aqui se lee si es profesor de carrera




                dtProfesores.Rows.Add(valoresNuevos);

                ListBoxProfesor.Items.Remove(ListBoxProfesor.SelectedItem);

                gvProfesor.DataSource = dtProfesores;
                gvProfesor.DataBind();

                rellenarEstadoGridView(dtProfesores);
            }
        }

        private void rellenarEstadoGridView(DataTable dtProfesores)
        {
            foreach (GridViewRow registro in gvProfesor.Rows)
            {
                foreach (DataRow drProfesor in dtProfesores.Rows)
                {
                    if (registro.Cells[2].Text == drProfesor[2].ToString())
                    {
                        System.Web.UI.WebControls.CheckBox chb = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
                        chb.Checked = (bool)drProfesor[1];
                        if ((bool)drProfesor[4] == true)
                        {
                            ((System.Web.UI.WebControls.DropDownList)registro.FindControl("ddlPerfil")).DataValueField = "ID_PERFIL";
                            ((System.Web.UI.WebControls.DropDownList)registro.FindControl("ddlPerfil")).DataTextField = "DESCRIPCION";
                            ((System.Web.UI.WebControls.DropDownList)registro.FindControl("ddlPerfil")).DataSource = consultarPerfiles().Tables[0];
                            ((System.Web.UI.WebControls.DropDownList)registro.FindControl("ddlPerfil")).DataBind();

                        }
                        else
                        {
                            ((System.Web.UI.WebControls.DropDownList)registro.FindControl("ddlPerfil")).Visible = false;
                            gvProfesor.Rows[registro.RowIndex].Cells[5].Visible = false;
                        }
                    }
                }
            }
        }

        private bool profesorCarrera(string rfc)
        {
            Profesor objProfesor = new Profesor();

            return objProfesor.profesorCarrera(rfc);
        }

        private DataSet consultarPerfiles()
        {
            Profesor objProfesor = new Profesor();

            return objProfesor.consultarPerfiles();
        }

        protected void ListBoxMaterias_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxMateriasP_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void ButtonLimpiar_Click(object sender, EventArgs e)
        //{
        //    ListBoxProfProy.Items.Clear();
        //    ListBoxMateriasP.Items.Clear();

        //    foreach (System.Windows.Forms.TextBox txt in this.Controls)
        //    {
        //        txt.Clear();
        //    }
        //}

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LnkNuevo_Click(object sender, EventArgs e)
        {

            Response.Redirect("Firmantes.aspx", false);
        }


        protected void LnkNuevo_ClickConsulta(object sender, EventArgs e)
        {

            Response.Redirect("ListarProyectos.aspx", false);
        }


        protected void btnGuardarProy(object sender, EventArgs e)
        {
            try
            {
                int opcion = Convert.ToInt32(Request.QueryString["opcion"]);
                StringBuilder MateriasProy = new StringBuilder();
                String Fecha = txtFechaEval.Text;
                Fecha = Regex.Replace(Fecha, @"[^\u0000-\u007F]", string.Empty);
                string inputFormat = "dd/MM/yyyy";
                string outputFormat = "yyyy/MM/dd";
                var dateTime = DateTime.ParseExact(Fecha, inputFormat, CultureInfo.InvariantCulture);
                string output = dateTime.ToString(outputFormat);

                Proyecto proyecto = new Proyecto();
                proyecto.Grupo = Session["ID_Plantel"].ToString() + Session["ID_AREA"].ToString() + lblGrupo.Text;
                proyecto.Periodo = lblPeriodo.Text;

                switch (opcion)
                {
                    case 0:
                        proyecto.Interarea = "0";
                        proyecto.Interplantel = "0";
                        proyecto.P_asignatura = "0";
                        break;

                    case 1:
                        proyecto.Interarea = "1";
                        proyecto.Interplantel = "0";
                        proyecto.P_asignatura = "0";
                        break;
                    case 2:
                        proyecto.Interarea = "0";
                        proyecto.Interplantel = "1";
                        proyecto.P_asignatura = "0";
                        break;
                    case 3:
                        proyecto.Interarea = "1";
                        proyecto.Interplantel = "1";
                        proyecto.P_asignatura = "0";
                        break;
                    case 4:
                        proyecto.Interarea = "0";
                        proyecto.Interplantel = "0";
                        proyecto.P_asignatura = "1";
                        break;
                    case 5:
                        proyecto.Interarea = "1";
                        proyecto.Interplantel = "0";
                        proyecto.P_asignatura = "1";
                        break;
                    case 6:
                        proyecto.Interarea = "0";
                        proyecto.Interplantel = "1";
                        proyecto.P_asignatura = "1";
                        break;
                    case 7:
                        proyecto.Interarea = "1";
                        proyecto.Interplantel = "1";
                        proyecto.P_asignatura = "1"; ;
                        break;
                    default:
                        break;

                }
                proyecto.Oficio = txtNumOfice.Text;
                proyecto.Fecha_ev1 = Convert.ToDateTime(output);
                proyecto.Titulo = txtTitulo.Text;
                proyecto.Producto = txtProducto.Text;
                proyecto.Campo = ddlCampo.SelectedValue.ToString();
                foreach (ListItem mat in ListBoxMateriasP.Items)
                {
                    String valores = mat.Value;
                    MateriasProy.Append(valores.ToString());
                }
                String Concatenadas = MateriasProy.ToString();
                proyecto.Asignaturas = Concatenadas; //esta es la concatenacion de las materias del listbox
                proyecto.Descripcion = txtADescProy.Text;
                proyecto.Opinion_dir = ddlOpinion.SelectedValue.ToString();
                proyecto.Observaciones = txtObservaciones.Text;
                //proyecto.PROFESOR = ListBoxProfProy.SelectedItem.Text;     
                string valoresProfesores = crearValoresInsertarProfesores();
                proyecto.ValuesInsert = valoresProfesores;

                if (NegocioProyecto.Insertar(proyecto) > 0)
                {
                    MessageBox.Show("Se inserto el proyecto correctamente");
                    Response.Redirect("DefaultProyecto.aspx", false);

                }
            }
            catch (Exception ex)
            {

                MessageBox.Show("Algo esta mal" + ex.Message + ex.StackTrace);
            }


            //AltaProyecto.Insertar(proyecto);


        }

        private string crearValoresInsertarProfesores()
        {
            StringBuilder valores = new StringBuilder();

            valores.Append("VALUES");

            foreach (GridViewRow registro in gvProfesor.Rows)
            {
                valores.Append("(");
                DataTable dt = new DataTable();
                dt = (DataTable)gvProfesor.DataSource;


                //DataKeyArray arreglo = gvProfesor.DataKeyNames();
                valores.Append("'" + gvProfesor.DataKeys[registro.RowIndex][1].ToString() + "', ");
                valores.Append("'" + Session["ID_Plantel"].ToString() + Session["ID_AREA"].ToString() + lblGrupo.Text + "', ");
                valores.Append("'" + lblPeriodo.Text + "', ");
                if (((System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador")).Checked == true)
                    valores.Append("'1', ");
                else
                    valores.Append("'0', ");
                valores.Append("'" + ((DropDownList)registro.FindControl("ddlPerfil")).SelectedValue + "'),");
                //Aqui concatenar todos los valores de un prof

            }
            string cadena = (valores.ToString()).Substring(0, valores.Length - 1);
            return cadena;
        }

        protected void ButtondellMateria_Click(object sender, EventArgs e)
        {
            if (ListBoxMateriasP.SelectedIndex == -1)
            {
                MessageBox.Show("No se eligieron materias para eliminar de la lista");
            }
            else
            {

                ListItem materia = ListBoxMateriasP.SelectedItem;
                ListBoxMaterias.Items.Add(materia);
                ListBoxMateriasP.Items.Remove(materia);
            }

        }

        //protected void ButtondelProf_Click(object sender, EventArgs e)
        //{

        //    if (ListBoxProfProy.SelectedIndex == -1)
        //    {
        //        MessageBox.Show("No se eligieron profesores para eliminar de la lista");
        //    }
        //    else
        //    {
        //        ListBoxProfesor.Items.Add(ListBoxProfProy.SelectedItem);
        //        ListBoxProfProy.Items.Remove(ListBoxProfesor.SelectedItem);
        //    }
        //}

        protected void ListBoxProfProy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        //protected void gvProfesor_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "Borrar")
        //    {
        //        object[] valores = new object[5];
        //        DataTable dtProfesores = new DataTable();

        //        foreach (GridViewRow registro in gvProfesor.Rows)
        //        {
        //            if (registro.RowIndex != gvProfesor.row)
        //            {
        //                valores[0] = registro.Cells[0].Text;//RFC
        //                System.Web.UI.WebControls.CheckBox chbCoordinador = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
        //                valores[1] = (bool)chbCoordinador.Checked;
        //                valores[2] = registro.Cells[2].Text;
        //                valores[3] = 1;//Profesor de carrera o no
        //                valores[4] = gvProfesor.DataKeys[registro.RowIndex].Value; //Convert.ToBoolean(registro.Cells[6].Text);

        //                dtProfesores.Rows.Add(valores);
        //            }
        //            else
        //            {
        //                ListItem liProfesor = new ListItem(registro.Cells[2].Text, registro.Cells[0].Text);
        //                ListBoxProfesor.Items.Add(liProfesor);
        //            }
        //        }
        //        gvProfesor.DataSource = dtProfesores;
        //        gvProfesor.DataBind();
        //    }
        //}

        protected void gvProfesor_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            object[] valores = new object[5];
            DataTable dtProfesores = new DataTable();
            dtProfesores.Columns.Add("RFC", typeof(string));
            dtProfesores.Columns.Add("Coordinador", typeof(bool));
            dtProfesores.Columns.Add("Nombre", typeof(string));
            dtProfesores.Columns.Add("Perfil", typeof(int));
            dtProfesores.Columns.Add("ProfesorCarrera", typeof(bool));


            foreach (GridViewRow registro in gvProfesor.Rows)
            {
                if (registro.RowIndex != e.RowIndex)
                {
                    valores[0] = registro.Cells[0].Text;//RFC
                    System.Web.UI.WebControls.CheckBox chbCoordinador = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
                    valores[1] = (bool)chbCoordinador.Checked;
                    valores[2] = registro.Cells[2].Text;
                    valores[3] = 1;//Profesor de carrera o no
                    valores[4] = gvProfesor.DataKeys[registro.RowIndex].Value;

                    dtProfesores.Rows.Add(valores);
                }
                else
                {
                    ListItem liProfesor = new ListItem(registro.Cells[2].Text, registro.Cells[0].Text);
                    ListBoxProfesor.Items.Add(liProfesor);


                }
            }
            gvProfesor.DataSource = dtProfesores;
            gvProfesor.DataBind();
            ordenarElementos(ListBoxProfesor);
            rellenarEstadoGridView(dtProfesores);
            //ListBoxProfesor
        }

        private void ordenarElementos(System.Web.UI.WebControls.ListBox lista)
        {
            Dictionary<string, string> slBrownser = new Dictionary<string, string>();
            foreach (ListItem lstItem in ListBoxProfesor.Items)
            {
                slBrownser.Add(lstItem.Value + 1, lstItem.Text);
            }

            var sortedDic = (from dic in slBrownser orderby dic.Value ascending select dic);

            ListBoxProfesor.DataTextField = "Value";
            ListBoxProfesor.DataValueField = "Key";
            ListBoxProfesor.DataSource = sortedDic;
            ListBoxProfesor.DataBind();
        }

        protected void gvProfesor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxMaterias_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }



    }
}