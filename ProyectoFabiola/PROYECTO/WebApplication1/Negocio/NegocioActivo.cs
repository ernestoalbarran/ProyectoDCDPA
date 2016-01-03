using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


using Comun;
using Datos;


namespace Negocio
{
    public class NegocioActivo
    {
        public NegocioActivo()
        { }

        //obtener los activos
        public String select_escalar(String periodoletra)
        {
            DatoActivo DatAct = new DatoActivo();
            return DatAct.select_escalar(periodoletra);
        }
   
    }
}
