<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar tarea</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="<c:url value="/resources/static/style.css" />" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Editar tarea</h1>
    </header>
    <section>
        <form:form method="put" modelAttribute="task" id="edit">
            <form:hidden path="id"/>
            <div>
                <label for="title">Título</label>
                <form:input path="title" id="title" required="required"/>
            </div>
            <div>
                <label for="description">Descripción</label>
                <form:textarea path="description" id="description" required="required"/>
            </div>
            <menu>
                <a class="button secondary" href="/all">Volver</a>
                <button class="button" type="submit" form="edit">Guardar</button>
            </menu>
        </form:form>
    </section>
</body>
</html>
