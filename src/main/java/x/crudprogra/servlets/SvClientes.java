
package x.crudprogra.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import x.crudprogra.logica.Cliente;
import x.crudprogra.logica.Controladora;


@WebServlet(name = "SvClientes", urlPatterns = {"/SvClientes"})
public class SvClientes extends HttpServlet {

    Controladora control = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Cliente> listaClientes = new ArrayList<>();
        
        listaClientes = (List<Cliente>) control.traerClientes();
        
        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaClientes", listaClientes);
        
        response.sendRedirect("mostrarClientes.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String saldo = request.getParameter("saldo");
        
        double saldoValue;
        
                if (saldo.isEmpty()) {
            saldoValue = 0.0; 
                } else {
            try {
                saldoValue = Double.parseDouble(saldo);
            } catch (NumberFormatException e) {
                saldoValue = 0.0;
            }   
                }
        
        Cliente cliente = new Cliente();
        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setEmail(email);
        cliente.setTelefono(telefono);
        cliente.setSaldo(saldoValue);
        
        control.crearCliente(cliente);
        
        response.sendRedirect("index.jsp");

    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
