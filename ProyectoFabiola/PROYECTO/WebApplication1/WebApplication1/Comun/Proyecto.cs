using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace PCEPI.Comun
{
    public class Proyecto
    {
        private int _ID_PROYECTO;

        public int ID_PROYECTO
        {
            get { return _ID_PROYECTO; }
            set { _ID_PROYECTO = value; }
        }
        private string _PLANTEL;

        public string PLANTEL
        {
            get { return _PLANTEL; }
            set { _PLANTEL = value; }
        }
        private string _PERIODO;

        public string PERIODO
        {
            get { return _PERIODO; }
            set { _PERIODO = value; }
        }
        private int _ID_AREA;

        public int ID_AREA
        {
            get { return _ID_AREA; }
            set { _ID_AREA = value; }
        }
        private string _NUM_OFICIO;

        public string NUM_OFICIO
        {
            get { return _NUM_OFICIO; }
            set { _NUM_OFICIO = value; }
        }
        private DateTime _FECHA_EVAL;

        public DateTime FECHA_EVAL
        {
            get { return _FECHA_EVAL; }
            set { _FECHA_EVAL = value; }
        }
        private string _TITULO;

        public string TITULO
        {
            get { return _TITULO; }
            set { _TITULO = value; }
        }
        private string _PRODUCTO;

        public string PRODUCTO
        {
            get { return _PRODUCTO; }
            set { _PRODUCTO = value; }
        }
        private string _CAMPO;

        public string CAMPO
        {
            get { return _CAMPO; }
            set { _CAMPO = value; }
        }
        private string _MATERIA;

        public string MATERIA
        {
            get { return _MATERIA; }
            set { _MATERIA = value; }
        }
        private string _DESCRIPCION_PROY;

        public string DESCRIPCION_PROY
        {
            get { return _DESCRIPCION_PROY; }
            set { _DESCRIPCION_PROY = value; }
        }
        private string _OPINION_DIR;

        public string OPINION_DIR
        {
            get { return _OPINION_DIR; }
            set { _OPINION_DIR = value; }
        }
        private string _OBSERVACIONES;

        public string OBSERVACIONES
        {
            get { return _OBSERVACIONES; }
            set { _OBSERVACIONES = value; }
        }
        private string _PROFESOR;

        public string PROFESOR
        {
            get { return _PROFESOR; }
            set { _PROFESOR = value; }
        }

        public Proyecto() { }

        public Proyecto(int ID_PROYECTO, string PLANTEL, string PERIODO, int ID_AREA, string NUM_OFICIO, DateTime FECHA_EVAL, string TITULO,  string PRODUCTO, string _MATERIA, string CAMPO, string DESCRIPCION_PROY, string OPINION_DIR, string OBSERVACIONES, string PROFESOR)
        {
            this.ID_PROYECTO = ID_PROYECTO;
            this.PLANTEL = PLANTEL;
            this.PERIODO = PERIODO;
            this.ID_AREA = ID_AREA;
            this.NUM_OFICIO = NUM_OFICIO;
            this.FECHA_EVAL = FECHA_EVAL;
            this.TITULO = TITULO;
            this.PRODUCTO = PRODUCTO;
            this.CAMPO = CAMPO;
            this.MATERIA = MATERIA;
            this.DESCRIPCION_PROY = DESCRIPCION_PROY;
            this.OPINION_DIR = OPINION_DIR;
            this.OBSERVACIONES = OBSERVACIONES;
            this.PROFESOR = PROFESOR;

 
        }
     }
}
