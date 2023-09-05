package com.control.rinku.dto;

public class EmpleadoDTO {
	private int id;
	private String nombre;
	private String apellidoPaterno;
	private String apellidoMaterno;
	private String telefono;
	private String direccion;
	private Long rolEmpleado;
	private String codigoRol;
	
	
	
	public String getCodigoRol() {
		return codigoRol;
	}
	public void setCodigoRol(String codigoRol) {
		this.codigoRol = codigoRol;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidoPaterno() {
		return apellidoPaterno;
	}
	public void setApellidoPaterno(String apellidoPaterno) {
		this.apellidoPaterno = apellidoPaterno;
	}
	public String getApellidoMaterno() {
		return apellidoMaterno;
	}
	public void setApellidoMaterno(String apellidoMaterno) {
		this.apellidoMaterno = apellidoMaterno;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public Long getRolEmpleado() {
		return rolEmpleado;
	}
	public void setRolEmpleado(Long rolEmpleado) {
		this.rolEmpleado = rolEmpleado;
	}
	
	
}
