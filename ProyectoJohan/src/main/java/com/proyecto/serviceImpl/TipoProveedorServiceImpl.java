package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Tipo_Proveedor;
import com.proyecto.repository.TipoProveedorRepository;
import com.proyecto.service.TipoProveedorService;

@Service
public class TipoProveedorServiceImpl implements TipoProveedorService {

	@Autowired
	private TipoProveedorRepository tipoProveReposiotry;
	@Override
	public List<Tipo_Proveedor> listaTipoProveedor() {
		// TODO Auto-generated method stub
		return tipoProveReposiotry.findAll();
	}
	
}
