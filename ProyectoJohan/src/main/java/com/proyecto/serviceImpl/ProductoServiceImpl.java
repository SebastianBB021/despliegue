package com.proyecto.serviceImpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.proyecto.entity.Producto;
import com.proyecto.repository.ProductoRepository;
import com.proyecto.service.ProductoService;
@Service
public class ProductoServiceImpl implements ProductoService {

	@Autowired
	private ProductoRepository productoRepository;
	@Override
	public List<Producto> listaProducto() {
		// TODO Auto-generated method stub
		return productoRepository.findAll();
	}

	@Override
	public Producto insertaryActualizar(Producto obj) {
		// TODO Auto-generated method stub
		return productoRepository.save(obj);
	}

	@Override
	public Optional<Producto> porId(Long idProducto) {
		// TODO Auto-generated method stub
		return productoRepository.findById(idProducto);
	}

	@Override
	public List<Producto> listaProductoProNombre(String filtro) {
		// TODO Auto-generated method stub
		return productoRepository.listarPorNombre(filtro);
	}

	@Override
	public void eliminarProducto(Long id) {
		// TODO Auto-generated method stub
		productoRepository.deleteById(id);
	}

}
