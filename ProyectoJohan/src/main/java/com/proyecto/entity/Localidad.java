package com.proyecto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "localidad")
public class Localidad {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idLocalidad;
	@Column
	private String nombre;
	
	//Get//Set//
	public Long getIdLocalidad() {
		return idLocalidad;
	}
	public void setIdLocalidad(Long idLocalidad) {
		this.idLocalidad = idLocalidad;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
	

}
