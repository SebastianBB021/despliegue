package com.proyecto.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.proyecto.entity.Inventario;

public interface InventarioRepository extends JpaRepository<Inventario, Long> {

}
