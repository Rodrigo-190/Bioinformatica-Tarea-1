echo "1. Escriba un guión que tome uno de estos archivos y determine el número de filas (pilinizadores) y columnas(plantas)"
cd ..
cd Saavedra2013
echo "Número de filas (pilinizadores)"
cat ../Saavedra2013/n10.txt | wc -l
echo "Número de columnas (plantas)"
head -n 1 ../Saavedra2013/n10.txt | tr -d " " | tr -d "\n" | wc -c
 
