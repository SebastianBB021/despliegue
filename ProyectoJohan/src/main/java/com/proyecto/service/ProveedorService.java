package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Proveedor;

public interface ProveedorService {
	
	public List<Proveedor> listaProveedor();
	public Proveedor insertarYactualizar(Proveedor obj);
	public Optional<Proveedor> proId(Long idProveedor);
	public void eliminarProveedor(Long idProveedor);
	public List<Proveedor> listaProvedorPorNombre(String filtro);
}
