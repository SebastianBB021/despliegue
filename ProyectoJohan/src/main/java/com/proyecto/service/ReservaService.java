package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Reserva;

public interface ReservaService {
	
	public List<Reserva> listaReserva();
	public Reserva insertarYactualizarReserva(Reserva obj);
	public Optional<Reserva> porId(Long idReserva);
	public void eliminarReserva(Long id);
	public List<Reserva> listarReservaPorNombre(String filtro);

}
