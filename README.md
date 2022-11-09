# Build 33b

Para esta build creamos un volumen que apunta al build del proyecto, cada vez que hacemos un cambio en local,
buildeamos (con yarn build), reiniciamos el servidor nginx en docker y se ven los cambios.
Trabajar con la imagen build es muchísimo más rápido que trabajar con el servidor de desarrollo de React.

# Raccoonreco-docker

Este repo es parte de nuestro proyecto final de carrera en UTEC. <br>
Como tenemos una arquitectura en la que back y front están separados y además trabajamos con Docker containers es que tenemos 3 repos diferentes y éste es uno de ellos.<br>
Para entender el lugar que ocupa este repo y como lo utilizamos dibujaremos un árbol de directorios.<br>

\\RepoProyecto (carpeta contenedora en nuestros host locales donde tenemos clonados los 3 repos)<br>
|\_\_\_Raccoonreco-docker (carpeta de este repo)<br>
|<br>
|\_\_\_Raccoonreco (carpeta del repo de backend)<br>
|<br>
|\_\_\_Raccoonreco-frontend (carpeta del repo de frontend)<br>

Con esta estructura, el siguiente comando (dentro de un script en la raíz de este repo) copiará el archivo app.py de la carpeta Raccoonreco (fuera de este repo) a la carpeta back dentro de este repo:<br>
`cp ../Raccoonreco/app.py ./back `
