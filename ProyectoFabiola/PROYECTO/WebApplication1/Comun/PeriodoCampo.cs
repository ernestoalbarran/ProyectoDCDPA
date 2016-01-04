using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    class PeriodoCampo
    {

         public PeriodoCampo()
        { }

        private int _IDCampo;

        public int IDCampo
        {
            get { return _IDCampo; }
            set { _IDCampo = value; }
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
        
         public PeriodoCampo(int IDCampo, int ID_PERIODO, int ID_AREA, int ID_PLANTEL)
        {
            this.IDCampo = IDCampo;
            this.ID_PERIODO =ID_PERIODO;
            this.ID_AREA= ID_AREA;
            this.ID_PLANTEL = ID_AREA;
        }


    }
}
