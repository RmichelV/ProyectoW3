using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Models
{
    public class Usuario
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        [Required]
        [MaxLength(255)]
        public string Apellido { get; set; }

        [Required]
        public DateTime FechaNacimiento { get; set; }

        [Required]
        [MaxLength(255)]
        public string Correo { get; set; }

        [Required]
        [MaxLength(255)]
        public string Contraseña { get; set; }

        // Relación con Rol
        public int RolId { get; set; }
        public Rol Rol { get; set; }

        // Relación uno a muchos con Comentario
        public ICollection<Comentario> Comentarios { get; set; }

        // Relación uno a muchos con Carrito
        public ICollection<Carrito> Carritos { get; set; }

        // Relación uno a muchos con Venta
        public ICollection<Venta> Ventas { get; set; }
    }
}
