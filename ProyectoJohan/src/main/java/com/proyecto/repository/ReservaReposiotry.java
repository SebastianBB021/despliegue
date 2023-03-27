package com.proyecto.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.proyecto.entity.Reserva;

public interface ReservaReposiotry extends JpaRepository<Reserva, Long> {
	
	@Query("SELECT r FROM Reserva r WHERE direccion LIKE :fil")
	public List<Reserva> listaReservaPorDireccion(@Param("fil")String filtro);

}
