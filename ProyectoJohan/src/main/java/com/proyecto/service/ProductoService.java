package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Producto;

public interface ProductoService {
	
	public List<Producto> listaProducto();
	public Producto insertaryActualizar(Producto obj);
	public Optional <Producto> porId(Long idProducto);
	public List<Producto> listaProductoProNombre(String filtro);
	public void eliminarProducto(Long id);

}
