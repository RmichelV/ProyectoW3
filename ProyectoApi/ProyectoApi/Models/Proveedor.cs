using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Models
{
    public class Proveedor
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        [Required]
        [MaxLength(255)]
        public string Direccion { get; set; }

        [Required]
        [MaxLength(20)]
        public string Telefono { get; set; }

        // Relación uno a muchos con ProductoProveedor
        public ICollection<ProductoProveedor> ProductoProveedores { get; set; }
    }
}
