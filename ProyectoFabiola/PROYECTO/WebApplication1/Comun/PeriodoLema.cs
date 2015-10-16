using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    class PeriodoLema
    {
        public PeriodoLema()
        { }

        private int _ID_LEMA;

        public int ID_LEMA
        {
            get { return _ID_LEMA; }
            set { _ID_LEMA = value; }
        }
        private int _ID_PERIODO;

        public int ID_PERIODO
        {
            get { return _ID_PERIODO; }
            set { _ID_PERIODO = value; }
        }
        private int ID_AREA;

        public int ID_AREA1
        {
            get { return ID_AREA; }
            set { ID_AREA = value; }
        }
        private int _ID_PLANTEL;

        public int ID_PLANTEL
        {
            get { return _ID_PLANTEL; }
            set { _ID_PLANTEL = value; }
        }
        
         public PeriodoLema(int ID_LEMA, int ID_PERIODO, int ID_AREA, int ID_PLANTEL)
        {
            this.ID_LEMA = ID_LEMA;
            this.ID_PERIODO =ID_PERIODO;
            this.ID_AREA= ID_AREA;
            this.ID_PLANTEL = ID_AREA;
        }


    }
}
