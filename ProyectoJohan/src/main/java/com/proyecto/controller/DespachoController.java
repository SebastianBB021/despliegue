package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Packing;
import com.proyecto.entity.Producto;
import com.proyecto.entity.Usuario;
import com.proyecto.entity.Despacho;
import com.proyecto.service.DespachoService;
import com.proyecto.service.PackingService;
import com.proyecto.service.ProductoService;

@Controller
public class DespachoController {

	
	@Autowired
	private DespachoService dspachoService;
	
	@Autowired
	private PackingService packingService;
	
	@Autowired
	private ProductoService productoSerivce;
	
	@RequestMapping("/verDespachos")
	public String Despacho() {
		return "despachos";
	}
	
	@RequestMapping("/listaPacking")
	@ResponseBody
	public List<Packing> listarPacking(){
		List<Packing> lista = packingService.listaPacking();
		return lista;
	}
	
	@RequestMapping("/listaProductos")
	@ResponseBody
	public List<Producto> listaProductos(){
		List<Producto> lista = productoSerivce.listaProducto();
		return lista;
	}
	
	@RequestMapping("/filtrarDespacho")
	@ResponseBody
	public List<Despacho> filtrar(String filtro){
		List<Despacho> lista = dspachoService.listaDespachoNombre("%"+ filtro + "%");
		return lista;
	}
	
	@RequestMapping("/insertarDespacho")
	@ResponseBody
	public Map<String, Object> inserta(Despacho obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Despacho objResultado = dspachoService.insertarYactualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error agregando despacho");
			}else {
				List<Despacho> lista = dspachoService.listaDespacho();
				salida.put("lista", lista);
				salida.put("mensaje", "Se registro con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/actualizarDespacho")
	@ResponseBody
	public Map<String, Object> actualiza(Despacho obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Despacho objResultado = dspachoService.insertarYactualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error actualizando despacho");
			}else {
				List<Despacho> lista = dspachoService.listaDespacho();
				salida.put("lista", lista);
				salida.put("mensaje", "Se actualizo con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/eliminarDespacho")
	@ResponseBody
	public Map<String, Object> elimina(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Despacho> optDespacho = dspachoService.porId(Long.parseLong(id));
			if(optDespacho.isEmpty()) {
				salida.put("mensaje", "No existe id " + id);
			}else {
				dspachoService.eliminarDespacho(Long.parseLong(id));
				List<Despacho> lista = dspachoService.listaDespacho();
				salida.put("lista", lista);
				salida.put("mensaje", "Despacho eliminado correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
}
