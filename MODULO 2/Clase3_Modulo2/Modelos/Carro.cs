using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Clase3_Modulo2.Models
{
    public class Carro
    {
        public int Id{ get; set; }

        [Required]
        public String Color{ get; set; }

        [MaxLength(100)]
        public String Marca { get; set; }

        [Display(Name = "Fecha Venta")]
        public DateTime FechaVenta { get; set; }

        [Display(Name = "Esta Vendido")]
        public bool Vendido { get; set; }

    }
}