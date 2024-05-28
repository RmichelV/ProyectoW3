using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Models
{
    public class TipoDeProducto
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        // Relación uno a muchos con Producto
        public ICollection<Producto> Productos { get; set; }
    }
}
