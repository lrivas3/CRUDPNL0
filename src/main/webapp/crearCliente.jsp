<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <%@include file="components/header.jsp" %>

    <%@include file="components/bodyprimeraparte.jsp" %>

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Creación de clientes</h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i> Descargar</a>
        </div>

        <!-- Begin of Main Content -->

        <!-- Area Chart -->
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <!-- Card Body -->
                <div class="card-body">
                    <br>
                                        <br>

                    <center>
                        <h2>Ingrese los datos del cliente</h2>
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
<br>
                                        <br>

                    </div>
                </div>
            </div>
        </div>


        <%@include file="components/bodypartefinal.jsp" %>

</html>