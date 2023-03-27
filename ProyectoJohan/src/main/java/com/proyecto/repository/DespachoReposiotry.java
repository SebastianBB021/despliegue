package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Despacho;

public interface DespachoReposiotry extends JpaRepository<Despacho,Long> {
	
	@Query("SELECT d FROM Despacho d WHERE estado LIKE :fil")
	public List<Despacho> listaPorNombre(@Param("fil")String filtro);

}
