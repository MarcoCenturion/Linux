renglon(){
	echo $(for i in {1..100};do printf "-";done) 
}

contador=1
while read line; do
	renglon
	echo "linea $contador $line"
	let contador+=1
done < decisiones.txt
