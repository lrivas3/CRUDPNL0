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
    <%@include file="components/header.jsp" %>

    <%@include file="components/bodyprimeraparte.jsp" %>

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800"></h1>
            <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                    class="fas fa-download fa-sm text-white-50"></i> Descargar</a>
        </div>

        <!-- Begin of Main Content -->

        <!-- Area Chart -->
        <div class="col-xl-12 col-lg-12">
            <div class="card shadow mb-4">
                <!-- Card Body -->
                <div class="card-body">

                    <center>
                    <h1>Gestionar Clientes</h1>

                    </center>
                    <p>Click en el botón para refrescar los clientes</p>

                    <form action="SvClientes" method="GET">
                        <button class="btn btn-outline-primary" type="submit" > Mostrar Clientes </button> 
                    </form>


                </div>
            </div>
        </div>

        <!-- Tabla -->

        <div class="container-fluid">

            <!-- DataTales Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Lista de clientes</h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                            <thead>
                                <tr>
                                    <th>N° Cliente</th>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Email</th>
                                    <th>Telefono</th>
                                    <th>Saldo</th>
                                    <th style="width: 200px">Acción</th>

                                </tr>
                            </thead>
                            <tfoot>
                                <tr>
                                    <th>N° Cliente</th>
                                    <th>Id</th>
                                    <th>Nombre</th>
                                    <th>Apellido</th>
                                    <th>Email</th>
                                    <th>Telefono</th>
                                    <th>Saldo</th>
                                    <th style="width: 210px">Acción</th>
                                </tr>
                            </tfoot>
                            <tbody>


                                <%
                                    List<Cliente> listaClientes = (List) request.getSession().getAttribute("listaClientes");

                                    int contador = 1;

                                    for (Cliente cli : listaClientes) {


                                %>

                                <tr>
                                    <td><%=contador%></td>
                                    <td><%=cli.getIdCliente()%></td>
                                    <td><%=cli.getNombre()%></td>
                                    <td><%= cli.getApellido()%></td>
                                    <td><%= cli.getEmail()%></td>
                                    <td><%= cli.getTelefono()%></td>
                                    <td><%= cli.getSaldo()%></td>
                                    <td style="display: flex; width: 230px;">
                                        <form name="eliminar" action="SvEliminar" method="POST">
                                            <button type="submit" class="btn btn-danger btn-use btn-block" style="margin-right: 10px;">
                                                <i class="fas fa-solid fa-trash"></i>Eliminar
                                            </button>
                                            <input type="hidden" id="id" name="id_cliente" value="<%=cli.getIdCliente()%>">
                                        </form>
                                        <form name="id" action="SvEditar" method="GET">
                                            <button type="submit" class="btn btn-warning btn-use btn-block" style="margin-right: 5px;">
                                                <i class="fas fa-solid fa-pen"></i>Editar
                                            </button>
                                            <input type="hidden" id="id" name="id" value="<%=cli.getIdCliente()%>">
                                        </form>
                                    </td>
                                </tr>

                                <% contador = contador + 1;%>
                                <% }%>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>

    <!-- Fin Tabla -->

    <%@include file="components/bodypartefinal.jsp" %>
</html>
