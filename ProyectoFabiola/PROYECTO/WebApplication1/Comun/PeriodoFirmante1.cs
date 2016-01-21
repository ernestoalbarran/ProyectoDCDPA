using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
   public  class PeriodoFirmante1
    {
       public PeriodoFirmante1()
        {        }


       private int _ID_FIRMANTE1;
       public int ID_FIRMANTE1
       {
           get { return _ID_FIRMANTE1; }
           set { _ID_FIRMANTE1 = value; }
       }

       private int _ID_PLANTEL;
       public int ID_PLANTEL
       {
           get { return _ID_PLANTEL; }
           set { _ID_PLANTEL = value; }
       }

       private int _ID_AREA;
       public int ID_AREA
       {
           get { return _ID_AREA; }
           set { _ID_AREA = value; }
       }

       private int _ID_PERIODO;
       public int ID_PERIODO
       {
           get { return _ID_PERIODO; }
           set { _ID_PERIODO = value; }
       }

       public PeriodoFirmante1(int ID_FIRMANTE1, int ID_PLANTEL, int ID_AREA, int ID_PERIODO)
        {
            this.ID_FIRMANTE1 = ID_FIRMANTE1;
            this.ID_PERIODO =ID_PERIODO;
            this.ID_AREA= ID_AREA;
            this.ID_PLANTEL = ID_AREA;
        }

    }
}
