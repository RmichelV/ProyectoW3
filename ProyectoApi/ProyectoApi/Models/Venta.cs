using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProyectoApi.Models
{
    public class Venta
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Usuario")]
        public int UsuarioId { get; set; }
        public Usuario Usuario { get; set; }

        [Required]
        public DateTime Fecha { get; set; }

        // Relación uno a muchos con DetalleDeVenta
        public ICollection<DetalleDeVenta> DetallesDeVenta { get; set; }
    }
}
