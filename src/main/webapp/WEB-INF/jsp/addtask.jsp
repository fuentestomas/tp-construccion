<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Crear tarea</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="<c:url value="/resources/static/style.css" />" rel="stylesheet">
</head>
<body>
    <h1>Crear tarea</h1>
    <form:form method="post" modelAttribute="task">
        <div>
            <label for="title">Título:</label>
            <form:input path="title" id="title"/>
        </div>
        <div>
            <label for="description">Descripción:</label>
            <form:textarea path="description" id="description"/>
        </div>
        <button type="submit">Crear</button>
    </form:form>
</body>
</html>
