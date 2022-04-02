# Docker Compose Flask-Mysql integration


Creacion de dos contenedores en Docker para aplicacion web en Flask donde tiene acceso para CRUD a una base de datos en MYSQL. 

## Version Inicial

- Levantar contenedores
- Configurar contenedores en red
- Acceso a la APP desde el mismo segmento de red
- CRUD desde la APP 
- Graficación de datos tomados de un archivo csv


## Documentación
- Docker Engine [Link](https://docs.docker.com/engine/install/debian/)
- Docker-compose [Link](https://docs.docker.com/compose/install/).


## Testeado sobre

- VirtualBox Versión 6.0.24 r139119 
  - Debian GNU/Linux 11 (bullseye) [Link](https://www.debian.org/download "Link")
  - Client: Docker Engine: 20.10.12
  - Docker Engine:          20.10.12
  - Docker compose version 1.29.2

## Diagrama estructural inicial de la base de datos

[![tco.png](https://i.postimg.cc/bv6kygV5/tco.png)](https://postimg.cc/yJZknmHh)

## Instalación

### Desde Consola:
[![1.jpg](https://i.postimg.cc/ydhQpFr8/1.jpg)](https://postimg.cc/XGJkpybR)

- **su**
- **docker-compose up -d**

[![2.jpg](https://i.postimg.cc/Qxd4SKgj/2.jpg)](https://postimg.cc/QVvJdtnz)

### Al finalizar la construcción:

[![3.jpg](https://i.postimg.cc/qqkmPz9X/3.jpg)](https://postimg.cc/XGzcF7Np)



## Verificaciones

### Contenedores corriendo:

- **docker ps -a**

[![4.jpg](https://i.postimg.cc/VvD7mzwy/4.jpg)](https://postimg.cc/SYYLGFjV)



### Consola de la APP en Flask:

- **docker logs -f (ID del contenedor UP)**

[![5-flask.jpg](https://i.postimg.cc/v8z2WtVP/5-flask.jpg)](https://postimg.cc/V5JFwM4M)

### Consola de base de datos:

- **docker exec -it (ID del contenedor UP) mysql -p**

[![6-mysql.jpg](https://i.postimg.cc/qRrQKNMV/6-mysql.jpg)](https://postimg.cc/5HPwdNCn)

### App funcionando

[![7-APP-FLASK.jpg](https://i.postimg.cc/bwG6fXFM/7-APP-FLASK.jpg)](https://postimg.cc/FY4b06vg)

### Consulta a Base de datos

[![8-APP-consulta-mysql.jpg](https://i.postimg.cc/BQ7hzZNH/8-APP-consulta-mysql.jpg)](https://postimg.cc/crYMgSpL)


### Graficación de datos desde archivo csv

[![9-graficacion.jpg](https://i.postimg.cc/0NDcrYv0/9-graficacion.jpg)](https://postimg.cc/4K4zShmY)

## License

**Docker Compose Flask-Mysql integration**  is an open source project by adrianjleon
I  reserve the right to change the license of future releases.



## Creditos de host de imagenes

- [postimg](https://postimg.cc/)
******
