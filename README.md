# Patrones de Arquitectura de Software

## Ejercicio 1

### Prerequisitos

1. Java JDK 11 instalado
2. Algún ambiente de desarrollo (Eclipse, Visual Studio Code, etc..)

### Creación del proyecto

1. Ir a [Spring initializr](https://start.spring.io/)
2. Crear un proyecto con las siguientes opciones:
   1. **Project:** Gradle - Groovy / Maven
   2. **Language:** Java
   3. **Spring Boot:** Usar alguna de las versiones estables (3.0.4, 2.7.9)
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

> El siguiente [link](https://start.spring.io/#!type=gradle-project&language=java&platformVersion=2.7.9&packaging=jar&jvmVersion=11&groupId=ar.edu.unlp.pas&artifactId=ejercicio1&name=ejercicio1&description=Patrones%20de%20Arquitectura%20de%20Software%20-%20Ejercicio%201&packageName=ar.edu.unlp.pas.ejercicio1&dependencies=web,data-jpa,h2,devtools) tiene toda esa configuración cargada en el sitio

3. Al hacer click en **Generate** se descarga un zip con el proyecto


### Comandos

> Se asume siempre el directorio actual es en la raíz de este proyecto

#### Instalar dependencias y compilar:

* Con **gradle**

```sh
  ./gradlew clean build
```

> En la carpeta `./build` quedan los binarios compilados. Por ejemplo, `./build/libs/ejercicio1-0.0.1-SNAPSHOT.jar`

* Con **maven**

```sh
  ./mvnw clean install
```

> En la carpeta `./target` quedan los binarios compilados. Por ejemplo, `./target/ejercicio1-0.0.1-SNAPSHOT.jar`

---

#### Ejecutar el proyecto

* Con **gradle**

```sh
  ./gradlew bootRun
```

* Con **maven**

```sh
  ./mvnw spring-boot:run
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
