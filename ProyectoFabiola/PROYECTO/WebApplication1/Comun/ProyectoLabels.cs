using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace PCEPI.Comun
{
   public class ProyectoLabels
    {
        private String _Fecha;

        public String Fecha
        {
            get { return _Fecha; }
            set { _Fecha = value; }
        }
        private String _Grupo;

        public String Grupo
        {
            get { return _Grupo; }
            set { _Grupo = value; }
        }

        private String _PERIODO;

        public String PERIODO
        {
            get { return _PERIODO; }
            set { _PERIODO = value; }
        }
        private String _PLANTEL;

        public String PLANTEL
        {
            get { return _PLANTEL; }
            set { _PLANTEL = value; }
        }
        private String _ID_AREA;

        public String ID_AREA
        {
            get { return _ID_AREA; }
            set { _ID_AREA = value; }
        }


        public ProyectoLabels() { }
        
        public ProyectoLabels(String PERIODO, String PLANTEL, String ID_AREA,String Fecha, String Grupo)
        {
            this.PERIODO = PERIODO;
            this.PLANTEL = PLANTEL;
            this.ID_AREA = ID_AREA;
            this.Fecha = Fecha;
            this.Grupo = Grupo;
        }

        public ProyectoLabels(String PERIODO, String PLANTEL, String ID_AREA)
        {
            this.PERIODO = PERIODO;
            this.PLANTEL = PLANTEL;
            this.ID_AREA = ID_AREA;
        }

        public ProyectoLabels(String Fecha, String Grupo) 
        {
            this.Fecha=Fecha;
            this.Grupo=Grupo;
        }
    }
}
