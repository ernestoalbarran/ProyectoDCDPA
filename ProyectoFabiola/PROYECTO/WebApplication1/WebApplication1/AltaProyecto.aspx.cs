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
using System.Globalization;
using System.Text.RegularExpressions;

using PCEPI.Comun;
using PCEPI.Negocio;
using Comun;
using DGCCH.Comun;


namespace PCEPI
{
    public partial class AltaProyecto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                
                lblPeriodo.Text = Session["Proyecto"].ToString();
                //nombre del área
                lblMateria.Text = Session["Area"].ToString(); // se debe hacer el cambio de materia por area en la pagina donde se despliega
                //nombre del plantel
                lblPlantel.Text = Session["Plantel"].ToString();
               // Label6.Text = Request.QueryString["opcion"]; // esto es para saber que se tienen guardadas las opciones del check box

                //llena el llbCampos directamente de la base de datos
                ProyectoCampo ddlC = new ProyectoCampo();
                ddlC.Id_Proyecto = Convert.ToInt32(Session["Id_Proyecto"].ToString());
                DataSet Campos = NegocioProyecto.GetCampos(ddlC);
                ddlCampo.DataSource = Campos;
                ddlCampo.DataTextField = "Des_Corta";
                ddlCampo.DataValueField = "IDCampo";
                ddlCampo.DataBind();


                //Estos debe recibirlos tambien del PEC

                ProyectoLabels labels = new ProyectoLabels();
                labels.PERIODO = Session["Proyecto"].ToString();   //en este formato 2006-2007
                labels.PLANTEL = Session["Id_Plantel"].ToString();  //id del plantel
                labels.ID_AREA = Session["Id_Area"].ToString();     // id del área
                labels.Fecha = "@Fecha";
                labels.Grupo = "@Grupo";


                //Trae las etiquetas (label) del número de grupo y la fecha de evaluación
                DataSet texto = NegocioProyectoLabels.LabelsProyecto(labels);
                DataRow dr = texto.Tables[0].Rows[0];
                txtFechaEval.Text = dr["Fecha"].ToString();
                lblGrupo.Text = dr["Grupo"].ToString();


                //Trae profesores y materias
                ProfesorProyecto profesor = new ProfesorProyecto();
                profesor.ID_PLANTEL = Session["Id_Plantel"].ToString();
                profesor.Area = Int32.Parse(Session["Id_Area"].ToString());
                profesor.Opcion = Int32.Parse(Request.QueryString["opcion"].ToString());

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

        protected bool Valida_Profesor(String RFC, int Id_Proyecto)
        {
            Profesor profesor_RFC = new Profesor();
            return profesor_RFC.validaProfesor(RFC,Id_Proyecto);
           
        }

        protected void ButtonAddProf_Click(object sender, EventArgs e)
        {
            if (ListBoxProfesor.SelectedIndex == -1)
            {
                MessageBox.Show("Seleccione por lo menos un profesor");
            }
            else
            {
                //este if verifica si el profesor ya se encuentra en un proyecto
                if (Valida_Profesor(ListBoxProfesor.SelectedValue.ToString(), Convert.ToInt32(Session["Id_Proyecto"].ToString())) != true)
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
                else
                {
                    MessageBox.Show("El profesor ya se encuentra en otro proyecto");
                }
            }
        }


        private void rellenarEstadoGridView(DataTable dtProfesores)
        {
            /*Este metodo recorre el grid y rellena el estado de cada columna en los check box y muestra el ddlist de perfil*/
            foreach (GridViewRow registro in gvProfesor.Rows)
            {
                foreach (DataRow drProfesor in dtProfesores.Rows)
                {
                    /*se verifica si el nombre del profesor es el mismo de grid*/
                    if (registro.Cells[2].Text == drProfesor[2].ToString())
                    {
                        System.Web.UI.WebControls.CheckBox chb = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
                        chb.Checked = (bool)drProfesor[1];
                        /** DropDownList perfil = (DropDownList)registro.FindControl("ddlPerfil");
                         perfil.SelectedItem = gvProfesor.SelectedIndex.ToString();**/

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
                if (validarContenido() != true)
                {
                }
                else
                {
                    int filas = gvProfesor.Rows.Count;
                    int cantChk = 0;
                    int numCheckboxSelect = filas / 4;
                    //contar el numero de checkbox seleccionados
                    foreach (GridViewRow registro in gvProfesor.Rows)
                    {
                        System.Web.UI.WebControls.CheckBox chk = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
                        if (chk.Checked)
                            cantChk++;
                    }

                    if (numCheckboxSelect == cantChk)
                    {


                        int opcion = Convert.ToInt32(Request.QueryString["opcion"]);
                        StringBuilder MateriasProy = new StringBuilder();
                        String Fecha = txtFechaEval.Text;
                        Fecha = Regex.Replace(Fecha, @"[^\u0000-\u007F]", string.Empty);
                        string inputFormat = "dd/MM/yyyy";
                        string outputFormat = "yyyy/MM/dd";
                        var dateTime = DateTime.ParseExact(Fecha, inputFormat, CultureInfo.InvariantCulture);
                        string output = dateTime.ToString(outputFormat);
                        int id_Periodo = 0;
                        id_Periodo = Convert.ToInt32(Session["Id_Proyecto"].ToString());

                        Proyecto proyecto = new Proyecto();
                        proyecto.Grupo = Session["ID_Plantel"].ToString() + Session["ID_AREA"].ToString() + lblGrupo.Text;
                        //proyecto.Periodo = Int32.Parse(Session["Id_Proyecto"].ToString());
                       //se guarda el id del periodo antes se hacia el periodo tal cual, con la variable de session Proyecto.
                        proyecto.Periodo = id_Periodo.ToString();

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
                        proyecto.Fecha_ev1 = output; //Convert.ToDateTime(output);  el output está como string y se debe guardar como datetime
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
                        //estas dos variables son las que dicen quien y cuando en la base de datos, hay que saegurarse que el procedimiento almacenado reciba estas variables tambien 
                        proyecto.Donde = Session["usuarioIP"].ToString();
                        proyecto.Quien = Session["idUsuario"].ToString();

                        //proyecto.PROFESOR = ListBoxProfProy.SelectedItem.Text;     
                        string valoresProfesores = crearValoresInsertarProfesores();
                        proyecto.ValuesInsert = valoresProfesores;

                        if (NegocioProyecto.Insertar(proyecto) > 0)
                        {
                            MessageBox.Show("Se inserto el proyecto correctamente");
                            Response.Redirect("DefaultProyecto.aspx", false);

                        }
                    }
                    else
                    {
                        MessageBox.Show("El numero de Cordinadores \n permitidos para el proyecto \n es de: " + numCheckboxSelect);
                    }
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(" faltan elementos por rellenar\n en el formulario o algo esta mal\n en el codigo de btnGuardarProy" + ex.Message + ex.StackTrace);
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
                valores.Append("'" + Convert.ToInt32(Session["Id_Proyecto"].ToString()) + "', "); //lblPeriodo.Text

                if (((System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador")).Checked == true)
                    valores.Append("'1', ");
                  
                else
                    valores.Append("'0', ");
                valores.Append("'" + ((DropDownList)registro.FindControl("ddlPerfil")).SelectedValue + "'),");
                //Aqui concatenar todos los valores de un prof

            }

            string cadena = (valores.ToString()).Substring(0, valores.Length - 1);//,seleccion

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


        protected void num_chboxselect(object sender, GridView e)
        {
        }
        protected void ListBoxProfProy_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

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
                    valores[0] = gvProfesor.DataKeys[registro.RowIndex][1].ToString();//RFC
                    System.Web.UI.WebControls.CheckBox chbCoordinador = (System.Web.UI.WebControls.CheckBox)registro.FindControl("chbCoordinador");
                    valores[1] = (bool)chbCoordinador.Checked;
                    valores[2] = registro.Cells[2].Text;
                    valores[3] = 1;//Profesor de carrera o no
                    valores[4] = gvProfesor.DataKeys[registro.RowIndex].Value;

                    dtProfesores.Rows.Add(valores);
                }
                else
                {
                    ListItem liProfesor = new ListItem(registro.Cells[2].Text, gvProfesor.DataKeys[registro.RowIndex][1].ToString());
                    ListBoxProfesor.DataTextField = liProfesor.Text;
                    liProfesor.Value = gvProfesor.DataKeys[registro.RowIndex][1].ToString();
                    ListBoxProfesor.DataValueField = liProfesor.Value;
                    ListBoxProfesor.DataBind();
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

        
        private bool validarContenido()
        {
            if (txtNumOfice.Text == String.Empty)
            {
                MessageBox.Show("Tienes algunos campos sin informacion.");
                return false;
                
            }
            else if (txtTitulo.Text == string.Empty)
            {
                MessageBox.Show("Tienes algunos campos sin informacion.");
                return false;
            }
            else if (txtProducto.Text == string.Empty)
            {
                MessageBox.Show("Tienes algunos campos sin informacion.");
                return false;
            }
            else if (ListBoxMateriasP.Items.Count == 0)
            {
                MessageBox.Show("No seleccionaste materias para el proyecto");
                return false;
            }
            else
                return true;
        }

        protected void gvProfesor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ListBoxMaterias_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void ListBoxProfesor_SelectedIndexChanged(object sender, EventArgs e)
        {

        }



    }
}