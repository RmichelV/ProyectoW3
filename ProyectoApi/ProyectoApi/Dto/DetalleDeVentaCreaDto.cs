using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class DetalleDeVentaCreaDto
    {
        [Required]
        public int ProductoId { get; set; }

        [Required]
        public int Cantidad { get; set; }

        [Required]
        public decimal PrecioTotal { get; set; }

        [Required]
        public int VentaId { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
