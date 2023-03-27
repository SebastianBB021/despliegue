package com.proyecto.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name = "despacho")
public class Despacho {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idDespacho;
	
	@Column
	private int cantidadSalida;
	
	@Column
	private String estado;
	
	@JsonFormat(pattern = "yyyy-MM-dd")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaSalida;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idPacking")
	private Packing packing;
	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name ="idTipoReserva")
	private Producto producto;

	
	@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
	@JoinTable(
			name = "despachos_productos",
			joinColumns = @JoinColumn(name = "fk_despacho", nullable = false),
			inverseJoinColumns = @JoinColumn(name = "fk_producto", nullable = false)
	)
	@ManyToMany(cascade = CascadeType.ALL)
	private List<Producto> productos;
	
	
	
	public Long getIdDespacho() {
		return idDespacho;
	}

	public void setIdDespacho(Long idDespacho) {
		this.idDespacho = idDespacho;
	}

	public int getCantidadSalida() {
		return cantidadSalida;
	}

	public void setCantidadSalida(int cantidadSalida) {
		this.cantidadSalida = cantidadSalida;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Date getFechaSalida() {
		return fechaSalida;
	}

	public void setFechaSalida(Date fechaSalida) {
		this.fechaSalida = fechaSalida;
	}

	public Packing getPacking() {
		return packing;
	}

	public void setPacking(Packing packing) {
		this.packing = packing;
	}

	public Producto getProducto() {
		return producto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public List<Producto> getProductos() {
		return productos;
	}

	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}
	
	
	
	
	
	
	
}
