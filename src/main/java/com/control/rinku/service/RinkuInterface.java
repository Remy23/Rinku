package com.control.rinku.service;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.web.bind.annotation.RequestParam;

import com.control.rinku.dto.DetalleSueldoDTO;
import com.control.rinku.dto.EmpleadoDTO;

public interface RinkuInterface {
	public String guardarEmpleado(EmpleadoDTO empleadoDTO) throws SQLException;
	public EmpleadoDTO buscarEmpleado(EmpleadoDTO empleadoDTO) throws SQLException;
	public String registroHistoricoMEs(int empleadoId, int rolId, int mesId, int cantidadEntrega)throws SQLException;
	public DetalleSueldoDTO buscarDetalle(EmpleadoDTO empleadoDTO, int mes)throws SQLException;
}
