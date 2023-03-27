package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Alquiler;
import com.proyecto.repository.AlquilerReposiotry;
import com.proyecto.service.AlquilerService;

@Service
public class AlquilerServiceImpl implements AlquilerService {
	@Autowired
	private AlquilerReposiotry alquilerReposiotry;

	@Override
	public List<Alquiler> listaAlquiler() {
		// TODO Auto-generated method stub
		return alquilerReposiotry.findAll();
	}

	@Override
	public Alquiler insertarYactualizarAlquiler(Alquiler obj) {
		// TODO Auto-generated method stub
		return alquilerReposiotry.save(obj);
	}

	@Override
	public Optional<Alquiler> porId(Long idAlquiler) {
		// TODO Auto-generated method stub
		return alquilerReposiotry.findById(idAlquiler);
	}

	@Override
	public void eliminarAlquiler(Long id) {
		// TODO Auto-generated method stub
		alquilerReposiotry.deleteById(id);
	}

	@Override
	public Alquiler mostrarPorId(Long idAlquiler) {
		// TODO Auto-generated method stub
		return null;
	}

}
