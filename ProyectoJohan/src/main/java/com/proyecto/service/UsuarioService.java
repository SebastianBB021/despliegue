package com.proyecto.service;

import java.util.List;
import java.util.Optional;

import com.proyecto.entity.Usuario;

public interface UsuarioService {

	public List<Usuario> listaUsuario();
	public Usuario insertarYactualizarUsuario(Usuario obj);
	public Optional<Usuario> obtienerPorId(Long idUsaurio);
	public void eliminarUsuario(Long id);
	public List<Usuario> listarUsuarioPorNombre(String filtro);
}
