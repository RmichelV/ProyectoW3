using System;
using AutoMapper;
using ProyectoApi.Dto;
using ProyectoApi.Models;

namespace ProyectoApi.Utilities
{
    public class AutoMapperProfile : Profile
    {
        public AutoMapperProfile()
        {
            // Mapeo de DTOs a modelos
            CreateMap<MenuCreaDto, Menu>();
            CreateMap<RolCreaDto, Rol>();
            CreateMap<RolMenuCreaDto, RolMenu>();
            CreateMap<UsuarioCreaDto, Usuario>();
            CreateMap<ProveedorCreaDto, Proveedor>();
            CreateMap<TipoDeProductoCreaDto, TipoDeProducto>();
            CreateMap<ProductoCreaDto, Producto>();
            CreateMap<ProductoProveedorCreaDto, ProductoProveedor>();
            CreateMap<ComentarioCreaDto, Comentario>();
            CreateMap<CarritoCreaDto, Carrito>();
            CreateMap<VentaCreaDto, Venta>();
            CreateMap<DetalleDeVentaCreaDto, DetalleDeVenta>();

            // Mapeo de modelos a DTOs
            CreateMap<Menu, MenuDto>();
            CreateMap<Rol, RolDto>();
            CreateMap<RolMenu, RolMenuDto>();
            CreateMap<Usuario, UsuarioDto>();
            CreateMap<Proveedor, ProveedorDto>();
            CreateMap<TipoDeProducto, TipoDeProductoDto>();
            CreateMap<Producto, ProductoDto>();
            CreateMap<ProductoProveedor, ProductoProveedorDto>();
            CreateMap<Comentario, ComentarioDto>();
            CreateMap<Carrito, CarritoDto>();
            CreateMap<Venta, VentaDto>();
            CreateMap<DetalleDeVenta, DetalleDeVentaDto>();
        }
    }
}
