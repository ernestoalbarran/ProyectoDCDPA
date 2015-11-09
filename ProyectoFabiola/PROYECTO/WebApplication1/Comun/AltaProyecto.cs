using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Comun
{
    class AltaProyecto
    {
        public AltaProyecto()
        {        }

        private int _ID_PROYECTO_GRUPO;
        public int ID_PROYECTO_GRUPO
        {
            get { return _ID_PROYECTO_GRUPO; }
            set { _ID_PROYECTO_GRUPO = value; }
        }

        private char _GRUPO;
        public char GRUPO
        {
            get { return _GRUPO; }
            set { _GRUPO = value; }
        }

        private bool _INTERAREA;
        public bool INTERAREA
        {
            get { return _INTERAREA; }
            set { _INTERAREA = value; }
        }


        private bool _INTERPLANTEL;
        public bool INTERPLANTEL
        {
            get { return _INTERPLANTEL; }
            set { _INTERPLANTEL = value; }
        }

        
         private bool _PROFESOR_ASIGNATURA;
         public bool PROFESOR_ASIGNATURA
         {
             get { return _PROFESOR_ASIGNATURA; }
             set { _PROFESOR_ASIGNATURA = value; }
        }

         private char _OFICIO;
         public char OFICIO
         {
              get { return _OFICIO; }
             set { _OFICIO = value; }
        }

         private DateTime _FECHA_EVALUACION;
         public DateTime FECHA_EVALUACION
              {
              get { return _FECHA_EVALUACION; }
             set { _FECHA_EVALUACION = value; }
        }

         private string _TITULO;
        public string TITULO
            {
              get { return _TITULO; }
             set { _TITULO= value; }
        }

        private string _PRODUCTO;
        public string PRODUCTO
        {
              get { return _PRODUCTO; }
             set { _PRODUCTO= value; }
        }


        private int _ID_CAMPO;
        public int ID_CAMPO
        {
              get { return _ID_CAMPO; }
             set {_ID_CAMPO= value; }
        }

        private char _ID_MATERIA;
        public char ID_MATERIA
            {
              get { return _ID_MATERIA; }
             set {_ID_MATERIA= value; }
        }

        private string _DESCRIPCION;
        public string DESCRIPCION
            {
              get { return _DESCRIPCION; }
             set {_DESCRIPCION= value; }
        }

        private string _ID_OPINION_DIRECTOR ;
        public string ID_OPINION_DIRECTOR
             {
              get { return _ID_OPINION_DIRECTOR; }
             set {_ID_OPINION_DIRECTOR= value; }
        }

         private string _OBSERVACIONES;
         public string OBSERVACIONES
              {
              get { return  _OBSERVACIONES; }
             set { _OBSERVACIONES= value; }
        }

        private char _IP_USUARIO;
        public char IP_USUARIO
            {
              get { return _IP_USUARIO; }
             set {_IP_USUARIO= value; }
        }

        
        
        private string _ID_USUARIO;
        public string ID_USUARIO
        {
            get { return _ID_USUARIO;}
            set { _ID_USUARIO = value; }
        }


        private DateTime _FECHA_REGISTRO;
        public DateTime FECHA_REGISTRO
        {
            get{return _FECHA_REGISTRO;}
            set { _FECHA_REGISTRO=value; }
        }

        private bool _FIRMA;
        public bool FIRMA
    {
        get { return _FIRMA;}
        set { _FIRMA=value;}

    }


        public AltaProyecto(int ID_PROYECTO_GRUPO, char GRUPO, bool INTERAREA, bool INTERPLANTEL, bool PROFESOR_ASIGNATURA, char OFICIO, DateTime FECHA_EVALUACION,
            string TITULO, string PRODUCTO, int ID_CAMPO, char ID_MATERIA, string DESCRIPCION, string ID_OPINION_DIRECTOR, string OBSERVACIONES,
           char IP_USUARIO, string ID_USUARIO, DateTime FECHA_REGISTRO, bool FIRMA)
        {
            this.ID_PROYECTO_GRUPO = ID_PROYECTO_GRUPO;
            this.GRUPO = GRUPO;
            this.INTERAREA = INTERAREA;
            this.INTERPLANTEL = INTERPLANTEL;
            this.PROFESOR_ASIGNATURA = PROFESOR_ASIGNATURA;
             this.OFICIO =OFICIO ;
             this.FECHA_EVALUACION = FECHA_EVALUACION;
             this.TITULO =TITULO ;
             this.PRODUCTO =PRODUCTO ;
             this.ID_CAMPO =ID_CAMPO ;
             this.ID_MATERIA = ID_MATERIA;
             this.DESCRIPCION=DESCRIPCION ;
             this.ID_OPINION_DIRECTOR =ID_OPINION_DIRECTOR ;
            this.OBSERVACIONES =OBSERVACIONES ;
            this.IP_USUARIO = IP_USUARIO;
            this.ID_USUARIO =ID_USUARIO ;
             this.FECHA_REGISTRO =FECHA_REGISTRO ;
             this.FIRMA = FIRMA;

        }








    }
}
