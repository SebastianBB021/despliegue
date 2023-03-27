package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Contrato;

public interface ContratoRepository extends JpaRepository<Contrato, Long> {
	
	@Query("SELECT c FROM Contrato c WHERE detalle LIKE :fil")
	public List<Contrato> listaContratoPorNombre(@Param("fil")String filtro);

}
