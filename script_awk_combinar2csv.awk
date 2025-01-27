BEGIN {
    FS = ","; OFS = ",";  # Delimitadores de entrada y salida: coma
    print "FILE,DESTINO,FECHA IN,IDCLIENTE,CLIENTE,PAXS,MONEDA,TOTAL,SALDO,C. TOTAL,TC";  # Cabecera del archivo combinado
}

# Cargar los datos del archivo files_vendedor.csv en un array
FNR == NR {
    vendedor[$1] = $2;  # Guarda el VENDEDOR con FILE como clave
    next;
}

# Procesar el archivo filesconsaldo.csv y combinar los datos
{
    file = $1;  # Extraer FILE
    if (file in vendedor) {  # Si FILE tiene un vendedor asociado
        print file, $2, $3, $4, $5, $6, $7, $8, $9, $11, $15;  # Imprimir columnas necesarias
    }
}
