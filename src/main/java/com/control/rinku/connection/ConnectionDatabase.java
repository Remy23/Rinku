package com.control.rinku.connection;
import java.sql.*;

public class ConnectionDatabase {
	public Connection getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1", "rinku", "admin");
			return con;
		} catch (Exception ex) {
			System.out.println("Error en la conexión de la base de datos: "	+ ex);
		}
		return null;
	}

//	public static void main(String args[]) {
//		ConnectionDatabase conexion = new ConnectionDatabase();
//		conexion.getConnection();
//	}
}
