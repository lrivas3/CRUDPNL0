
package x.crudprogra.servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import x.crudprogra.logica.Cliente;

@WebServlet("/DownloadCSVServlet")
public class DownloadCSVServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/csv");
        response.setHeader("Content-Disposition", "attachment; filename=\"clientes.csv\"");

        List<Cliente> listaClientes = (List<Cliente>) request.getSession().getAttribute("listaClientes");

        try (PrintWriter writer = response.getWriter()) {
            writer.println("N° Cliente,Id,Nombre,Apellido,Email,Telefono,Saldo");

            int contador = 1;
            for (Cliente cli : listaClientes) {
                writer.printf("%d,%d,%s,%s,%s,%s,%s%n",
                        contador, cli.getIdCliente(), cli.getNombre(), cli.getApellido(),
                        cli.getEmail(), cli.getTelefono(), cli.getSaldo());
                contador++;
            }
        }
    }
}
