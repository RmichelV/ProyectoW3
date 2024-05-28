namespace ProyectoApi.Dto
{
    public class ComentarioDto
    {
        public int Id { get; set; }
        public int UsuarioId { get; set; }
        public int ProductoId { get; set; }
        public string Contenido { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
