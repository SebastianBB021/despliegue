package com.proyecto.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Tipo_Contrato;
import com.proyecto.repository.TipoContratoRepository;
import com.proyecto.service.TipoContratoService;

@Service
public class TipoContratoServiceImpl implements TipoContratoService {

	@Autowired
	private TipoContratoRepository tipoContraReposiotry;
	@Override
	public List<Tipo_Contrato> listaTipoContrato() {
		// TODO Auto-generated method stub
		return tipoContraReposiotry.findAll();
	}

}
