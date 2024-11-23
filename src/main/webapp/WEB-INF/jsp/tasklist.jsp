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
    <header>
        <h1>Mis tareas</h1>
    </header>
    <menu>
        <a class="button create" href="/add">Crear tarea</a>
    </menu>
    <section id="tasks">
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
                        <td class="status">
                            <span>
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
                            </span>
                        </td>
                        <td class="actions">
                            <a class="button" href="/edit/${task.id}">Editar</a>
                            <a class="button delete" href="/delete/${task.id}">Borrar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </section>
</body>
</html>
