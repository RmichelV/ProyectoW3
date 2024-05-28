using System;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Dto
{
    public class VentaCreaDto
    {
        [Required]
        public int UsuarioId { get; set; }

        [Required]
        public DateTime Fecha { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
