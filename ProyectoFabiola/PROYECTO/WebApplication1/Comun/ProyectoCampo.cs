using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    public class ProyectoCampo
    {
        //Agregar IDProyecto al final 
        private int _Id_Proyecto;

        public int Id_Proyecto
        {
            get { return _Id_Proyecto; }
            set { _Id_Proyecto = value; }
        }

        public ProyectoCampo(int Id_Proyecto)
        {
            this.Id_Proyecto = Id_Proyecto;
        }

        public ProyectoCampo()
        {
            // TODO: Complete member initialization
        }
    }
}
