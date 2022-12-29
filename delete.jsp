<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%--Importamos todas las librerias de mysql --%> 
<%@ page import = "java.sql.*" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Codo a Codo - Conf Bs As - Borrar la compra de tickets </title>
</head>
<body>

	<%	//Se va a trabajar con la actualizacion de un campo "alta"		
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try{
			Connection cn = DriverManager.getConnection ("jdbc:mysql://localhost:3306/comprarticket","root","");
			
			Statement stm = cn.createStatement();
			
			
			ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
			
			// Se actualiza de la tabla TIKET, el campo alta, atravez del id del ultimo valor ingresado
			while(rsId.next()){

				int eid = rsId.getInt(1); //genero la variable "eid", y le ingreso los datos obtenidos
				int valor = 0;

				//Elijo modificar solo 1 valor, en este caso ALTA
				String consulta = "UPDATE `ticket` SET alta= "+ valor +" WHERE id = "+ eid +" ";
				stm.executeUpdate(consulta);

			}
			
			
		}catch(Exception e) {
			out.print("Atención! -> Error al cargar en la Tabla ticket de la Base de Datos comprarticket para realizar el Delete!!");
		}
		
	
	%>
	
<!-- Regreso a la pagina de compra de tickets-->
<jsp:include page="compradetickets.html"></jsp:include>

</body>
</html>