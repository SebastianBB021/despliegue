package com.proyecto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tipoReserva")
public class Tipo_Reserva {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idTipoReserva;
	@Column
	private String nombre;
	
	
	public Long getIdTipoReserva() {
		return idTipoReserva;
	}
	public void setIdTipoReserva(Long idTipoReserva) {
		this.idTipoReserva = idTipoReserva;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
}
