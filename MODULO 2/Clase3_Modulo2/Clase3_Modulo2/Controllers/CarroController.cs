using Clase3_Modulo2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Clase3_Modulo2.Controllers
{
    public class CarroController : Controller
    {
        // GET: Carro
        public ActionResult Index()
        {
            var listadoCarro = new List<Carro>();
            var carro = new Carro
            {
                Color = "rojo",
                Marca = "Chevrolet",
                Id= 1,
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

            return View("Index", listadoCarro);
        }
    }
}