using System;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class UsuarioCreaDto
    {
        [Required]
        public string Nombre { get; set; }

        [Required]
        public string Apellido { get; set; }

        [Required]
        public DateTime FechaNacimiento { get; set; }

        [Required]
        public string Correo { get; set; }

        [Required]
        public string Contraseña { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
