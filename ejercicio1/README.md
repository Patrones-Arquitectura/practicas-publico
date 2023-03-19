# Patrones de Arquitectura de Software

## Ejercicio 1

### Prerequisitos

1. Java JDK 11 instalado
2. Algún ambiente de desarrollo (Eclipse, Visual Studio Code, etc..)

### Creación del proyecto

1. Ir a [Spring initializr](https://start.spring.io/)
2. Crear un proyecto con las siguientes opciones:
   1. **Project:** Gradle - Groovy
   2. **Language:** Java
   3. **Spring Boot:** Usar versiones 2.x.x, ya que Spring Boot 3 requiere Java 17
   4. **Project Metadata:**
      1. **Group:** ar.edu.unlp.pas
      2. **Artifact:** ejercicio1
      3. **Name:** ejercicio1
      4. **Packaging:** Jar
      5. **Java:** 11
   5. En **Add dependencies** agregar:
      1. Spring Web
      2. Spring Data JPA
      3. H2 Database
      4. Opcionalmente, Spring Boot DevTools

3. Al hacer click en **Generate** se descarga un zip con el proyecto


### Comandos

> Se asume siempre el directorio actual es en la raíz de este proyecto

#### Instalar dependencias y compilar:

```sh
  ./gradlew clean build
```

> En la carpeta `./target` quedan los binarios compilados. Por ejemplo, `./target/ejercicio1-0.0.1-SNAPSHOT.jar`

---

#### Ejecutar el proyecto


```sh
  ./gradlew bootRun
```

Por defecto, corre en el puerto 8080. Acceder mediante http://localhost:8080/. Como no tiene ninguna ruta configurada, va a mostrar un error **404 Not found**

### Docker

#### Construcción de la imágen:

La sintaxis general es:

```sh
  docker build -t org/aplicacion:version .
```

Por ejemplo:

```sh
  docker build -t pas/ejercicio1:1.0.0 .
```

#### Ejecución:

```sh
  docker run -p 8080:8080 pas/ejercicio1:1.0.0
```

Con esto, la aplicación corre en el puerto 8080. Acceder mediante http://localhost:8080/.
