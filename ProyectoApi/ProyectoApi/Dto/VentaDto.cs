using System;

namespace ProyectoApi.Dto
{
    public class VentaDto
    {
        public int Id { get; set; }
        public int UsuarioId { get; set; }
        public DateTime Fecha { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
