using Microsoft.EntityFrameworkCore;
using ProyectoApi.Models;

namespace ProyectoApi.Datos
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        // Define tus DbSets para cada una de tus entidades aquí
        public DbSet<Menu> Menus { get; set; }
        public DbSet<Rol> Roles { get; set; }
        public DbSet<RolMenu> RolMenus { get; set; }
        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Proveedor> Proveedores { get; set; }
        public DbSet<TipoDeProducto> TiposDeProducto { get; set; }
        public DbSet<Producto> Productos { get; set; }
        public DbSet<ProductoProveedor> ProductosProveedores { get; set; }
        public DbSet<Comentario> Comentarios { get; set; }
        public DbSet<Carrito> Carritos { get; set; }
        public DbSet<Venta> Ventas { get; set; }
        public DbSet<DetalleDeVenta> DetallesDeVenta { get; set; }

        // Aquí puedes agregar configuraciones adicionales si es necesario

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Configuraciones adicionales de modelos, como relaciones, índices, etc.
            // Por ejemplo, configuraciones de llaves compuestas, relaciones muchos a muchos, etc.

            // Configuración de índice único para el campo "correo" en la tabla Usuario
            modelBuilder.Entity<Usuario>()
                .HasIndex(u => u.Correo)
                .IsUnique();

            // Definición de relaciones entre entidades

            // Relación uno a muchos entre Rol y Usuario
            modelBuilder.Entity<Rol>()
                .HasMany(r => r.Usuarios)
                .WithOne(u => u.Rol)
                .HasForeignKey(u => u.RolId);

            // Relación muchos a muchos entre Rol y Menu a través de RolMenu
            modelBuilder.Entity<RolMenu>()
                .HasKey(rm => new { rm.RolId, rm.MenuId });

            modelBuilder.Entity<RolMenu>()
                .HasOne(rm => rm.Rol)
                .WithMany(r => r.RolMenus)
                .HasForeignKey(rm => rm.RolId);

            modelBuilder.Entity<RolMenu>()
                .HasOne(rm => rm.Menu)
                .WithMany(m => m.RolMenus)
                .HasForeignKey(rm => rm.MenuId);

            // Relación uno a muchos entre Producto y ProductoProveedor
            modelBuilder.Entity<ProductoProveedor>()
                .HasKey(pp => new { pp.ProductoId, pp.ProveedorId });

            modelBuilder.Entity<ProductoProveedor>()
                .HasOne(pp => pp.Producto)
                .WithMany(p => p.ProductoProveedores)
                .HasForeignKey(pp => pp.ProductoId);

            modelBuilder.Entity<ProductoProveedor>()
                .HasOne(pp => pp.Proveedor)
                .WithMany(p => p.ProductoProveedores)
                .HasForeignKey(pp => pp.ProveedorId);

            // Relación uno a muchos entre Producto y Comentario
            modelBuilder.Entity<Comentario>()
                .HasOne(c => c.Producto)
                .WithMany(p => p.Comentarios)
                .HasForeignKey(c => c.ProductoId);

            // Relación uno a muchos entre Producto y DetalleDeVenta
            modelBuilder.Entity<DetalleDeVenta>()
                .HasOne(dv => dv.Producto)
                .WithMany(p => p.DetallesDeVenta)
                .HasForeignKey(dv => dv.ProductoId);

            // Relación uno a muchos entre Venta y DetalleDeVenta
            modelBuilder.Entity<DetalleDeVenta>()
                .HasOne(dv => dv.Venta)
                .WithMany(v => v.DetallesDeVenta)
                .HasForeignKey(dv => dv.VentaId);

            // Relación uno a muchos entre Usuario y Comentario
            modelBuilder.Entity<Comentario>()
                .HasOne(c => c.Usuario)
                .WithMany(u => u.Comentarios)
                .HasForeignKey(c => c.UsuarioId);

            // Relación uno a muchos entre Usuario y Carrito
            modelBuilder.Entity<Carrito>()
                .HasOne(c => c.Usuario)
                .WithMany(u => u.Carritos)
                .HasForeignKey(c => c.UsuarioId);

            // Relación uno a muchos entre Producto y Carrito
            modelBuilder.Entity<Carrito>()
                .HasOne(c => c.Producto)
                .WithMany(p => p.Carritos)
                .HasForeignKey(c => c.ProductoId);

            // Relación uno a muchos entre Usuario y Venta
            modelBuilder.Entity<Venta>()
                .HasOne(v => v.Usuario)
                .WithMany(u => u.Ventas)
                .HasForeignKey(v => v.UsuarioId);
        }
    }
}
