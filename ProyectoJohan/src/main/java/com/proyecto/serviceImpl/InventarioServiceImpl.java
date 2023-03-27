package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Inventario;
import com.proyecto.repository.InventarioRepository;
import com.proyecto.service.InventarioService;
@Service
public class InventarioServiceImpl implements InventarioService {

	@Autowired
	private InventarioRepository inventarioReposiotry;
	@Override
	public List<Inventario> listaInventario() {
		// TODO Auto-generated method stub
		return inventarioReposiotry.findAll();
	}

}
