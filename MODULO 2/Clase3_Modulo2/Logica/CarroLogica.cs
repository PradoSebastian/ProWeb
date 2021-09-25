using Clase3_Modulo2.Models;
using Repositorio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Logica
{
    public class CarroLogica
    {
        public List<Carro> ObtenerCarros()
        {
            var repositorio = new CarroRepositorio();
            return repositorio.ObtenerCarros();
        }
    }
}
