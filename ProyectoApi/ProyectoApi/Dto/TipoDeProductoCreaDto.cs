using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class TipoDeProductoCreaDto
    {
        [Required]
        public string Nombre { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
