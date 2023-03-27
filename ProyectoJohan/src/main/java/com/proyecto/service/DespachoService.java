package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Despacho;

public interface DespachoService {
	
	public List<Despacho> listaDespacho();
	public Despacho insertarYactualizar(Despacho obj);
	public Optional <Despacho> porId(Long idDespacho);
	public List<Despacho> listaDespachoNombre(String filtro);
	public void eliminarDespacho(Long id);

}
