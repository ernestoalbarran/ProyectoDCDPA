using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Comun;
using Datos;

namespace Negocio
{
    public class NegocioPlantel
    {

        public NegocioPlantel()
        { }

        //obtener los activos
        public String Obtener_Plantel(int Id_Plantel)
        {
            DatoPlantel DatPlan = new DatoPlantel();
            return DatPlan.Obtener_Plantel(Id_Plantel);
        }
    }
}
