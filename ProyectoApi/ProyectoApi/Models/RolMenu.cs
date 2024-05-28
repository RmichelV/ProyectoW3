using System.ComponentModel.DataAnnotations.Schema;

namespace ProyectoApi.Models
{
    public class RolMenu
    {
        [ForeignKey("Rol")]
        public int RolId { get; set; }
        public Rol Rol { get; set; }

        [ForeignKey("Menu")]
        public int MenuId { get; set; }
        public Menu Menu { get; set; }
    }
}
