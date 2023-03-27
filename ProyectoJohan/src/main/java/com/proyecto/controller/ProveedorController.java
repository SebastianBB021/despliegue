package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Proveedor;
import com.proyecto.entity.Tipo_Proveedor;
import com.proyecto.service.ProveedorService;
import com.proyecto.service.TipoProveedorService;

@Controller
public class ProveedorController {
	
	@Autowired
	private TipoProveedorService tipoProvservice;
	
	@Autowired
	private ProveedorService proveedorService;
	
	@RequestMapping("/listaTipoProveedor")
	@ResponseBody
	public List<Tipo_Proveedor> listaTipoProve(){
		List<Tipo_Proveedor> lista = tipoProvservice.listaTipoProveedor();
		return lista;
	}
	
	@RequestMapping("/verProveedores")
	public String verProveedor() {
		return "proveedores";
	}
	
	@RequestMapping("/filtrarProveedores")
	@ResponseBody
	public List<Proveedor> filtrar(String filtro){
		List<Proveedor> lista = proveedorService.listaProvedorPorNombre("%"+filtro+"%");
		return lista;
	}
	
	
	
	@RequestMapping("/registrarProveedor")
	@ResponseBody
	public Map<String , Object> insertar(Proveedor obj){
		Map<String , Object> salida = new HashMap<String , Object>();
		try { 
			Proveedor objResultado = proveedorService.insertarYactualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error al registrar");
			}else {
				List<Proveedor> lista = proveedorService.listaProveedor();
				salida.put("lista", lista);
				salida.put("mensaje", "Se agregao correctamente");
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/actualizarProveedor")
	@ResponseBody
	public Map<String, Object> actualiza(Proveedor obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Proveedor objResultado = proveedorService.insertarYactualizar(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error actualizando");
			}else {
				List<Proveedor> lista = proveedorService.listaProveedor();
				salida.put("lista", lista);
				salida.put("mensaje", "Se actualiazo correctamente");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/eliminarProveedor")
	@ResponseBody
	public Map<String, Object> eliminar(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
	try {
		Optional<Proveedor> optProveedor = proveedorService.proId(Long.parseLong(id));
		if(optProveedor.isEmpty()) {
			salida.put("mensaje", "No existe id "+ id);
		}else {
			proveedorService.eliminarProveedor(Long.parseLong(id));
			List<Proveedor> lista = proveedorService.listaProveedor();
			salida.put("lista", lista);
			salida.put("mensaje", "Eliminacion exitosa");
				
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	return salida;
	}
	
	
	
}
