package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Localidad;
import com.proyecto.repository.LocalidadRepository;
import com.proyecto.service.LocalidadService;

@Service
public class LocalidadServiceImpl implements LocalidadService {
	
	@Autowired
	private LocalidadRepository localidadRposiotry;

	@Override
	public List<Localidad> listaLocalidad() {
		// TODO Auto-generated method stub
		return localidadRposiotry.findAll();
	}
	
	

}
