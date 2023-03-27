package com.proyecto.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.proyecto.entity.Rol;
import com.proyecto.entity.Usuario;
import com.proyecto.service.RolService;
import com.proyecto.service.UsuarioService;

@Controller
public class RegistroController {
	
	@Autowired
	private RolService rolService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@RequestMapping("/verRegistro")
	public String verFormUsu() {
		return "registro";
	}
	
	@RequestMapping("/listarRolRegistro")
	@ResponseBody
	public List<Rol> listaRol(){
		List<Rol> lista = rolService.listaRol();
		return lista;
	}
	
	@RequestMapping("/insertarUsuarioRegistro")
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
	
	

}
