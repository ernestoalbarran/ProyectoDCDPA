using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace PCEPI.Comun
{
    public class Proyecto
    {
        private String _grupo;

        public String Grupo
        {
            get { return _grupo; }
            set { _grupo = value; }
        }
        private String _periodo;

        public String Periodo
        {
            get { return _periodo; }
            set { _periodo = value; }
        }
        private String _interarea;

        public String Interarea
        {
            get { return _interarea; }
            set { _interarea = value; }
        }
        private String _interplantel;

        public String Interplantel
        {
            get { return _interplantel; }
            set { _interplantel = value; }
        }
        private String _p_asignatura;

        public String P_asignatura
        {
            get { return _p_asignatura; }
            set { _p_asignatura = value; }
        }
        private String _oficio;

        public String Oficio
        {
            get { return _oficio; }
            set { _oficio = value; }
        }
        private DateTime _fecha_ev1;

        public DateTime Fecha_ev1
        {
            get { return _fecha_ev1; }
            set { _fecha_ev1 = value; }
        }
        private DateTime _fecha_ev2;

        public DateTime Fecha_ev2
        {
            get { return _fecha_ev2; }
            set { _fecha_ev2 = value; }
        }
        private String _titulo;

        public String Titulo
        {
            get { return _titulo; }
            set { _titulo = value; }
        }
        private String _producto;

        public String Producto
        {
            get { return _producto; }
            set { _producto = value; }
        }
        private String _campo;

        public String Campo
        {
            get { return _campo; }
            set { _campo = value; }
        }
        private String _asignaturas;

        public String Asignaturas
        {
            get { return _asignaturas; }
            set { _asignaturas = value; }
        }
        private String _descripcion;

        public String Descripcion
        {
            get { return _descripcion; }
            set { _descripcion = value; }
        }
        private String _opinion_dir;

        public String Opinion_dir
        {
            get { return _opinion_dir; }
            set { _opinion_dir = value; }
        }
        private String _observaciones;

        public String Observaciones
        {
            get { return _observaciones; }
            set { _observaciones = value; }
        }
       /* private String _donde;

        public String Donde
        {
            get { return _donde; }
            set { _donde = value; }
        }
        private String _quien;

        public String Quien
        {
            get { return _quien; }
            set { _quien = value; }
        }
        private DateTime _cuando;

        public DateTime Cuando
        {
            get { return _cuando; }
            set { _cuando = value; }
        }
        private String _firma;

        public String Firma
        {
            get { return _firma; }
            set { _firma = value; }
        }*/

        public Proyecto() { }

        public Proyecto(String Grupo, String Periodo, String Interarea, String Interplantel, String P_asignatura, String Oficio, DateTime Fecha_ev1, DateTime Fecha_ev2, String Titulo, String Producto, String Campo, String Asignaturas, String Descripcion, String Opinion_dir, String Observaciones)
        {
            this.Grupo = Grupo;
            this.Periodo = Periodo;
            this.Interarea = Interarea;
            this.Interplantel = Interplantel;
            this.P_asignatura = P_asignatura;
            this.Oficio = Oficio;
            this.Fecha_ev1 = Fecha_ev1;
            this.Fecha_ev2 = Fecha_ev2;
            this.Titulo = Titulo;
            this.Producto = Producto;
            this.Campo = Campo;
            this.Asignaturas = Asignaturas;
            this.Descripcion = Descripcion;
            this.Opinion_dir = Opinion_dir;
            this.Observaciones = Observaciones;


        }
    }
}
