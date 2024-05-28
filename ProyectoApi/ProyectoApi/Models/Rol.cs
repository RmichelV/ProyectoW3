using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Models
{
    public class Rol
    {
        [Key]
        public int Id { get; set; }
        public string Nombre { get; set; }

        // Navegación inversa
        public ICollection<Usuario> Usuarios { get; set; }
        public ICollection<RolMenu> RolMenus { get; set; }
    }
}
