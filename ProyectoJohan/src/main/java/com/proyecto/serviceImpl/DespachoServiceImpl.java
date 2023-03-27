package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Despacho;
import com.proyecto.repository.DespachoReposiotry;
import com.proyecto.service.DespachoService;

@Service
public class DespachoServiceImpl implements DespachoService{

	@Autowired
	private DespachoReposiotry despachoRepository;
	
	@Override
	public List<Despacho> listaDespacho() {
		// TODO Auto-generated method stub
		return despachoRepository.findAll();
	}

	@Override
	public Despacho insertarYactualizar(Despacho obj) {
		// TODO Auto-generated method stub
		return despachoRepository.save(obj);
	}

	@Override
	public Optional<Despacho> porId(Long idDespacho) {
		// TODO Auto-generated method stub
		return despachoRepository.findById(idDespacho);
	}

	@Override
	public List<Despacho> listaDespachoNombre(String filtro) {
		// TODO Auto-generated method stub
		return despachoRepository.listaPorNombre(filtro);
	}

	@Override
	public void eliminarDespacho(Long id) {
		// TODO Auto-generated method stub
		despachoRepository.deleteById(id);
	}

}
