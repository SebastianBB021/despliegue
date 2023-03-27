package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Packing;
import com.proyecto.repository.PackingReposiotry;
import com.proyecto.service.PackingService;

@Service
public class PackingServiceImpl implements PackingService{
	
	@Autowired
	private PackingReposiotry packingReposiotry;

	@Override
	public List<Packing> listaPacking() {
		// TODO Auto-generated method stub
		return packingReposiotry.findAll();
	}

	@Override
	public Packing insertarYactualizar(Packing obj) {
		// TODO Auto-generated method stub
		return packingReposiotry.save(obj);
	}

	@Override
	public Optional<Packing> porId(Long idPacking) {
		// TODO Auto-generated method stub
		return packingReposiotry.findById(idPacking);
	}

	@Override
	public void eliminarPacking(Long id) {
		// TODO Auto-generated method stub
		packingReposiotry.deleteById(id);
	}

	@Override
	public List<Packing> listaPackingNombre(String filtro) {
		// TODO Auto-generated method stub
		return packingReposiotry.listaPackingPorNobre(filtro);
	}

}
