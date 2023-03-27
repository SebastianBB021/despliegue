package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Alquiler;
import com.proyecto.entity.Implemento;
import com.proyecto.entity.Reserva;
import com.proyecto.entity.Usuario;
import com.proyecto.service.AlquilerService;
import com.proyecto.service.ImplementoService;
import com.proyecto.service.ReservaService;
import com.proyecto.service.UsuarioService;

@Controller
public class AlquilerController {
	
	
	
	@Autowired
	private ImplementoService implementoService;
	
	@Autowired
	private ReservaService reservaService;
	
	@RequestMapping("/verAlquiler")
	public String verAlquiler(){
		return "crudAlquiler";
	}
	
	@RequestMapping("/listaImplementos")
	@ResponseBody
	public List<Implemento> listaImplermento(){
		List<Implemento> lista = implementoService.listaImplemento();
		return lista;
	}
	
	@RequestMapping( "/listaReserva")
	@ResponseBody
	public List<Reserva> listaUsuario(){
		List<Reserva> lista = reservaService.listaReserva();
		return lista;
	}
	
	/*Alquiler*/

	
	@Autowired
	private AlquilerService alquilerService;
	
	@RequestMapping(path ="/listarAlquiler", method=RequestMethod.GET)
	@ResponseBody 
	public List<Alquiler> mostrarAlquiler(){
		return alquilerService.listaAlquiler();
	}
	
	@RequestMapping(value = "/alquiler/{idAlquiler}", method = RequestMethod.GET)
	public Alquiler mostrarAlquilerId(@PathVariable("idAlquiler")Long idAlquiler) {
		return alquilerService.mostrarPorId(idAlquiler);
	}
	
	@RequestMapping("/eliminarAlquiler")
	@ResponseBody
	public Map<String, Object> elimina(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Alquiler> optAlquiler = alquilerService.porId(Long.parseLong(id));
			if(optAlquiler.isEmpty()) {
				salida.put("mensaje", "No existe id" + id);
			}else {
				alquilerService.eliminarAlquiler(Long.parseLong(id));
				List<Alquiler> lista = alquilerService.listaAlquiler();
				salida.put("lista", lista);
				salida.put("mensaje","Eliminacion exitosa");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/registrarAlquiler")
	@ResponseBody
	public Map<String, Object> insertar(Alquiler obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Alquiler objResultado = alquilerService.insertarYactualizarAlquiler(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error al registrar Alquiler");
			}else {
				List<Alquiler> lista = alquilerService.listaAlquiler();
				salida.put("lista", lista);
				salida.put("mensaje", "Se registro con exito");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	@RequestMapping("/actualizarAlquiler")
	@ResponseBody
	public Map<String, Object> actualiza(Alquiler obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Alquiler objResultado = alquilerService.insertarYactualizarAlquiler(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error en la actualizacion");
			}else {
				List<Alquiler> lista = alquilerService.listaAlquiler();
				salida.put("lista", lista);
				salida.put("mensaje", "Se actualizo correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	/*Alquiler*/
	

}
