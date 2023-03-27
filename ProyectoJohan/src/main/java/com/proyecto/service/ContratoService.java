package com.proyecto.service;

import java.util.List;

import com.proyecto.entity.Contrato;

public interface ContratoService {
	
	public List<Contrato> listaContrato();
	public Contrato insertaYactualizarContrato(Contrato obj);
	public void eliminarContrato(Long id);
	public List<Contrato> listaContratoPorNombre(String filtro);
}
