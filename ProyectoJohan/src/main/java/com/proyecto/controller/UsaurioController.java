package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Rol;
import com.proyecto.entity.Usuario;
import com.proyecto.service.RolService;
import com.proyecto.service.UsuarioService;

@Controller
public class UsaurioController {
	
	@Autowired
	private RolService rolService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	
	@RequestMapping("/verUsuarios")
	public String verUsaurio() {
		return "usuarios";
	}
	
	
	@RequestMapping("/listaRol")
	@ResponseBody
	public List<Rol> listaRol(){
		List<Rol> lista = rolService.listaRol();
		return lista;
	}
	
	
	@RequestMapping("/listarUsaurios")
	@ResponseBody
	public List<Usuario> listaUsuario(String filtro){
		List<Usuario> lista = usuarioService.listarUsuarioPorNombre("%"+filtro+"%");
		return lista;
	}
	
	
	
	@RequestMapping("/insertarUsuarios")
	@ResponseBody
	public Map<String, Object> inserta(Usuario obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Usuario objResultado = usuarioService.insertarYactualizarUsuario(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error agregando usuario");
			}else {
				List<Usuario> lista = usuarioService.listaUsuario();
				salida.put("lista", lista);
				salida.put("mensaje", "Se registro con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	
	@RequestMapping("/actualizaUsuario")
	@ResponseBody
	public Map<String, Object> actualiza(Usuario obj){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Usuario objResultado = usuarioService.insertarYactualizarUsuario(obj);
			if(objResultado == null) {
				salida.put("mensaje", "Error actualizando usuario");
			}else {
				List<Usuario> lista = usuarioService.listaUsuario();
				salida.put("lista", lista);
				salida.put("mensaje", "Se actualizo con exito");
			}
		}catch (Exception e){
			e.printStackTrace();
		}
		return salida;
	}
	
	
	/*@RequestMapping("/eliminarUsaurios")
	@ResponseBody
	public Map<String, Object> elimina(String id){
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Usuario> optUsuario = usuarioService.obtienerPorId(Long.parseLong(id));
			if(optUsuario.isEmpty()) {
				salida.put("mensaje", "No existe id " + id);
			}else {
				usuarioService.eliminarUsuario(Long.parseLong(id));
				List<Usuario> lista = usuarioService.listaUsuario();
				salida.put("lista", lista);
				salida.put("mensaje", "Usuario eliminado correctamente");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return salida;*/
	}
	
	
	
	

