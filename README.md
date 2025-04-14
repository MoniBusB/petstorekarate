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

# Ejecución

Desde la raíz del proyecto, ejecuta:

```bash
mvn test

Luego abre el reporte HTML generado

target/karate-reports/karate-summary.html


AUTORA: Mónica Bustamante
