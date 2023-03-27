package com.proyecto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "alquiler") 
public class Alquiler {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idAlquiler;
	@Column
	private int cantidadImplementos;
	@Column
	private String descripcion;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idImplemento")
	private Implemento implemento;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idReserva")
	private Reserva reserva;
	
	

	
	
	public Alquiler() {
		super();
	}

	public Alquiler(int cantidadImplementos, String descripcion, Implemento implemento, Reserva reserva) {
		super();
		this.cantidadImplementos = cantidadImplementos;
		this.descripcion = descripcion;
		this.implemento = implemento;
		this.reserva = reserva;
	}

	public Long getIdAlquiler() {
		return idAlquiler;
	}

	public void setIdAlquiler(Long idAlquiler) {
		this.idAlquiler = idAlquiler;
	}

	public int getCantidadImplementos() {
		return cantidadImplementos;
	}

	public void setCantidadImplementos(int cantidadImplementos) {
		this.cantidadImplementos = cantidadImplementos;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Implemento getImplemento() {
		return implemento;
	}

	public void setImplemento(Implemento implemento) {
		this.implemento = implemento;
	}

	public Reserva getReserva() {
		return reserva;
	}

	public void setReserva(Reserva reserva) {
		this.reserva = reserva;
	}
	
	
	
	

}
