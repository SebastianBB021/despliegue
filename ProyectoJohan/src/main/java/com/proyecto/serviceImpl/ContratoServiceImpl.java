package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Contrato;
import com.proyecto.repository.ContratoRepository;
import com.proyecto.service.ContratoService;

@Service
public class ContratoServiceImpl implements ContratoService {

	@Autowired
	private ContratoRepository contratoRepository;
	@Override
	public List<Contrato> listaContrato() {
		// TODO Auto-generated method stub
		return contratoRepository.findAll();
	}

	@Override
	public Contrato insertaYactualizarContrato(Contrato obj) {
		// TODO Auto-generated method stub
		return contratoRepository.save(obj);
	}

	@Override
	public void eliminarContrato(Long id) {
		// TODO Auto-generated method stub
		contratoRepository.deleteById(id);
	}

	@Override
	public List<Contrato> listaContratoPorNombre(String filtro) {
		// TODO Auto-generated method stub
		return contratoRepository.listaContratoPorNombre(filtro);
	}

}
