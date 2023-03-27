package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Packing;

public interface PackingService {
	
	public List<Packing> listaPacking();
	public Packing insertarYactualizar(Packing obj);
	public Optional <Packing> porId(Long idPacking);
	public void eliminarPacking(Long id);
	public List<Packing> listaPackingNombre(String filtro);
}
