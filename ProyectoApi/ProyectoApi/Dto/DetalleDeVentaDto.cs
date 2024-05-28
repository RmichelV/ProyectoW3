namespace ProyectoApi.Dto
{
    public class DetalleDeVentaDto
    {
        public int Id { get; set; }
        public int ProductoId { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioTotal { get; set; }
        public int VentaId { get; set; }
        // Puedes agregar más propiedades DTO si es necesario
    }
}
