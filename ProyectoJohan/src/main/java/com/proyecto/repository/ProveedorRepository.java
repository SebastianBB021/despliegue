package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Proveedor;

public interface ProveedorRepository extends JpaRepository<Proveedor, Long> {
 
	@Query("SELECT p FROM Proveedor p WHERE nombre LIKE :fil")
	public List<Proveedor> listaProveedorPorNombre(@Param("fil")String filtro);
}
