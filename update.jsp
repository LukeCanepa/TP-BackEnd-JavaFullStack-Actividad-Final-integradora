<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%--Importamos todas las librerias de mysql --%> 
<%@ page import = "java.sql.*" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Codo a Codo - Conf Bs As - Actualización de compra de tickets </title>
</head>
<body>

	<%	
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String mail = request.getParameter("mail");
		String cantidad = request.getParameter("cantidad");
		String categoria = request.getParameter("categoria");

		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try{
			Connection cn = DriverManager.getConnection ("jdbc:mysql://localhost:3306/comprarticket","root","");
			Statement stm = cn.createStatement();
			ResultSet rsId = stm.executeQuery("SELECT MAX(id) FROM ticket");
			int valor = 1;
			
			while(rsId.next()){

				int eid = rsId.getInt(1);

				String consulta = "UPDATE ticket SET nombre='"+ nombre + "',apellido='" + apellido +" ',mail='"+ mail +"',cantidad='"+ cantidad +"', categoria='" + categoria + "' WHERE id = "+ eid +"";
				stm.executeUpdate(consulta);

			}
			
			
		}catch(Exception e) {
			out.print("Atención! -> Error al cargar en la Tabla ticket de la Base de Datos comprarticket para realizar el Update!!");
		}
		
		
	
	%>

<!--Regreso a la pagina de compra de tickets--> 
 
<jsp:include page="compradetickets.html"></jsp:include>

</body>
</html>