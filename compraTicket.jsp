<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TP Integrador JAVA - Compra de tickets</title>
</head>
<body>


<%
	
	String nombre=request.getParameter("nombre");
	String apellido=request.getParameter("apellido");
	String mail=request.getParameter("mail");
	String cant=request.getParameter("cantidad");
	String categ=request.getParameter("categoria");	 
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	try{
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/comprarticket","root","");
		Statement stm=cn.createStatement();
		
		String sentencia="INSERT INTO ticket (nombre,apellido,mail,cantidad,categoria) VALUES ('"+nombre+"','"+ apellido+"','"+ mail +"','"+ cant+ "','"+ categ+ "')";
	
		stm.executeUpdate(sentencia);
		
	}catch(Exception e){
		out.print("Atención! -> Error al cargar en la Tabla ticket de la Base de Datos comprarticket!!");	
		
	}	
	
%>

<jsp:include page="ticket.jsp"></jsp:include>

</body>
</html>