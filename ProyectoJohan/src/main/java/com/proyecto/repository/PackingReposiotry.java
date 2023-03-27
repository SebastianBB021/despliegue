package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Packing;

public interface PackingReposiotry extends JpaRepository<Packing, Long> {

	@Query("SELECT p FROM Packing p WHERE cantidadEntrada LIKE :fil")
	public List<Packing> listaPackingPorNobre(@Param("fil")String filtro);
}
