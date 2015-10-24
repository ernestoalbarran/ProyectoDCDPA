using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using PCEPI.Comun;
using PCEPI.Datos;

namespace PCEPI.Negocio
{
    public class NegocioLemas
    {
        public NegocioLemas()
        { }

        //Insertar lemas en la tabla con el respectivo query para el diseño respectivo
        //si se cambia la tabla de insercion 
        public int AltaLema(string titulo, string descripcion)
        {
            DatoLemas DatLema = new DatoLemas();
            return DatLema.InsertLema(titulo, descripcion);
        }

        public int RELACION_LP(string titulo, string descripcion, int ID_PERIODO)
        {
            DatoLemas DatoPL = new DatoLemas();
            return DatoPL.RELACION_LP(titulo, descripcion, ID_PERIODO);
        }
        //obtener todos los lemas 
        public List<LemasPCEPI> ObtenerLemas()
        {
            DatoLemas DatLem = new DatoLemas();
            return DatLem.select_All_Lemas();

        }

       
    }
}