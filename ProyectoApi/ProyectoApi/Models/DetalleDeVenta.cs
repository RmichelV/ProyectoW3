using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ProyectoApi.Models
{
    public class DetalleDeVenta
    {
        [Key]
        public int Id { get; set; }

        [ForeignKey("Producto")]
        public int ProductoId { get; set; }
        public Producto Producto { get; set; }

        [Required]
        public int Cantidad { get; set; }

        [Required]
        [Column(TypeName = "decimal(10, 2)")]
        public decimal PrecioTotal { get; set; }

        [ForeignKey("Venta")]
        public int VentaId { get; set; }
        public Venta Venta { get; set; }
    }
}
