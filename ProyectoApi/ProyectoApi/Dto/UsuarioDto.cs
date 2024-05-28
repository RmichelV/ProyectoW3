using System;

namespace ProyectoApi.Dto
{
    public class UsuarioDto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public DateTime FechaNacimiento { get; set; }
        public string Correo { get; set; }
        public string Contraseña { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
