# Programas LEX

  

Este repositorio contiene dos programas desarrollados en Flex:

  

1.  **Contador de Líneas, Palabras y Caracteres** (ubicado en la carpeta `punto1`)

2.  **Traductor de Inglés a Español** (ubicado en la carpeta `punto2`)

3.  **Calculadora Simple** (ubicado en la carpeta `punto3`)

4. **Reconocimiento de Tokens** (ubicado en la carpeta `punto4`)

5. **Clasificación de números complejos** (ubicado en la carpeta `punto5`)
  

A continuación, se describe el proceso completo para descargar, compilar y ejecutar ambos programas.

  

## Descargar la Carpeta del Proyecto

  

### Descargar la Carpeta

  

Descarga el archivo comprimido que contiene la carpeta con los códigos fuente. Descomprime el archivo en tu sistema. Esto debería extraer una carpeta llamada `lenguajesFlex` que contiene las carpetas `punto1`, `punto2`, `punto3`, `punto4` y `punto5` con los archivos de código y de prueba necesarios.

  

### Acceder al Directorio del Proyecto

  

Abre una terminal y navega al directorio donde se descomprimió la carpeta. Por ejemplo:

  

```bash

cd  /ruta/a/la/carpeta/lenguajesFlex

```

  

Reemplaza /ruta/a/la/carpeta con la ruta real donde se encuentra la carpeta `lenguajesFlex`.

## **Contador de Líneas, Palabras y Caracteres**

## Ubicación del Código

-   La carpeta del contador es `punto1`.
    

## Paso a Paso para Ejecutar

1.  **Acceder a la Carpeta del Contador**
    

Bash

```
cd punto1
```

2.  **Compilar el Archivo Flex**
    

Bash

```
flex count.l
gcc lex.yy.c -o count -lfl
```

3.  **Ejecutar el Programa**
    

-   Los archivos de prueba son `archivo1.txt` y `archivo3.txt`.
    
-   Ejecuta el programa con uno de los archivos de prueba:
    

Bash

```
./count < archivo1.txt
```

o

Bash

```
./count < archivo3.txt
```

-   Deberías ver la salida con el número de líneas, palabras y caracteres para el archivo de texto seleccionado.
    

## **Traductor de Inglés a Español**

## Ubicación del Código

-   La carpeta del traductor es `punto2`.
    

## Paso a Paso para Ejecutar

1.  **Acceder a la Carpeta del Traductor**
    

Bash

```
cd ../punto2
```

2.  **Compilar el Archivo Flex**
    

Bash

```
flex tradu.l
gcc lex.yy.c -o tradu -lfl
```

3.  **Ejecutar el Programa**
    

-   El archivo de prueba es `archivo.txt`.
    
-   Ejecuta el programa con el archivo de prueba:
    

Bash

```
./tradu < archivo.txt
```

-   Deberías ver la salida con las palabras traducidas del inglés al español.
    

## **Calculadora Simple**

## Ubicación del Código

-   La carpeta de la calculadora es `punto3`.
    

## Paso a Paso para Ejecutar

1.  **Acceder a la Carpeta de la Calculadora**
    

Bash

```
cd ../punto3
```

2.  **Compilar el Archivo Flex**
    

Bash

```
flex calculadora_simple.l
gcc lex.yy.c -o calculadora -lfl
```

3.  **Ejecutar el Programa**
    

-   Puedes ingresar expresiones matemáticas directamente.
    
-   El archivo de prueba es `pruebas.txt`.
    
-   Ejecuta el programa con el archivo de prueba:    

Bash

```
./calculadora < pruebas.txt
```
-   Deberías ver la salida con los tokens reconocidos y clasificados.

## **Reconocimiento de Tokens**

### Ubicación del Código

-   La carpeta del programa de reconocimiento de tokens es `punto4`.

### Paso a Paso para Ejecutar

1.  **Acceder a la Carpeta del Reconocimiento de Tokens**
   
Bash
```
cd ../punto4
```

2. **Compilar el Archivo Flex**

Bash

```
flex tokens.l
gcc lex.yy.c -o tokens -lfl
```

3.  **Ejecutar el Programa**
    

-   Puedes ingresar expresiones matemáticas directamente.
    
-   El archivo de prueba es `pruebas.txt`.
    
-   Ejecuta el programa con el archivo de prueba:    

Bash

```
./calculadora < pruebas.txt
```
-   Deberías ver la salida con los tokens reconocidos y clasificados, incluyendo números negativos, funciones matemáticas, constantes y operadores
