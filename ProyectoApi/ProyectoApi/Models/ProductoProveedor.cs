using System.ComponentModel.DataAnnotations.Schema;

namespace ProyectoApi.Models
{
    public class ProductoProveedor
    {
        // No hay necesidad de una propiedad Id en este caso

        // Llaves foráneas
        [ForeignKey("Producto")]
        public int ProductoId { get; set; }
        public Producto Producto { get; set; }

        [ForeignKey("Proveedor")]
        public int ProveedorId { get; set; }
        public Proveedor Proveedor { get; set; }
    }
}
