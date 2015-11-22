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

        //obtener todos los lemas 
        public List<Campos> ObtenerCampos()
        {
            DatoCampo DatCam = new DatoCampo();
            return DatCam.select_All_Campos();
        }
   
    }
}