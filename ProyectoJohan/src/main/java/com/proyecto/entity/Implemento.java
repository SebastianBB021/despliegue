package com.proyecto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "implemento")
public class Implemento {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idImplemento;
	@Column
	private String nombre;
	
	
	public Long getIdImplemento() {
		return idImplemento;
	}
	public void setIdImplemento(Long idImplemento) {
		this.idImplemento = idImplemento;
	}	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	

}
