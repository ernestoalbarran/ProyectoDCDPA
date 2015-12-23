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
   public class NegocioProyectoLabels
    {
        public NegocioProyectoLabels()
        { }

        public static DataSet LabelsProyecto(ProyectoLabels ProyectoLabels)
        {
            SqlParameter[] dbParams = new SqlParameter[]
            {
                DBHelper.MakeParam("@PERIODO", SqlDbType.Char,0,ProyectoLabels.PERIODO),
                 DBHelper.MakeParam("@PLANTEL", SqlDbType.Char,0,ProyectoLabels.PLANTEL),
                  DBHelper.MakeParam("@ID_AREA", SqlDbType.Char,0,ProyectoLabels.ID_AREA),
                  DBHelper.MakeParam("@Fecha", SqlDbType.Char,0,ProyectoLabels.Fecha),
                  DBHelper.MakeParam("@Grupo", SqlDbType.Char,0,ProyectoLabels.Grupo)
            };

            return DBHelper.ExecuteDataSet("usp_Obtener_FechaEv_NumGrupo", dbParams);
            


        }

    }
}
