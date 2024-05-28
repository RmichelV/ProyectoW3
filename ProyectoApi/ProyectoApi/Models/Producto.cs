using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProyectoApi.Models
{
    public class Producto
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [MaxLength(255)]
        public string Nombre { get; set; }

        [ForeignKey("TipoDeProducto")]
        public int TipoDeProductoId { get; set; }
        public TipoDeProducto TipoDeProducto { get; set; }

        [Required]
        [Column(TypeName = "decimal(10, 2)")]
        public decimal PrecioUnitario { get; set; }

        [Required]
        public int Stock { get; set; }

        // Relación uno a muchos con ProductoProveedor
        public ICollection<ProductoProveedor> ProductoProveedores { get; set; }

        // Relación uno a muchos con Comentario
        public ICollection<Comentario> Comentarios { get; set; }

        // Relación uno a muchos con DetalleDeVenta
        public ICollection<DetalleDeVenta> DetallesDeVenta { get; set; }

        // Relación uno a muchos con Carrito
        public ICollection<Carrito> Carritos { get; set; }
    }
}
