using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCEPI.Comun
{
    public class MateriaProyecto
    {
        private String _ID_MATERIA;

        public String ID_MATERIA
        {
            get { return _ID_MATERIA; }
            set { _ID_MATERIA = value; }
        }
        private int _AREA;

        public int AREA
        {
            get { return _AREA; }
            set { _AREA = value; }
        }
        private String _MATERIA40;

        public String MATERIA40
        {
            get { return _MATERIA40; }
            set { _MATERIA40 = value; }
        }

        public MateriaProyecto() { }
        public MateriaProyecto(string ID_MATERIA, int AREA, string MATERIA40) 
        {
            this.ID_MATERIA = ID_MATERIA;
            this.AREA = AREA;
            this.MATERIA40 = MATERIA40;
        }
    }
}
