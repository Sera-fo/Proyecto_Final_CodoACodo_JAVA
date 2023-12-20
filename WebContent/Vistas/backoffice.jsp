<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="misClases.Tickets"%>
<%@page import="misClases.TicketsDAO"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <script src="https://kit.fontawesome.com/80410357c3.js" crossorigin="anonymous"></script>
<title>Back Office</title>
</head>
<body>

<div class="container">
   <h1 class="text-primary">PANEL DE CONTROL</h1>
   <div class="row">
     <table>
       <thead>
         <th>ID Venta</th>
         <th>Nombre</th>
         <th>Apellido</th>
         <th>Mail</th>
         <th>Cantidad</th>
         <th>Tipo</th>
         <th>Total</th>
         <th>Eliminar</th>            
       </thead>
       <%
       List<Tickets> resultado=null;
       TicketsDAO ticket=new TicketsDAO();
       resultado=ticket.listarTickets();
       int totalFacturado=0;
       
       for(int x=0;x<resultado.size();x++)
		{
		String rutaE="FrontController?accion=eliminar&id="+resultado.get(x).getId();	
		String tipoTicketTexto;
		if(resultado.get(x).getTipo_ticket()==1)
		{
			tipoTicketTexto="Estudiante";
		}
		else if(resultado.get(x).getTipo_ticket()==2)
		{
			tipoTicketTexto="Trainee";
		}
		else if(resultado.get(x).getTipo_ticket()==3)
		{
			tipoTicketTexto="Junior";
		}
		else
		{
			tipoTicketTexto="General";
		}		
       %>              
       <tbody>
         <tr>
           <td><%=resultado.get(x).getId()%></td>
           <td><%=resultado.get(x).getNombre()%></td>
           <td><%=resultado.get(x).getApellido()%></td>
           <td><%=resultado.get(x).getMail()%></td>
           <td><%=resultado.get(x).getCant()%></td>
           <td><%=tipoTicketTexto%></td>
           <td><%=resultado.get(x).getTotal_facturado()%></td>
           <td class="text-center"> <a href=<%=rutaE%>> <i class="fa-regular fa-rectangle-xmark"></i></a></td>
         </tr> 
         
         <%
         totalFacturado+=resultado.get(x).getTotal_facturado();
		 }
         %>
         
         <tr>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td></td>
           <td> </td>
           <td class="text-danger"><%=totalFacturado%></td>
         </tr>       
       </tbody> 
       
       <a class="btn btn-success col-2 m-2" href="FrontController?accion=volver">Volver</a>
             
     </table>
   
   </div>
   

</div>



</body>
</html>