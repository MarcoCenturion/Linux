while getopts c:m:f: flag
do
    case "${flag}" in
        c) cambio=${OPTARG};;
        m) miami=${OPTARG};;
        f) fee=${OPTARG};;
    esac
done
echo "Tipo de Cambio: $cambio";
echo "Costo emision en Miami: $miami";
echo "Service Fee: $fee";
