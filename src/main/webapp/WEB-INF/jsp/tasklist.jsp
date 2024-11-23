<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mis tareas</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="<c:url value="/resources/static/style.css" />" rel="stylesheet">
</head>
<body>
    <h1>Mis tareas</h1>
    <a href="/add">Crear tarea</a>
    <table>
        <thead>
            <tr>
                <th>Título</th>
                <th>Descripción</th>
                <th>Estado</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${tasks}" var="task">
                <tr>
                    <td>${task.title}</td>
                    <td>${task.description}</td>
                    <td>
                        <c:choose>
                            <c:when test="${task.completed}">
                                Hecha
                                <a class="button todo" href="/toggle/${task.id}">✖</a>
                            </c:when>
                            <c:otherwise>
                                Por hacer
                                <a class="button done" href="/toggle/${task.id}">✔</a>
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td>
                        <a href="/edit/${task.id}">Editar</a>
                        <a href="/delete/${task.id}">Borrar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
