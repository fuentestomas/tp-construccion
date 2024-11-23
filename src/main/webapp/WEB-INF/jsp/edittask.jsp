<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Tarea</title>
    <link href="<c:url value="/resources/static/style.css" />" rel="stylesheet">
</head>
<body>
    <h1>Editar Tarea</h1>
    <form:form method="put" modelAttribute="task">
        <form:hidden path="id"/>
        <div>
            <label for="title">Titulo:</label>
            <form:input path="title" id="title"/>
        </div>
        <div>
            <label for="description">Descripcion:</label>
            <form:textarea path="description" id="description"/>
        </div>
        <button type="submit">Guardar Cambios</button>
    </form:form>
</body>
</html>
