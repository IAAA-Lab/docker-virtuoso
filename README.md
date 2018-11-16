# Virtuoso 

<!-- TOC START min:2 max:3 link:true update:true -->
- [Configuración del servicio](#configuracin-del-servicio)
  - [Configuración de Virtusoso mediante docker-compose](#docker-compose)
  - [Lanzamiento](#lanzamiento)
- [Acceso al servicio](#acceso-al-servicio)
- [Detención del sistema](#detencin-del-sistema)

<!-- TOC END -->

## Configuración del servicio

Ficheros:

```
./
|-- docker-compose.yml

```
### Configuración de Virtusoso mediante docker-compose
El el fichero docker-compose-yml, se puede observar que hay una serie de parametros de entorno, los cuales se pueden cambiar para configurar Virtuoso.

```yaml
version: '3'

services:
  virtuoso:
    image: tenforce/virtuoso:latest
    container_name: VirtuosoTenforce
    ports:
      - "8890:8890"
      - "1111:1111"
    environment:
      - DBA_PASSWORD=yourPass 
      - SPARQL_UPDATE=false
      - DEFAULT_GRAPH=http://www.example.com/my-graph
    volumes:
        - /PATH:/data 
```

* **environment:** se puede configurar la contraseña, la actualización de SPARQL y el grafico por defecto de rdf.
* **volumes:** define los puntos de montaje de los ficheros esenciales de virtuoso, para luego poder modificarlos. El fichero más importante es virtuoso.ini, que se explicará a continuación.
* **port:** puertos por los cuales se va a poder acceder al servicio, en este caso, se accede mediante web por el puerto 8890.

Uno de los ficheros de configuración de Virtuoso parte de esta carpera, el llamado virtuoso.ini, ahi se puede configurar todo lo que se desee del servicio antes de lanzarlo.

#### Lanzamiento

Dentro de la carpeta del docker-compose.yml, y tras haberlo configurado a tu gusto:

```
docker-compose up -d
```

## Acceso al servicio

Mediante el portal web:

- http://localhost:8890

## Detención del sistema

Dentro de la carpeta:

```
docker-compose stop 
```