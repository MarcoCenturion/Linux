awk -F, '
    # Capturar los dos datos de la cabecera
    /^[0-9]+,/ && !/^,,,SUBTOTAL/ {
        split($0, data, ",")  # Dividir la línea por comas
        codigo = data[1]      # Capturar el código (ejemplo: 341)
        nombre = data[2]      # Capturar el nombre (ejemplo: HYD REPRESENTACIONES TURISTICAS)
        next                  # Saltar esta línea (no imprimirla)
    }

    # Eliminar líneas no deseadas
    /^File,/ || /^------/ || /^,,,SUBTOTAL/ {
        next  # Saltar estas líneas
    }

    # Agregar el código y nombre a las líneas siguientes
    {
        if (codigo != "" && nombre != "") {
            $0 = codigo "," nombre "," $0  # Insertar código y nombre al inicio de la línea
        }
        print  # Imprimir la línea modificada
    } 
    '
