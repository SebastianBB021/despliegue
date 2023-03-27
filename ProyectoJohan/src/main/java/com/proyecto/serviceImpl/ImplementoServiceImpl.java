package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Implemento;
import com.proyecto.repository.ImplementoRepository;
import com.proyecto.service.ImplementoService;

@Service
public class ImplementoServiceImpl implements ImplementoService {

	@Autowired
	private ImplementoRepository implemntRepository;
	@Override
	public List<Implemento> listaImplemento() {
		// TODO Auto-generated method stub
		return implemntRepository.findAll();
	}

}
