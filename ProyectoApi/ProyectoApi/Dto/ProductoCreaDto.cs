using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class ProductoCreaDto
    {
        [Required]
        public string Nombre { get; set; }

        [Required]
        public int TipoDeProductoId { get; set; }

        [Required]
        public decimal PrecioUnitario { get; set; }

        [Required]
        public int Stock { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
