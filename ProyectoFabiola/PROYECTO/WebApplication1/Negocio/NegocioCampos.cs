using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using DGCCH.Comun;
using DGCCH.Datos;


namespace DGCCH.Negocio
{
    public class NegocioCampos
    {

        public NegocioCampos()
        { }

        //insertando Periodos
        public int AltaCampo(string Des_Corta, string Des_Larga)
        {
            DatoCampo DatCam = new DatoCampo();
            return DatCam.InsertCampo(Des_Corta, Des_Larga);
        }

        public int RELACION_CP(string Des_Corta, string Des_Larga, int ID_PERIODO)
        {
            DatoCampo DatoCP = new DatoCampo();
            return DatoCP.RELACION_CP(Des_Corta, Des_Larga, ID_PERIODO);
        }

        //obtener todos los Campos 
        public List<Campos> ObtenerCampos()
        {
            DatoCampo DatCam = new DatoCampo();
            return DatCam.select_All_Campos();
        }
   
    }
}