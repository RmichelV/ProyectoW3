using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class CarritoCreaDto
    {
        [Required]
        public int ProductoId { get; set; }

        [Required]
        public int UsuarioId { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
