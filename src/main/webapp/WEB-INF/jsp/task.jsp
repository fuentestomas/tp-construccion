<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tarea</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="<c:url value="/resources/static/style.css" />" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Tarea</h1>
    </header>
    <section class="view">
        <div style="grid-row: 1;">
            <p><strong>Título</strong></p>
            <p>${task.title}</p>
        </div>
        <div style="grid-row: 2;">
            <p><strong>Descripción</strong></p>
            <p>${task.description}</p>
        </div>
        <menu style="grid-row: 3;">
            <a class="button secondary" href="/all">Volver</a>
        </menu>
    </section>
</body>
</html>
