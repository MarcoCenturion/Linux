awk '/^[0-9]+\s+[^\t]+$/ { current_header = $0 next } /SUBTOTAL PROV\.:/ { next } current_header && /^[0-9]+/ { print current_header "\t" $0 }'
