package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Categoria;
import com.proyecto.repository.CategoriaReposiotry;
import com.proyecto.service.CategoriaService;
@Service
public class CategoriaServiceImpl implements CategoriaService {

	@Autowired
	private CategoriaReposiotry categoriaReposiotry;
	@Override
	public List<Categoria> listarCategoria() {
		// TODO Auto-generated method stub
		return categoriaReposiotry.findAll();
	}

}
