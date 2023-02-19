# Creador
***
Pablo Esparza
## Table of Contents
1. [General Info](#general-info)
2. [FilesInfo](#files-info)
3. [Funcionamiento](#funcion)
### General Info
***
Es una aplicación para trabajar de forma asincrona. Utilizando assync, await y Future
### Technologies
***
Utilizamos un archivo main que muestra tres botones y que utilizarán metodos del archivo mockapi
***
El archivo mockapi genera un numero aleatorio del 1 al 100 pero lo hará más rápido o más lento segun el metodo que vayamos a usar. Entre 1 y 10 segundos


### Funcionamiento
***
El primer botón llama al metodo ferrari de mockapi y genera el aleatorio en 1 segundo. Mostramos un mensaje mientras tanto
El segundo botón llama al metodo hyndai de mockapi y genera el aleatorio en 3 segundos.
Mostramos un mensaje mientras tanto
El tercer botón llama al metoro FisherPrice de mockapi y genera el aleatorio en 10 segundos
Mostramos un mensaje mientras tanto.

Al pulsar en los botones mostraremos el numero generado y modificaremos la longitud de cada barra.
