package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.TipoProducto;
import com.proyecto.repository.TipoProductoRepository;
import com.proyecto.service.TipoProductoService;
@Service
public class TipoProductoServiceImpl implements TipoProductoService {

	@Autowired
	private TipoProductoRepository tipoProReposiotry;
	@Override
	public List<TipoProducto> listaTipoproducto() {
		// TODO Auto-generated method stub
		return tipoProReposiotry.findAll();
	}

}
