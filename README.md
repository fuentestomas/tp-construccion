# Tareas Spring Boot

Esta aplicación Spring Boot permite gestionar una lista de tareas simple con una base de datos SQLite.

## Integrantes
* Battagliero, Stefano
* Fuentes, Tomas
* Sarmiento, Lucia

## Dependencias
* Java 21
* Maven
* SQLite

## Cómo buildear
Ejecutar `mvn spring-boot:run` en el directorio raíz del proyecto.

## Visualizar la base de datos

Para visualizar la base de datos, sigue estos pasos:

1. **Abre una terminal** y navega hasta el directorio raíz del proyecto.
2. **Ejecuta el siguiente comando:**

   ```sqlite3 db.sqlite3 -header -cmd '.mode qbox' -cmd '.width auto'```

3. **Dentro de la consola de SQLite**, ejecuta
    ```SELECT * FROM Task;```

    Esto mostrará el contenido de la tabla "Task" en un formato legible.

## Uso de la aplicación
Al iniciar la aplicación en http://localhost:8080, se mostrará una lista de las tareas creadas. Puedes realizar las siguientes acciones:

* Crear una nueva tarea: Haz clic en "Crear tarea" para acceder al formulario de creación.
* Editar una tarea existente: Haz clic en "Editar" junto a la tarea que deseas modificar.
* Cambiar el estado de una tarea: Utiliza los botones ✅ y ❌ para marcar una tarea como "Hecha" o "Por hacer".

## Capturas de pantalla

#### Pantalla principal
![Pantalla principal](./screenshots/Listado%20vacio.png)

#### Formulario de creación de tareas
![Formulario de creación de tareas](./screenshots/Formulario%20crear.png)
![Pantalla principal con tarea creada](./screenshots/Listado%20con%20resultado.png)

#### Formulario de edición de tareas
![Formulario de edición de tareas](./screenshots/Formulario%20editar.png)
![Pantalla principal con tarea editada](./screenshots/Formulario%20con%20resultado%20editado.png)

#### Cambio de estado de una tarea

![Cambio de estado de una tarea](./screenshots/Cambio%20de%20estado.png)

## Video demostrativo
[![Video de ejemplo](./screenshots/Listado%20vacio.png)](https://drive.google.com/file/d/18Hza64L3OMJ3SvWYqyZMExtlC7ONfwFM/view?usp=sharing)

