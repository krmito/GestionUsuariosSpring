<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Gestión de Usuarios</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="<c:url value="/public/css/estilos.css"/>"/>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1 class="tituloCentrar">Gestión de Usuarios</h1>
                </div>
            </div>
        </div>
        
        
        <div class="container">
            <div class="row">
                <p>
                    <a href="add.htm" class="btn btn-success">Agregar</a>
                </p>
                
                <table class="table table-hover table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>NOMBRE</th>
                            <th>CORREO</th>
                            <th>TELEFONO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${datos}" var="dato">
                            <tr>
                                <td><c:out value="${dato.id}"/> </td>
                                <td><c:out value="${dato.nombre}"/> </td>
                                <td><c:out value="${dato.correo}"/> </td>
                                <td><c:out value="${dato.telefono}"/> </td>
                                <td>
                                    <a href="edit.htm?id=${dato.id}" class="btn btn-success">Editar</a>
                                    <a href="delete.htm?id=${dato.id}" class="btn btn-danger">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
