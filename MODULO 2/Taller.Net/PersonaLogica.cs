using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Taller.Net
{
    class PersonaLogica
    {
        private List<Persona> Personas { get; set; }

        public PersonaLogica()
        {
            Personas = new List<Persona>();
        }

        public void AgregarPersona(String nombre, String apellido, int identificacion, int edad, Boolean esCliente)
        {
            Persona p = new Persona(nombre, apellido, identificacion, edad, esCliente);
            Personas.Add(p);
        }

        public List<Persona> GetPersonas()
        {
            return Personas;
        }
    }
}
