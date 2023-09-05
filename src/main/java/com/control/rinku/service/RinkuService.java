package com.control.rinku.service;
import org.springframework.stereotype.Service;
import com.control.rinku.dto.EmpleadoDTO;

@Service
public class RinkuService{
	
	public EmpleadoDTO bluidDataEmpleado(String nombre, String apellidoPaterno, String apellidoMaterno, String direccion, String telefono, String rol) {
		EmpleadoDTO empleadoDTO = new EmpleadoDTO();
		empleadoDTO.setNombre(nombre);
		empleadoDTO.setApellidoPaterno(apellidoPaterno);
		empleadoDTO.setApellidoMaterno(apellidoMaterno);
		empleadoDTO.setDireccion(direccion);
		empleadoDTO.setTelefono(telefono);
		empleadoDTO.setRolEmpleado(Long.valueOf(rol));
		return empleadoDTO;
	}
}
