using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class ComentarioCreaDto
    {
        [Required]
        public int UsuarioId { get; set; }

        [Required]
        public int ProductoId { get; set; }

        [Required]
        public string Contenido { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
