<%-- 
    Document   : index
    Created on : Sep 22, 2023, 11:27:24 AM
    Author     : th3gent
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>
    <body>
        <center>
            <h1>Creación de Cliente</h1>
        </center>
        
        <div class="container">
            <form action="SvClientes" method="POST">
                <div class="mb-3">
                    <label class="form-label" for="nombre">
                        Nombre
                    </label>
                    <input class="form-control" id="nombre" name="nombre" type="text" placeholder="Ingrese su nombre"/>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="apellido">
                        Apellido
                    </label>
                    <input class="form-control" id="apellido" name="apellido" type="text" placeholder="Ingrese su apellido"/>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="email">
                        Email
                    </label>
                    <input class="form-control" id="email" name="email" type="text" placeholder="Ingrese su email"/>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="telefono">
                        Telefono
                    </label>
                    <input class="form-control" id="telefono" name="telefono" type="text" placeholder="Ingrese su telefono"/>
                </div>
                <div class="mb-3">
                    <label class="form-label" for="saldo">
                        Saldo
                    </label>
                    <input class="form-control" id="saldo" name="saldo" type="text" placeholder="Ingrese su saldo"/>
                </div>
                <div>
                    <input class="btn btn-outline-primary" type="submit" value="Crear">
                </div>
            </form>
            
            <center>
                <h1>Ver clientes</h1>
            </center>
            <p>Click en el botón para ver los clientes</p>
            
            <form action="SvClientes" method="GET">
                <button class="btn btn-outline-primary" type="submit" > Mostrar Clientes </button> 
            </form>
            
            
            <h1>Eliminar clientes</h1>
            <p>Click en el botón para ver los clientes</p>
            
            <form action="SvEliminar" method="POST">
                <div class="mb-3">
                    <label class="form-label" for="id">
                        Id de usuario
                    </label>
                    <input class="form-control" id="id" name="id_cliente" type="text" placeholder="Ingrese el id de usuario"/>
                </div>
                <button class="btn btn-outline-danger" type="submit" > Eliminar Cliente </button> 
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>
