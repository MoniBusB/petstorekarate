# PetStore Karate API Testing

Este proyecto contiene la automatización de pruebas funcionales tipo REST sobre la API pública de [Swagger PetStore](https://petstore.swagger.io/) utilizando [Karate DSL](https://github.com/karatelabs/karate).

# Herramientas utilizadas

- Java 11+
- Maven
- Karate 1.3.1
- Git

# Estructura del proyecto
Nombre: petstore-karate/ 
    src
        test
            java
                example
                    petstore
                        petstore.feature
    pom.xml
    README.md
    conclusiones.txt

# Casos de prueba implementados

1. Crear un usuario
2. Consultar el usuario creado (con lógica de reintento por inconsistencia de la API)
3. Actualizar nombre y correo del usuario
4. Consultar nuevamente el usuario actualizado
5. Eliminar el usuario

# Contexto del ejercicio

La página https://petstore.swagger.io/ proporciona la documentación sobre APIs de una “PetStore”.  
Como parte del ejercicio de automatización, se solicitó utilizar un software de pruebas REST (en este caso, Karate DSL) para:

- Identificar las entradas requeridas por la API (por ejemplo, username, email, etc.).
- Capturar las salidas esperadas y validar el contenido de las respuestas.
- Utilizar variables, datos dinámicos y condiciones para adaptar los escenarios.
- Implementar lógica de validación para los diferentes endpoints utilizados:
  - POST /user: para creación
  - GET /user/{username}: para consulta
  - PUT /user/{username}: para actualización
  - DELETE /user/{username}: para eliminar

Este proyecto responde a ese requerimiento implementando cinco pruebas principales con reportes y validaciones automáticas.

# Ejecución

Desde la raíz del proyecto, ejecuta:

```bash
mvn test

Luego abre el reporte HTML generado

target/karate-reports/karate-summary.html


AUTORA: Mónica Bustamante
