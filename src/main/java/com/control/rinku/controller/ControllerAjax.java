package com.control.rinku.controller;

import java.sql.SQLException;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.control.rinku.dto.DetalleSueldoDTO;
import com.control.rinku.dto.EmpleadoDTO;
import com.control.rinku.service.RinkuInterface;
import com.control.rinku.service.RinkuService;

@RestController
public class ControllerAjax {

	@Autowired
	private RinkuInterface rinkuInterface;
	
	@Autowired
	RinkuService rinkuService;

	@RequestMapping(value = "/altaEmpleado", method = RequestMethod.GET)
	public String altaEmpleado(@RequestParam("nombre") String nombre, @RequestParam("apellidoPaterno") String apellidoPaterno, @RequestParam("apellidoMaterno") String apellidoMaterno, @RequestParam("direccion") String direccion, @RequestParam("telefono") String telefono, @RequestParam("rol") String rol) throws SQLException {
		EmpleadoDTO empleadoDTO = rinkuService.bluidDataEmpleado(nombre, apellidoPaterno, apellidoMaterno, direccion, telefono, rol);
		String result = rinkuInterface.guardarEmpleado(empleadoDTO);
		return result;
	}
	
	@RequestMapping(value = "/buscarEmpleado", method = RequestMethod.GET)
	public EmpleadoDTO busccarEmpleado(@RequestParam("numeroEmpleado") int numeroEmpleado) throws SQLException {
		EmpleadoDTO empleadoDTO = new EmpleadoDTO ();
		empleadoDTO.setId(numeroEmpleado);
		EmpleadoDTO result = rinkuInterface.buscarEmpleado(empleadoDTO);
		return result;
	}
	
	@RequestMapping(value = "/registroMovimientoMes", method = RequestMethod.GET)
	public String regitroMovimiento(@RequestParam("empleadoId") int empleadoId, @RequestParam("rolEmpleadoId") int rolId, @RequestParam("mes") int mesId, @RequestParam("cantidadEntrega") int cantidadEntrega) throws SQLException {
		String result = rinkuInterface.registroHistoricoMEs(empleadoId, rolId, mesId, cantidadEntrega);
		return result;
	}
	
	@RequestMapping(value = "/detalleSueldo", method = RequestMethod.GET)
	public DetalleSueldoDTO detalleSueldo(@RequestParam("empleadoId") int empleadoId, @RequestParam("mes") int mes) throws SQLException {
		EmpleadoDTO empleadoDTO = new EmpleadoDTO ();
		empleadoDTO.setId(empleadoId);
		DetalleSueldoDTO detalleSueldoDTO = rinkuInterface.buscarDetalle(empleadoDTO, mes);
		return detalleSueldoDTO;
	}

}