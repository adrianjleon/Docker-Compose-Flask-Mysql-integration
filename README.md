# Docker Compose Flask-Mysql integration

Abstracción CRUD de una base datos en MYSQL en contenedores  Docker para una aplicacion web en Flask


## Version 

La aplicacion tiene como fin la estructuración, organización y disponibilidad de la informacion de los nodos instalados en la red, asi como tambien, los proyectos de implementación para obtener estadísticas acerca de los avances.


## Testeado sobre

- VirtualBox Versión 6.0.24 r139119 
  - Debian GNU/Linux 11 (bullseye) [Link](https://www.debian.org/download "Link")
  - Client: Docker Engine: 20.10.12
  - Docker Engine:          20.10.12
  - Docker compose version 1.29.2

## Diagrama estructural inicial de la base de datos 

#### Estructura inicial de la base de datos construida en MYSQL Workbench

[![tco.png](https://i.postimg.cc/bv6kygV5/tco.png)](https://postimg.cc/yJZknmHh)

## Instalación

### Desde Consola:
[![1.jpg](https://i.postimg.cc/ydhQpFr8/1.jpg)](https://postimg.cc/XGJkpybR)

- **su**
- **docker-compose up -d**

[![2.jpg](https://i.postimg.cc/Qxd4SKgj/2.jpg)](https://postimg.cc/QVvJdtnz)

### Al finalizar la construcción de los contenedores:

[![3.jpg](https://i.postimg.cc/qqkmPz9X/3.jpg)](https://postimg.cc/XGzcF7Np)



## Verificaciones

### Contenedores corriendo:

- **docker ps -a**

[![4.jpg](https://i.postimg.cc/VvD7mzwy/4.jpg)](https://postimg.cc/SYYLGFjV)



### Consola de la APP en Flask:

**El servidor Flask operativo dentro del contenedor corriendo internamente sobre el puerto 5000 y en modo debug: ON**

- **docker logs -f (ID del contenedor UP)**

[![5-flask.jpg](https://i.postimg.cc/v8z2WtVP/5-flask.jpg)](https://postimg.cc/V5JFwM4M)

### Consola de base de datos:

- **docker exec -it (ID del contenedor UP) mysql -p**

[![6-mysql.jpg](https://i.postimg.cc/qRrQKNMV/6-mysql.jpg)](https://postimg.cc/5HPwdNCn)

- **comprobación de los registros en la base de datos**

[![6-mysql-query.jpg](https://i.postimg.cc/L6vhcTCg/6-mysql-query.jpg)](https://postimg.cc/7fGx7gyq)


[========]

### App en flask corriendo

**Interfaz responsive web **

[![7-APP-FLASK.jpg](https://i.postimg.cc/bwG6fXFM/7-APP-FLASK.jpg)](https://postimg.cc/FY4b06vg)

### Consulta a Base de datos

**Registros obtenidos de la base de datos**

[![8-APP-consulta-mysql.jpg](https://i.postimg.cc/BQ7hzZNH/8-APP-consulta-mysql.jpg)](https://postimg.cc/crYMgSpL)


### Graficación de datos desde archivo csv

**Modulo de graficación que lee datos de un archivo csv que muestra el avance de un despliegue en curso-**

[![9-graficacion.jpg](https://i.postimg.cc/0NDcrYv0/9-graficacion.jpg)](https://postimg.cc/4K4zShmY)

## Documentación extensa sobre Docker
- Docker Engine [Link](https://docs.docker.com/engine/install/debian/)
- Docker-compose [Link](https://docs.docker.com/compose/install/).


## License

**Docker Compose Flask-Mysql integration**  is an open source project by adrianjleon
I  reserve the right to change the license of future releases.



## Creditos de host de imágenes

- [postimg](https://postimg.cc/)
******
