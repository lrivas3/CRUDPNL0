<%-- 
    Document   : mostrarClientes
    Created on : Sep 22, 2023, 12:11:51 PM
    Author     : th3gent
--%>

<%@page import="java.util.List"%>
<%@page import="x.crudprogra.logica.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Clientes</title>
    </head>
    <body>
        <h1>Lista de clientes registrados</h1>
        
        <%
            List<Cliente> listaClientes = (List) request.getSession().getAttribute("listaClientes");
            
            int contador = 1;
            
        for (Cliente cli:listaClientes) {

            
        %>
        
                <p><b>Cliente N°<%=contador%></b></p>
                <p>Id: <%=cli.getIdCliente() %> </p>
                <p>Nombre: <%=cli.getNombre() %> </p>
                <p>Apellido: <%= cli.getApellido() %>  </p>
                <p>Email: <%= cli.getEmail()%>  </p>
                <p>Telefono: <%= cli.getTelefono()%>  </p>
                <p>Saldo: <%= cli.getSaldo()%> </p>
                <p>-------------------------------</p>
                
                <% contador = contador +1;%>
        <% }%>
    </body>
</html>
