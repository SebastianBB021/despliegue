package com.proyecto.entity;

import java.util.Date;

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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "packing")
public class Packing {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idPacking;
	
	@Column
	private int cantidadEntrada;
	@Column
	private int cantidadDestinatario;
	@Column
	private String direccionDestinatario;
	@Column
	private String nombreDestinatario;
	@JsonFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaEntrega;
	@Column
	private String observacion;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idReserva")
	private Reserva reserva;

	
	
	public Long getIdPacking() {
		return idPacking;
	}

	public void setIdPacking(Long idPacking) {
		this.idPacking = idPacking;
	}

	public int getCantidadEntrada() {
		return cantidadEntrada;
	}

	public void setCantidadEntrada(int cantidadEntrada) {
		this.cantidadEntrada = cantidadEntrada;
	}

	public int getCantidadDestinatario() {
		return cantidadDestinatario;
	}

	public void setCantidadDestinatario(int cantidadDestinatario) {
		this.cantidadDestinatario = cantidadDestinatario;
	}

	public String getDireccionDestinatario() {
		return direccionDestinatario;
	}

	public void setDireccionDestinatario(String direccionDestinatario) {
		this.direccionDestinatario = direccionDestinatario;
	}

	public String getNombreDestinatario() {
		return nombreDestinatario;
	}

	public void setNombreDestinatario(String nombreDestinatario) {
		this.nombreDestinatario = nombreDestinatario;
	}

	public Date getFechaEntrega() {
		return fechaEntrega;
	}

	public void setFechaEntrega(Date fechaEntrega) {
		this.fechaEntrega = fechaEntrega;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public Reserva getReserva() {
		return reserva;
	}

	public void setReserva(Reserva reserva) {
		this.reserva = reserva;
	}
	
	
	
	
	

}
