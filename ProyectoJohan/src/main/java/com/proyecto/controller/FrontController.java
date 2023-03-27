package com.proyecto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FrontController {
	
	@RequestMapping("/verInicio")
	public String verContratos() {
		return  "index";
	}
	
	@RequestMapping("/verLogin")
	public String verLogin() {
		return  "login";
	}
	
	@RequestMapping("/verServicios")
	public String verServicio() {
		return  "servicios";
	}
	
	@RequestMapping("/verQuienesSomos")
	public String verQuienesSomos() {
		return  "quienessomos";
	}
	
	
	
	@RequestMapping("/verPerfilA")
	public String verPerfilA() {
		return  "vistaAdmin";
	}
	@RequestMapping("/verPerfilG")
	public String verPerfilG() {
		return  "vistaGerente";
	}
	@RequestMapping("/verPerfilPN")
	public String verPerfilPN() {
		return  "vistaPersonaNatural";
	}
	@RequestMapping("/verPerfilPJ")
	public String verPerfilPJ() {
		return  "vistaPersonaJuridica";
	}


}
