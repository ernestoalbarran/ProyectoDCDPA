using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

using PCEPI.Comun;
using PCEPI.Datos;
using Comun;

namespace PCEPI.Negocio
{
    public class NegocioProyecto
    {
        public static int Insertar(Proyecto proyecto)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
                DBHelper.MakeParam("@Grupo", SqlDbType.Char,0,proyecto.Grupo),
                DBHelper.MakeParam("@Periodo", SqlDbType.Char,0,proyecto.Periodo),
                DBHelper.MakeParam("@Interarea", SqlDbType.Char,0,proyecto.Interarea),
                DBHelper.MakeParam("@Interplantel", SqlDbType.Char,0,proyecto.Interplantel),
                DBHelper.MakeParam("@P_asignatura", SqlDbType.Char,0,proyecto.P_asignatura),
                DBHelper.MakeParam("@Oficio", SqlDbType.Char,0,proyecto.Oficio),
                DBHelper.MakeParam("@Fecha_ev1", SqlDbType.Char,0,proyecto.Fecha_ev1),
                //DBHelper.MakeParam("@Fecha_ev1", SqlDbType.DateTime,0,proyecto.Fecha_ev1),
               // DBHelper.MakeParam("@Fecha_ev2", SqlDbType.DateTime,0,proyecto.Fecha_ev2),
                DBHelper.MakeParam("@Titulo", SqlDbType.VarChar,0,proyecto.Titulo),
                DBHelper.MakeParam("@Producto", SqlDbType.VarChar,0,proyecto.Producto),
                DBHelper.MakeParam("@Campo", SqlDbType.Char,0,proyecto.Campo),
                DBHelper.MakeParam("@Asignaturas", SqlDbType.VarChar,0,proyecto.Asignaturas),
                DBHelper.MakeParam("@Descripcion", SqlDbType.VarChar,0,proyecto.Descripcion),
                DBHelper.MakeParam("@Opinion_dir", SqlDbType.Char,0,proyecto.Opinion_dir),
                DBHelper.MakeParam("@Observaciones", SqlDbType.VarChar,0,proyecto.Observaciones),
                DBHelper.MakeParam("@values_insert", SqlDbType.VarChar, 0, proyecto.ValuesInsert)
            };

            return Convert.ToInt32(DBHelper.ExecuteScalar("usp_Insertar_Proyectogrupos1", dbParams));
        }



      /*  public static int Actualizar(Proyecto proyecto)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
               DBHelper.MakeParam("@Grupo", SqlDbType.Char,0,proyecto.Grupo),
                DBHelper.MakeParam("@Periodo", SqlDbType.Char,0,proyecto.Periodo),
                DBHelper.MakeParam("@Interarea", SqlDbType.Char,0,proyecto.Interarea),
                DBHelper.MakeParam("@Interplantel", SqlDbType.Char,0,proyecto.Interplantel),
                DBHelper.MakeParam("@P_asignatura", SqlDbType.Char,0,proyecto.P_asignatura),
                DBHelper.MakeParam("@Oficio", SqlDbType.Char,0,proyecto.Oficio),
                DBHelper.MakeParam("@Fecha_ev1", SqlDbType.DateTime,0,proyecto.Fecha_ev1),
                DBHelper.MakeParam("@Fecha_ev2", SqlDbType.DateTime,0,proyecto.Fecha_ev2),
                DBHelper.MakeParam("@Titulo", SqlDbType.VarChar,0,proyecto.Titulo),
                DBHelper.MakeParam("@Producto", SqlDbType.VarChar,0,proyecto.Producto),
                DBHelper.MakeParam("@Campo", SqlDbType.Char,0,proyecto.Campo),
                DBHelper.MakeParam("@Asignaturas", SqlDbType.VarChar,0,proyecto.Asignaturas),
                DBHelper.MakeParam("@Descripcion", SqlDbType.VarChar,0,proyecto.Descripcion),
                DBHelper.MakeParam("@Opinion_dir", SqlDbType.Char,0,proyecto.Opinion_dir),
                DBHelper.MakeParam("@Observaciones", SqlDbType.VarChar,0,proyecto.Observaciones)
            };
            return Convert.ToInt32(DBHelper.ExecuteScalar("usp_Actualizar_Proyecto", dbParams));
        }*/

        public static DataSet GetProyecto()
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
            };
            return DBHelper.ExecuteDataSet("usp_ListProyecto_GetProyecto", dbParams);
        }

        /*public static DataSet GetProyectoID(Proyecto proyecto)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
                DBHelper.MakeParam("@Id",SqlDbType.Int,0,proyecto.ID_PROYECTO)
            };
            return DBHelper.ExecuteDataSet("usp_ListProyecto_GetProyectoID", dbParams);
        }

        public static DataSet GetProyectoIDActualizar(Proyecto proyecto)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
                DBHelper.MakeParam("@Id",SqlDbType.Int,0,proyecto.ID_PROYECTO)
            };
            return DBHelper.ExecuteDataSet("usp_ListProyecto_GetProyectoIDActualizar", dbParams);
        }

        public static DataSet DeleteProyecto(Proyecto proyecto)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
                DBHelper.MakeParam("@Id",SqlDbType.Int,0,proyecto.ID_PROYECTO)
            };
            return DBHelper.ExecuteDataSet("usp_ListProyecto_DeleteProyecto", dbParams);
        }*/

        public static DataSet GetProfesor(ProfesorProyecto profesor, MateriaProyecto materia)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {   
                DBHelper.MakeParam("@ID_PLANTEL",SqlDbType.VarChar,0,profesor.ID_PLANTEL)

            };
            
            return DBHelper.ListarProfesores(profesor, materia);
        }

        public static DataSet GetProfesorActualizar(ProfesorProyecto profesorA, MateriaProyecto materiaA, Proyecto proyecto)
        {
           /* SqlParameter[] dbParams = new SqlParameter[]
            {   
                DBHelper.MakeParam("@ID_PLANTEL",SqlDbType.VarChar,0,profesorA.ID_PLANTEL)

            };*/

            return DBHelper.ListarProfesoresActualizar(profesorA, materiaA, proyecto);
        }

    }
}
