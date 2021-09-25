using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Taller.Net
{
    class Persona
    {
        public String Nombre { get; set; }

        public String Apellido { get; set; }

        public int Identificacion { get; set; }

        public int Edad { get; set; }

        public Boolean EsCliente { get; set; }

        public DateTime FechaHoraRegistro { get; set; }

        public Persona(String nombre, String apellido, int identificacion, int edad, Boolean esCliente)
        {
            this.Nombre = nombre;
            this.Apellido = apellido;
            this.Identificacion = identificacion;
            this.Edad = edad;
            this.EsCliente = esCliente;
            this.FechaHoraRegistro = DateTime.Now;
        }

    }
}
