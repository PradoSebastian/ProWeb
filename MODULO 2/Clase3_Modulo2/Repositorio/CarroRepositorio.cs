using Clase3_Modulo2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositorio
{
    public class CarroRepositorio
    {
        public List<Carro> ObtenerCarros()
        {

            //Consulta Base de Datos

            var listadoCarro = new List<Carro>();
            var carro = new Carro
            {
                Color = "rojo",
                Marca = "Chevrolet",
                Id = 1,
                Vendido = true,
                FechaVenta = DateTime.Now
            };

            listadoCarro.Add(carro);

            carro = new Carro
            {
                Color = "azul",
                Marca = "Mercedes Benz",
                Id = 2,
                Vendido = true,
                FechaVenta = DateTime.Now
            };

            listadoCarro.Add(carro);
            return listadoCarro;
        }
    }
}
