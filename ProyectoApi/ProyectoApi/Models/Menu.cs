using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ProyectoApi.Models
{
    public class Menu
    {
        [Key]
        public int Id { get; set; }
        public string Nombre { get; set; }

        // Navegación inversa
        public ICollection<RolMenu> RolMenus { get; set; }
    }
}
