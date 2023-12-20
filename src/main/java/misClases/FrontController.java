package misClases;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FrontController() 
    {
        super();
        
    }    
        
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String accion=null;
		TicketsDAO ticketDAO=null;
		try
		{
			ticketDAO=new TicketsDAO();			
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		
		RequestDispatcher dispatcher=null;
		accion=request.getParameter("accion");
		
		if (accion==null||accion.isEmpty())
		{
			dispatcher=request.getRequestDispatcher("Vistas/conferencia.jsp");
		}
		else if (accion.equals("comprar"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/comprar-tickets.jsp");
		}
		else if (accion.equals("backoffice"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/backoffice.jsp");
		}
		else if (accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			ticketDAO.eliminar(id);			
			dispatcher=request.getRequestDispatcher("Vistas/backoffice.jsp");
		}
		else if (accion.equals("volver"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/conferencia.jsp");
		}
		else if (accion.equals("insertar"))
		{
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			String mail=request.getParameter("mail");
			int cant=Integer.parseInt(request.getParameter("cant"));
			int categoria=Integer.parseInt(request.getParameter("categoria"));
			float total=0;
			
			if (categoria == 1) {total=(float) ((cant*200)*0.2);}
			if (categoria == 2) {total=(float) ((cant*200)*0.5);}
			if (categoria == 3) {total=(float) ((cant*200)*0.85);}
			if (categoria == 4) {total=(float) (cant*200);}			
			
			//total = resultado de cantidad de tickets por tipo de ticket
			
			Tickets ticket=new Tickets(0, nombre,apellido,mail,cant,categoria,total);           
			ticketDAO.insertarTicket(ticket);			  
			dispatcher=request.getRequestDispatcher("Vistas/conferencia.jsp");
		}
		
		
		
		
		dispatcher.forward(request, response);
			
	}
		
			
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		doGet(request, response);
	}

}
