package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Rol;
import com.proyecto.repository.RolRepository;
import com.proyecto.service.RolService;

@Service
public class RolServiceImpl implements RolService {

	@Autowired 
	private RolRepository reposiotry;
	
	@Override
	public List <Rol> listaRol() {
		// TODO Auto-generated method stub
		return reposiotry.findAll();
	}

}
