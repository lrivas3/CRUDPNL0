<%-- 
    Document   : editarCliente
    Created on : Sep 22, 2023, 2:17:03 PM
    Author     : th3gent
--%>

<%@page import="x.crudprogra.logica.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Editar Cliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>

    <center>
        <h1>Editar Cliente</h1>
    </center>

    <% Cliente cli = (Cliente) request.getSession().getAttribute("cliEditar");%>

    <div class="container">
        <form action="SvEditar" method="POST">
            <div class="mb-3">
                <label class="form-label" for="nombre">
                    Nombre
                </label>
                <input class="form-control" id="nombre" name="nombre" type="text" value="<%=cli.getNombre()%>"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="apellido">
                    Apellido
                </label>
                <input class="form-control" id="apellido" name="apellido" type="text" value="<%=cli.getApellido()%>"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="email">
                    Email
                </label>
                <input class="form-control" id="email" name="email" type="text" value="<%=cli.getEmail()%>"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="telefono">
                    Telefono
                </label>
                <input class="form-control" id="telefono" name="telefono" type="text" value="<%=cli.getTelefono()%>"/>
            </div>
            <div class="mb-3">
                <label class="form-label" for="saldo">
                    Saldo
                </label>
                <input class="form-control" id="saldo" name="saldo" type="text" value="<%=cli.getSaldo()%>"/>
            </div>
            <div>
                <input class="btn btn-outline-primary" type="submit" value="Editar">
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
