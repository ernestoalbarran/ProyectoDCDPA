using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
   public class Area
    {

        public Area()
        {        }

        private int _ID_AREA;

        public int ID_AREA
        {
            get { return _ID_AREA; }
            set { _ID_AREA = value; }
        }
        private string _NOMBRE_CORTO;

        public string NOMBRE_CORTO
        {
            get { return _NOMBRE_CORTO; }
            set { _NOMBRE_CORTO = value; }
        }
        private string _NOMBRE_LARGO;

        public string NOMBRE_LARGO
        {
            get { return _NOMBRE_LARGO; }
            set { _NOMBRE_LARGO = value; }
        }


        public Area(int ID_AREA, string NOMBRE_CORTO, string NOMBRE_LARGO)
        {
            this.ID_AREA = ID_AREA;
            this.NOMBRE_CORTO= NOMBRE_CORTO;
            this.NOMBRE_LARGO = NOMBRE_LARGO;
        }

    }
}
