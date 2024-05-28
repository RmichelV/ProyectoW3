namespace ProyectoApi.Dto
{
    public class ProductoDto
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int TipoDeProductoId { get; set; }
        public decimal PrecioUnitario { get; set; }
        public int Stock { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
