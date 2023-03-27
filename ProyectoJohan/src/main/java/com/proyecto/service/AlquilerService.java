package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Alquiler;

public interface AlquilerService {
	
	public List<Alquiler> listaAlquiler();
	public Alquiler insertarYactualizarAlquiler(Alquiler obj);
	public Optional<Alquiler> porId(Long idAlquiler);
	public void eliminarAlquiler(Long id);
	public Alquiler mostrarPorId(Long idAlquiler);
	

}
