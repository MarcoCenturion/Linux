BEGIN {
    FS = ","; OFS = ",";  # Establece la coma como separador de campo para entrada y salida
    print "FILE,AGENCIA,TIPO,PROV,CIU,CONVENIO,VENDEDOR,CANT PAX,MON FILE,VENTA FILE,COSTO FILE,REFERENCIA,SERVICIOS,FECHA IN,FECHA OUT,PROVEEDOR,VENDEDOR"
}

# Procesa el archivo de vendedores y almacena los datos en un array
FNR == NR {
    vendedor[$1] = $2;  # Almacena el VENDEDOR con el FILE como clave
    next;
}

# Procesa el segundo archivo y combina los datos
{
    file = $1;          # FILE en el segundo archivo
    vend = (file in vendedor) ? vendedor[file] : "SIN VENDEDOR";
    print file, $5, $2, $3, $4, "CONVENIO", vend, $6, $7, $8, $11, "REFERENCIA", $10, $3, "", $9, vend;
}
