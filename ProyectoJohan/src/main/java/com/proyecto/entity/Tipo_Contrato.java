package com.proyecto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipoContrato")
public class Tipo_Contrato {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idTipocontrato;
	@Column
	private String nombre;
	
	
	public Long getIdTipocontrato() {
		return idTipocontrato;
	}
	public void setIdTipocontrato(Long idTipocontrato) {
		this.idTipocontrato = idTipocontrato;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	

}
