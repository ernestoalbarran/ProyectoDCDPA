using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data.Common;
using System.Data;
using PCEPI.Comun;
using System.Data.SqlClient;

namespace PCEPI.Datos
{
   public class DatoMateriaP
    {
      /* public static string constr
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ConnectionString; }
        }

        public static string Provider
        {
            get { return ConfigurationManager.ConnectionStrings["Conn"].ProviderName; }
        }

        public static System.Data.Common.DbProviderFactory dpf
        {
            get { return DbProviderFactories.GetFactory(Provider); }
        }

        private static int ejecutaNonQuery(string StoredProcedure, List<DbParameter> parametros)
        {
            int Id = 0;
            SqlConnection conn = new SqlConnection();
            try
            {
                using (conn)
                {
                    conn.ConnectionString = constr;

                    //usar la conexion 
                    using (DbCommand cmd = dpf.CreateCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = StoredProcedure;
                        //almacena el procedimiento generado
                        cmd.CommandType = CommandType.StoredProcedure;

                        foreach (DbParameter param in parametros)
                            cmd.Parameters.Add(param);
                        conn.Open();
                        Id = cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                conn.Close();
            }

            return Id;
        }

        public List<Materias> ObtenerMaterias(string StoredProcedure, int id_materia, List<DbParameter> parametros)
        {
            List<Materias> LstMat = new List<Materias>();
            using (DbConnection con = dpf.CreateConnection())
            {
                con.ConnectionString = constr;
                using (DbCommand cmd = dpf.CreateCommand())
                {
                    cmd.Connection = con;
                    cmd.CommandText = StoredProcedure;
                    cmd.CommandType = CommandType.StoredProcedure;
                    con.Open();

                    foreach (DbParameter param in parametros)
                        cmd.Parameters.Add(param);
                    
                    using (DbDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            LstMat.Add(new Materias(id_materia, (string)dr["MATERIA40"]));
                        }

                    }
                }
            }
            return LstMat;
        }

        public List<Materias> Materia(int ID_AREA)
        {
            List<DbParameter> parametros = new List<DbParameter>();

            DbParameter paramMateria= dpf.CreateParameter();
            paramMateria.Value =ID_AREA;
            paramMateria.ParameterName = "ID_AREA";
            parametros.Add(paramMateria);


            return ObtenerMaterias("MATERIAS", ID_AREA, parametros);
        }
       */
    }
}
