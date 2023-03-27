package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Producto;

public interface ProductoRepository extends JpaRepository<Producto, Long>{
	
	@Query("SELECT p FROM Producto p WHERE nombre LIKE :fil")
	public List<Producto> listarPorNombre(@Param("fil") String filtro);

}
