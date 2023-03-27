package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Tipo_Reserva;
import com.proyecto.repository.TipoReservaRepository;
import com.proyecto.service.TipoReservaService;

@Service
public class TipoReservaServiceImpl implements TipoReservaService {
	
	@Autowired
	private TipoReservaRepository TipoRrepository;

	@Override
	public List<Tipo_Reserva> listaTipoReserva() {
		// TODO Auto-generated method stub
		return TipoRrepository.findAll();
	}

}
