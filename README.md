# TIENDA IAW

Tenemos varias carpetas en nuestro repositorio, que son por orden las siguientes:

PHP: tiene todos los ficheros PHP + HTML.

SCRIPTS: fichero sql exportado desde phpmyadmin sobre los exámenes de acceso a datos, con la base de datos iaw_db.

Dockerfile: realiza varias instalaciones en nuestra infraestructura.

JenkinsFile con stages y respectivos steps:

Git clone de nuestro repositorio.

Despliegue de los contenedores con docker-compose up -d.

Copia todos los ficheros de PHP a la carpeta web, que mediante volumen lo vamos a pasar a /var/www/html para que apache lo muestre.

Se ejecuta el script.sql en la base de datos iaw_db, así obtenemos las tablas y se crean.

Ejecutamos composer y resolvemos las dependencias.

docker-compose.yaml: Contiene toda la configuración de apache, mysql y phpmyadmin con sus puertos 8085,3306,8081.

