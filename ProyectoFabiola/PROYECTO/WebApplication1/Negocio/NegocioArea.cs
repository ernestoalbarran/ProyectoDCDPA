using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Comun;
using Datos;

namespace Negocio
{
    public class NegocioArea
    {
        public NegocioArea()
        { }

        //obtener los activos
        public String Obtener_Area(int Id_Area)
        {
            DatoArea DatArea = new DatoArea();
            return DatArea.Obtener_Area(Id_Area);
        }
   
    }
}
