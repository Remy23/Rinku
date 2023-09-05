package com.control.rinku.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.control.rinku.dto.DetalleSueldoDTO;
import com.control.rinku.dto.EmpleadoDTO;
import com.control.rinku.repository.RinkuDaoImpl;

@Service
public class RinkuInterfaceImpl implements RinkuInterface{

	@Autowired
	private RinkuDaoImpl rinkuDaoImp;
	
	@Override
	public String guardarEmpleado(EmpleadoDTO empleadoDTO) throws SQLException {
		return rinkuDaoImp.guardarEmpleado(empleadoDTO);
	}

	@Override
	public EmpleadoDTO buscarEmpleado(EmpleadoDTO empleadoDTO) throws SQLException {
		return rinkuDaoImp.buscarEmpleado(empleadoDTO);
	}
	
	@Override
	public String registroHistoricoMEs(int empleadoId, int rolId, int mesId, int cantidadEntrega) throws SQLException {
		return rinkuDaoImp.registroHistoricoMEs(empleadoId, rolId, mesId, cantidadEntrega);
	}
	
	@Override
	public DetalleSueldoDTO buscarDetalle(EmpleadoDTO empleadoDTO, int mes) throws SQLException {
		return rinkuDaoImp.buscarDetalle(empleadoDTO, mes);
	}
	
}
