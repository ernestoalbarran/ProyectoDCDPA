using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PCEPI.Datos;
using System.Data.SqlClient;
using System.Data;

namespace PCEPI.Negocio
{
    public class Profesor
    {

        public bool profesorCarrera(string rfc)
        {
            DBHelper dbHelper = new DBHelper();

            SqlParameter[] parametros = new SqlParameter[1];
            SqlParameter parRFC = new SqlParameter("@rfc", rfc);
            parametros[0] = parRFC;

            if (DBHelper.ExecuteScalar("sp_profesor_carrera", parametros).ToString() == "1")
                return true;
            else
                return false;
        }

        public bool validaProfesor(string rfc, int Id_Proyecto)
        {
            DBHelper dbHelper= new DBHelper();
            SqlParameter[] parametros = new SqlParameter[2];
            SqlParameter yaEnProy = new SqlParameter("@rfc", rfc);
            SqlParameter Id_proy = new SqlParameter("@Id_Proyecto", Id_Proyecto);
            parametros[0] = yaEnProy;
            parametros[1] = Id_proy;

            if (DBHelper.ExecuteScalar("usp_verificar_profesor", parametros).ToString() == "1")
                return true;
            else
                return false;

        }

        public DataSet consultarPerfiles()
        {
            DBHelper dbHelper = new DBHelper();

            SqlParameter[] parametros = new SqlParameter[]
            {
            };

            return DBHelper.ExecuteDataSet("sp_consultar_perfiles", parametros);
        }
    }
}
