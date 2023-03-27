package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Categoria;
import com.proyecto.entity.Inventario;
import com.proyecto.entity.Producto;
import com.proyecto.entity.TipoProducto;
import com.proyecto.service.CategoriaService;
import com.proyecto.service.InventarioService;
import com.proyecto.service.ProductoService;
import com.proyecto.service.TipoProductoService;

@Controller
public class ProductosController {
	
	@Autowired
	private CategoriaService categoriaService;
	
	@Autowired
	private InventarioService inventarioService;
	
	@Autowired
	private TipoProductoService tipProService;
	
	@Autowired
	private ProductoService productoService;
	
	@RequestMapping("/verProductos")
	public String verProductos() {
		return "productos";
	}
	
	@RequestMapping("/listaCategoria")
	@ResponseBody
	public List<Categoria> listaCategoria(){
		List<Categoria> lista = categoriaService.listarCategoria();
		return lista;
	}
	
	@RequestMapping("/listaInventario")
	@ResponseBody
	public List<Inventario> listaInvenatirio(){
		List<Inventario> lista = inventarioService.listaInventario();
		return lista;
	}
	
	@RequestMapping("/listaTipoProducto")
	@ResponseBody
	public List<TipoProducto> listaTipoProd(){
		List<TipoProducto> lista = tipProService.listaTipoproducto();
		return lista;
	}
	
	@RequestMapping("/filtrarProductos")
	@ResponseBody
	public List<Producto> filtrar(String filtro){
		List<Producto> lista = productoService.listaProductoProNombre("%"+filtro+"%");
		return lista;
	}
	
	@RequestMapping("/registrarProductos")
	@ResponseBody
	public Map<String, Object> insertar(Producto obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Producto objResultado = productoService.insertaryActualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error Registrando");
			}else {
				List<Producto> lista = productoService.listaProducto();
				salida.put("lista", lista);
				salida.put("mensaje", "Registro exitoso");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/actualizarProductos")
	@ResponseBody
	public Map<String, Object> actualizar(Producto obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Producto objResultado = productoService.insertaryActualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error Actualizando");
			}else {
				List<Producto> lista = productoService.listaProducto();
				salida.put("lista", lista);
				salida.put("mensaje", "Actualizacion exitoso");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/eliminarProducto")
	@ResponseBody
	public Map<String, Object> eliminar(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Producto> optProducto = productoService.porId(Long.parseLong(id));
			if(optProducto.isEmpty()) {
				salida.put("mensaje", "Nose esxiste id " +id);
			}else {
				productoService.eliminarProducto(Long.parseLong(id));
				List<Producto> lista = productoService.listaProducto();
				salida.put("lista", lista);
				salida.put("mensaje", "Se elimino correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	
}
