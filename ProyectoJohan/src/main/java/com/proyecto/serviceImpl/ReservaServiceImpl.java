package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Reserva;
import com.proyecto.repository.ReservaReposiotry;
import com.proyecto.service.ReservaService;

@Service
public class ReservaServiceImpl  implements ReservaService{
	
	@Autowired
	private ReservaReposiotry reservaReposiotry;

	@Override
	public List<Reserva> listaReserva() {
		// TODO Auto-generated method stub
		return reservaReposiotry.findAll();
	}

	@Override
	public Reserva insertarYactualizarReserva(Reserva obj) {
		// TODO Auto-generated method stub
		return reservaReposiotry.save(obj);
	}

	@Override
	public Optional<Reserva> porId(Long idReserva) {
		// TODO Auto-generated method stub
		return reservaReposiotry.findById(idReserva);
	}

	@Override
	public void eliminarReserva(Long id) {
		// TODO Auto-generated method stub
		reservaReposiotry.deleteById(id);
	}

	@Override
	public List<Reserva> listarReservaPorNombre(String filtro) {
		// TODO Auto-generated method stub
		return reservaReposiotry.listaReservaPorDireccion(filtro);
	}
	
	

}
