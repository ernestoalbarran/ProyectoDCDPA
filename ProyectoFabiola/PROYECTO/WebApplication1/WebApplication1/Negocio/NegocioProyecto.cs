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
                DBHelper.MakeParam("@PLANTEL", SqlDbType.VarChar,0,proyecto.PLANTEL),
                DBHelper.MakeParam("@PERIODO", SqlDbType.VarChar,0,proyecto.PERIODO),
                DBHelper.MakeParam("@ID_AREA", SqlDbType.Int,0,proyecto.ID_AREA),
                DBHelper.MakeParam("@NUM_OFICIO", SqlDbType.VarChar,0,proyecto.NUM_OFICIO),
                DBHelper.MakeParam("@FECHA_EVAL", SqlDbType.DateTime,0,proyecto.FECHA_EVAL),
                DBHelper.MakeParam("@TITULO", SqlDbType.VarChar,0,proyecto.TITULO),
                DBHelper.MakeParam("@PRODUCTO", SqlDbType.VarChar,0,proyecto.PRODUCTO),
                DBHelper.MakeParam("@CAMPO", SqlDbType.VarChar,0,proyecto.CAMPO),
                DBHelper.MakeParam("@MATERIA", SqlDbType.Char,0,proyecto.MATERIA),
                DBHelper.MakeParam("@DESCRIPCION_PROY", SqlDbType.VarChar,0,proyecto.DESCRIPCION_PROY),
                DBHelper.MakeParam("@OPINION_DIR", SqlDbType.VarChar,0,proyecto.OPINION_DIR),
                DBHelper.MakeParam("@OBSERVACIONES", SqlDbType.VarChar,0,proyecto.OBSERVACIONES),
                DBHelper.MakeParam("@PROFESOR", SqlDbType.Char,0,proyecto.PROFESOR)

            };

        return Convert.ToInt32(DBHelper.ExecuteScalar("usp_AltaProyecto_Insertar",dbParams));
        }

        public static DataSet GetProyecto()
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
            };
            return DBHelper.ExecuteDataSet("usp_ListProyecto_GetProyecto", dbParams);
        }

        public static DataSet GetProyectoID(Proyecto proyecto)
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
        }
    }
}
