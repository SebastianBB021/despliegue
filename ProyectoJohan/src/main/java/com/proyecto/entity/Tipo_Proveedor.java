package com.proyecto.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "tipoProveedor")
public class Tipo_Proveedor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idTipoProveedor;
	@Column
	private String implemento;
	@Column
	private String nombreTipo;
	

	
	
	//Get//Set
	public Long getIdTipoProveedor() {
		return idTipoProveedor;
	}

	public void setIdTipoProveedor(Long idTipoProveedor) {
		this.idTipoProveedor = idTipoProveedor;
	}

	public String getImplemento() {
		return implemento;
	}

	public void setImplemento(String implemento) {
		this.implemento = implemento;
	}

	public String getNombreTipo() {
		return nombreTipo;
	}

	public void setNombreTipo(String nombreTipo) {
		this.nombreTipo = nombreTipo;
	}

	
	
	
}
