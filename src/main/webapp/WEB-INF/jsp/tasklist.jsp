<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Tareas</title>
</head>
<body>
    <h1>Lista de Tareas</h1>
    <a href="/add">Agregar Tarea</a>
    <table>
        <thead>
            <tr>
                <th>Titulo</th>
                <th>Descripcion</th>
                <th>Completada</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${tasks}" var="task">
                <tr>
                    <td>${task.title}</td>
                    <td>${task.description}</td>
                    <td>${task.completed}</td>

                    <td>
                        <a href="/edit/${task.id}">Editar</a>
                        <a href="/delete/${task.id}">Eliminar</a>
                        <a href="/toggle/${task.id}">Cambiar Estado</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
