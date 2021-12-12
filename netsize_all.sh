echo " Escriba un guión que imprima el número de filas y columnas para cada red"

cd ../Saavedra2013

echo "Número de filas"
for f in ../Saavedra2013/*.txt;
do 
	cat $f  | wc -l;
done

echo "Número de columas"
for f in ../Saavedra2013/*.txt;
do 
        head -n 1 $f | tr -d " " | tr -d "\n" | wc -c;
done

