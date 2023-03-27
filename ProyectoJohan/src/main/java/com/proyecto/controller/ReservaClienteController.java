package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Localidad;
import com.proyecto.entity.Reserva;
import com.proyecto.entity.Tipo_Reserva;
import com.proyecto.entity.Usuario;
import com.proyecto.service.LocalidadService;
import com.proyecto.service.ReservaService;
import com.proyecto.service.TipoReservaService;
import com.proyecto.service.UsuarioService;

@Controller
public class ReservaClienteController {
	
	@Autowired
	private LocalidadService localidadService;
	
	@Autowired
	private TipoReservaService tipoRService;
	
	@Autowired 
	private UsuarioService usuarioService;
	
	@Autowired 
	private ReservaService reservaService;
	
	@RequestMapping("/lsitaLocalidadCliente")
	@ResponseBody
	public List<Localidad> listaLocalidad(){
		List<Localidad> lista = localidadService.listaLocalidad();
		return lista;
	}
	
	@RequestMapping("/listaTipoReservaCliente")
	@ResponseBody
	public List<Tipo_Reserva> listaTipoReserva(){
		List<Tipo_Reserva> lista = tipoRService.listaTipoReserva();
		return lista;
	}
	
	@RequestMapping("/listaUsuarioCliente")
	@ResponseBody
	public List<Usuario> listaUsuario(){
		List<Usuario> lista = usuarioService.listaUsuario();
		return lista;
	}
	
	@RequestMapping("/agregaReservaCliente")
	@ResponseBody
	public Map<String, Object> insertar(Reserva obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Reserva objResultado = reservaService.insertarYactualizarReserva(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error en el registro");
			}else {
				List<Reserva> lista = reservaService.listaReserva();
				salida.put("lista", lista);
				salida.put("mensaje", "Reserva creada con exito");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;
	}
	
	@RequestMapping("/verReservasCliente")
	public String verReserva() {
		return "reservaCliente";
	}

}
