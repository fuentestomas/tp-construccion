<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Agregar Tarea</title>
</head>
<body>
    <h1>Agregar Tarea</h1>
    <form:form method="post" modelAttribute="task">
        <div>
            <label for="title">Titulo:</label>
            <form:input path="title" id="title"/>
        </div>
        <div>
            <label for="description">Descripcion:</label>
            <form:textarea path="description" id="description"/>
        </div>
        <button type="submit">Agregar</button>
    </form:form>
</body>
</html>