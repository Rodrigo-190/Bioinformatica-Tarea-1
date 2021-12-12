# Universidad Regional Amazónica IKIAM
![Logo-ikiam-](https://user-images.githubusercontent.com/72926761/145692484-9bcdfb61-636d-4d60-b4ee-b9ace0fde0bb.png)

### Hernández Hurtado Arnoldd Rodrigo
### Bioinformatica
### Tarea 1

##### Comandos utilizados
```javascript
git init
```
Al ejecutar git init, se crea un subdirectorio de .git en el directorio de trabajo actual, que contiene todos los metadatos de Git necesarios para el nuevo repositorio.
```javascript
git clone https://github.com/Rodrigo-190/Bioinformatica-Tarea-1.git
```
El comando git clone se utiliza principalmente para apuntar a un repositorio existente y clonar o copiar dicho repositorio en un nuevo directorio.

```javascript
cd unix/data/Saavedra2013
```
Para dirigirse a la dirección en donde se encuentra la data.

## Ejercicio 1.10.3 
Saavedra y Stouffer (2013) estudiaron varias redes planta-polinizador. Estos se pueden representar como matrices rectangulares donde las filas son polinizadores, las columnas plantas, un 0 indica la ausencia y 1 la presencia de una interacción entre la planta y el polinizador.
#### 1. Escriba un guión que tome uno de estos archivos y determine el número de filas (pilinizadores) y columnas(plantas)

```javascript
cd ..
cd Saavedra2013
echo "Número de filas (pilinizadores)"
cat ../Saavedra2013/n10.txt | wc -l
echo "Número de columnas (plantas)"
head -n 1 ../Saavedra2013/n10.txt | tr -d " " | tr -d "\n" | wc -c
```
El comando "echo", permite imprimir un texto en pantalla, es el equivalente a la función "print" en python. 
El comando "cat" permite leer datos de archivos y mostrar sus contenidos, especificando la dirección en donde se encuentre el archivo en especifico. 
Para el conteo de filas, equivale a contar el número de líneas del archivo que en el que se esté trabajando. 
```javascript
echo "Número de filas (pilinizadores)"
cat ../Saavedra2013/n10.txt | wc -l
```
El conteo se logra con el comando " wc -l ", en donde "wc" permite calcular el número de archivos de bytes, palabras o el número de columnas, y junto con el parámetro "-l" muestra solo el número de columnas o filas. 
```javascript
echo "Número de columnas (plantas)"
head -n 1 ../Saavedra2013/n10.txt | tr -d " " | tr -d "\n" | wc -c
```
Para el conteo de columnas, se necesita más parametros, se necesita primero solo la primera fila, esto se logra con "head -n 1".
Despues, se tiene que eliminar los espacios usando "tr", y se se usa "wc -c" para el contro del número de caracteres en la primera fila. 
![primer literal](https://user-images.githubusercontent.com/72926761/145698814-571cd4d3-86ce-445b-b54b-99706f51bba2.jpg)

Una vez analizada la información, se la guarda en un script "netsize.sh". En donde primero se crea un archivo vacío usando el comando "touch". Los archivos en linea de comando tienen una extensión ".sh", en este caso se crea el archivo "netsize.sh"
```javascript
touch netsize.sh^C
touch netsize.sh
```
![netsize](https://user-images.githubusercontent.com/72926761/145699210-d8a8cb63-245e-4b33-babb-840613f53809.jpg)

Este archivo vacío se lo editar con el editor de texto "nano", en donde ofrece una edición básica de texto además de funciones como una búsqueda y reemplazo interactivos, ir al número de línea y columna, sangría automática, alternancia de funciones, soporte de internacionalización y finalización de la pestaña de nombre de archivo.
Para abririlo se tiene que escribir el comando "nano" seguido del nombre del archivo vacío. 
```javascript
nano netsize.sh
```
![editor nano](https://user-images.githubusercontent.com/72926761/145699402-9eb3aad3-9327-438c-b9f8-bad12f4aa33c.jpg)

#### 2. Escriba un guión que imprima el número de filas y columnas para cada red:
```python
cd ../Saavedra2013

echo "Número de filas"
for f in ../Saavedra2013/*.txt;
do 
	cat $f  | wc -l;
done
```
```python
echo "Número de columas"
for f in ../Saavedra2013/*.txt;
do 
        head -n 1 $f | tr -d " " | tr -d "\n" | wc -c;
done
```
Para el calculo o conteo de el número de filas y columnas de algunos archivos, se hace mediante "ciclos ó búcles for", que permite repetir varias veces los mismos parametros. En este caso, se repite el mismo parametro para cada uno de los archivos.
Aquí el parametro ```f``` es un marcador de posición para las variables que se este usando, mientras que ``` $f ``` es el valor individual de cada variable. 
La instrucción ```in``` separa la variable de los elementos que se quieren hacer el búcle, en este caso se debe poner la ruta en donde se encuentren cada archivo a trabajar. 
```python
for f in ../Saavedra2013/*.txt
```
La instrucción ```do``` inicia los bucles, esta se ejecutará n veces, debe ir seguida de la instrucción y parametros que se quieran aplicar a los búcles. Mientras que ```done``` detiene el búcle. 

 Y de igual manera que en el primer punto, se crea el script o archivo vacío de extensión ```.sh``` con el comando 
 ```python
 touch netsize_all.sh
 ```
 Todo el ciclo se lo edita en el editor de texto ```nano```
![netsize_all](https://user-images.githubusercontent.com/72926761/145699701-2376b79b-e9e0-4876-b1a6-b3f8091e83a6.jpg)

El script se lo ejecuta con la función ```bash```
```python 
bash netsize_all.sh
```

![all filas y columnas](https://user-images.githubusercontent.com/72926761/145700587-6493dd5e-ab42-4440-9dec-3a7f9d8444b7.jpg)
