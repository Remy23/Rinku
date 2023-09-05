package com.control.rinku.repository;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;

import org.springframework.stereotype.Repository;

import com.control.rinku.connection.ConnectionDatabase;
import com.control.rinku.dto.DetalleSueldoDTO;
import com.control.rinku.dto.EmpleadoDTO;


import oracle.jdbc.OracleTypes;


@Repository
public class RinkuDaoImpl extends ConnectionDatabase {

//	@Override
//	public String prueba() {
//		return "Success";
//	}
//
//	@Override
//	public TestEntity pruebaEntity() {
//		TestEntity testEntity = new TestEntity();
//		testEntity.setId("1");
//		testEntity.setNombrePrueba("Remigio");
//		
//		return testEntity;
//	}

	public String guardarEmpleado(EmpleadoDTO empleadoDTO) throws SQLException {
		
		String result="";
		ResultSet rs = null;
		final String QUERY = "{call"+" RINKU_PKG.INSERT_EMPLEADO_SP(?,?,?,?,?,?,?)}"; 
		
		Connection conn = getConnection();
        CallableStatement objlStmnt= null;	
        
         try {
        	
        	objlStmnt = (CallableStatement) conn.prepareCall(QUERY); 
        	
            objlStmnt.setString(1,empleadoDTO.getNombre());
            objlStmnt.setString(2,empleadoDTO.getApellidoPaterno());
            objlStmnt.setString(3,empleadoDTO.getApellidoMaterno());
            objlStmnt.setString(4,empleadoDTO.getTelefono());
            objlStmnt.setString(5,empleadoDTO.getDireccion());
            objlStmnt.setString(6,String.valueOf(empleadoDTO.getRolEmpleado()));
            objlStmnt.registerOutParameter(7, OracleTypes.VARCHAR);
     
            objlStmnt.execute();
            result = (String) objlStmnt.getObject(7);
           
        } catch (SQLException e) {
        	System.out.println(e);
        } finally {
        	objlStmnt.close();
        	conn.close();
        }       
				
	return result;
	}
	
	
	public EmpleadoDTO buscarEmpleado(EmpleadoDTO empleadoDTO) throws SQLException {
        EmpleadoDTO  empleado= new EmpleadoDTO();
		ResultSet rs = null;
		final String QUERY = "{call"+" RINKU_PKG.GET_DATA_EMPLEADO(?,?)}"; 
		
		Connection conn = getConnection();
        CallableStatement objlStmnt= null;	
        
         try {
        	
        	objlStmnt = (CallableStatement) conn.prepareCall(QUERY); 
        	
            objlStmnt.setInt(1,empleadoDTO.getId());
            objlStmnt.registerOutParameter(2, OracleTypes.CURSOR);
     
            objlStmnt.execute();
            rs = (ResultSet) objlStmnt.getObject(2);

            while (rs.next()) {
            	
            	empleado.setId(rs.getInt("ID"));
            	empleado.setNombre(rs.getString("NOMBRE"));
            	empleado.setRolEmpleado(Long.valueOf(rs.getInt("rol_empleado")));
            	empleado.setCodigoRol(rs.getString("codigo_rol"));
            }
           
        } catch (SQLException e) {
        	System.out.println(e);
        } finally {
        	objlStmnt.close();
        	conn.close();
        }       
				
	return empleado;
	}
	
	
	public String registroHistoricoMEs(int empleadoId, int rolId, int mesId, int cantidadEntrega) throws SQLException {
		
		String result="";
		ResultSet rs = null;
		final String QUERY = "{call"+" RINKU_PKG.INSERT_HISTORICO_MOV_SP(?,?,?,?,?)}"; 
		
		Connection conn = getConnection();
        CallableStatement objlStmnt= null;	
        
         try {
        	
        	objlStmnt = (CallableStatement) conn.prepareCall(QUERY); 
        	
            objlStmnt.setInt(1,empleadoId);
            objlStmnt.setInt(2,rolId);
            objlStmnt.setInt(3,mesId);
            objlStmnt.setInt(4,cantidadEntrega);
            objlStmnt.registerOutParameter(5, OracleTypes.VARCHAR);
     
            objlStmnt.execute();
            result = (String) objlStmnt.getObject(5);
           
        } catch (SQLException e) {
        	System.out.println(e);
        } finally {
        	objlStmnt.close();
        	conn.close();
        }       
				
	return result;
	}
	
	public DetalleSueldoDTO buscarDetalle(EmpleadoDTO empleadoDTO, int mes) throws SQLException {
		DetalleSueldoDTO  detalle= new DetalleSueldoDTO();
		ResultSet rs = null;
		final String QUERY = "{call"+" RINKU_PKG.GET_CALCULO_DETALLE(?,?,?)}"; 
		
		Connection conn = getConnection();
        CallableStatement objlStmnt= null;	
        
         try {
        	
        	objlStmnt = (CallableStatement) conn.prepareCall(QUERY); 
        	
            objlStmnt.setInt(1,empleadoDTO.getId());
            objlStmnt.setInt(2,mes);
            objlStmnt.registerOutParameter(3, OracleTypes.CURSOR);
     
            objlStmnt.execute();
            rs = (ResultSet) objlStmnt.getObject(3);

            while (rs.next()) {
            	
            	detalle.setHorasTrabajadas(rs.getString("horas_trabajadas"));
            	detalle.setTotalPorEntregas(rs.getString("total_por_entregas"));
            	detalle.setTotalPorBonos(rs.getString("total_por_bonos"));
            	detalle.setRetencion(rs.getString("retencion"));
            	detalle.setVales(rs.getString("vales"));
            	detalle.setSueldoTotal(rs.getString("sueldo_total"));
            	detalle.setNombreEmpleado(rs.getString("NOMBRE_EMPLEADO"));
            }
           
        } catch (SQLException e) {
        	System.out.println(e);
        } finally {
        	objlStmnt.close();
        	conn.close();
        }       
				
	return detalle;
	}
		
}





