using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class ProveedorCreaDto
    {
        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Direccion { get; set; }

        [Required]
        public string Telefono { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
