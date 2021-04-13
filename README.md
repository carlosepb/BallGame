# BallGame
Juego de evitar obstáculos.
<!-- PROJECT LOGO -->
<br/>
<p align="center">
  <h3 align="center">Juego de evitar obstáculos</h3>

  <p align="center">
    ¡Haz ruido para evita que la pelota choque!
    <br />
      <a href="https://github.com/carlosepb/BallGame"><strong>Explorar repositorio»</strong></a>
    <br />
    <br />
      <a href="https://github.com/carlosepb/BallGame/blob/main/images/animation.gif">Ver Demo</a>
      ·
      <a href="https://github.com/carlosepb/BallGame/issues">Reportar Error</a>
      ·
      <a href="https://github.com/carlosepb/BallGame/issues">Solicitar Colaboración</a>
    </p>
  </p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Tabla de Contenido</summary>
  <ol>
    <li>
      <a href="#sobre-el-proyecto">Sobre el Proyecto</a>
      <ul>
        <li><a href="#herramientas-de-desarrollo">Herramientas de Desarrollo</a></li>
      </ul>
    </li>
    <li><a href="#trabajo-realizado">Trabajo Realizado</a></li>
    <li>
      <a href="#empezando">Empezando</a>
      <ul>
        <li><a href="#prerrequisitos">Prerrequisitos</a></li>
        <li><a href="#instalación">Instalación</a></li>
        <li><a href="#ejecutar">Ejecutar</a></li>
      </ul>
    </li>
    <li><a href="#hoja-de-ruta">Hoja de Ruta</a></li>
    <li><a href="#licencia">Licencia</a></li>
    <li><a href="#contacto">Contacto</a></li>
    <li><a href="#agradecimientos">Agradecimientos</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Sobre el Proyecto

<p align="justify">
Al iniciar el juego como primera pantalla nos encontraremos con un menú donde se nos explican los controles básicos del juego. Tenemos que para pausar o iniciar utilizamos la tecla espacio, para mover la pelota simplemente bastará con tener un micrófono abierto y hacer suficiente ruido para que la pelota ascienda y esquive los obstáculos. Cuidado con mantener demasiado tiempo la pelota en el aire ya que esta perderá la energía y perderás. (imagen_1.0)
</p>
<p align="center"><img src="images/menu.JPG" alt="menu" width="600" height="425"></br>imagen_1.0</p>

<p align="justify">
En el momento de juego podemos ver que tenemos dos contadores, uno que lleva la cuenta de la distancia que hemos recorrido y otro que se encarga de decirnos la cantidad de energía que le queda a la pelota, la cual se reducirá según el tiempo que pasemos en el aire. (imagen_2.0)
</p>
<p align="center"><img src="images/juego.JPG" alt="juego" width="600" height="425"></br>imagen_2.0</p>

<p align="justify">
Además como señales visuales veremos que según se nos acabe la energía el fondo se pondrá rojo cuando menos energía nos quede y tendremos una línea en el centro que nos avisará cuando este detectando sonidos. (imagen_3.0)
</p>
<p align="center"><img src="images/energy.JPG" alt="energia" width="600" height="425"></br>imagen_3.0</p>

<p align="justify">
En la siguiente demostración podremos ver en movimiento lo descrito en los párrafos anteriores.(imagen_4.0)
</p>
<p align="center"><img src="images/animation.gif" alt="ejecución" width="600" height="425"></br>imagen_4.0</p>

## Trabajo Realizado
<p align="justify">
Para la detección del sonido se ha utilizado la librería MINIM la cual podemos encontrar en el apartado de instalación.
</p>

<p align="justify">
Detectamos el sonido y comprobamos que esta por encima de un umbral mínimo para evitar que la pelota salte de manera accidental. También utilizamos el sonido de entrada para modificar una línea que nos indica la cantidad de ruido que esta entrando.
</p>

<p align="justify">
Para el descenso de la pelota lo hacemos reduciendo progresivamente su altura para que su descenso sea menos brusco que el salto. También utilizaremos una variable a modo de contador que se reducirá si la pelota se encuentra despegada del suelo para evitar que pasemos todo el tiempo que queramos en el aire.
</p>

## Herramientas de Desarrollo

* [Processing3](https://processing.org/download/)

<!-- GETTING STARTED -->
## Empezando

### Prerrequisitos

* Descargar y descomprimir Processing3, lo puedes encontrar [aquí](https://processing.org/download/).

### Instalación
1. Para exportar a un archivo con formato gif animado es necesario instalar GifAnimation, lo puede encontrar [aquí](https://github.com/extrapixel/gif-animation).
2. Para utilizar la librería de MINIM de captura de sonido necesitará agregarla a su IDE, puede encontrarla [aquí](http://code.compartmental.net/tools/minim/).

### Ejecutar

1. Proyecto.
    * Descomprimir rar.
    * Ejecutar Processin3.
    * Archivo->Abrir...
2. Proyecto.
    * Descomprimir rar.
    * Ejecutar Processin3.
    * Archivo->Abrir...
 
<!-- ROADMAP -->
## Hoja de Ruta

En este momento no hay planes de mejorar la aplicación.

<!-- LICENSE -->
## Licencia

Software completamente libre para copiar o distribuir.

<!-- CONTACT -->
## Contacto

Autor: Carlos Eduardo Pacichana Bastidas

Email: carlos.eduardo.pacichana@gmail.com  carlos.pacichana101@alu.ulpgc.es

Enlace al proyecto: [https://github.com/carlosepb/BallGame](https://github.com/carlosepb/BallGame)

<!-- ACKNOWLEDGEMENTS -->
## Agradecimientos
* [Processing](https://processing.org/)
* [Gif-animation](https://github.com/extrapixel/gif-animation)
* [Funprogramming](https://funprogramming.org/)
* [Text](https://processing.org/reference/text_.html)
* [Minim](http://code.compartmental.net/tools/minim/)
