function loopback --description 'Activar/Desactivar monitorización del dispositivo de entrada con PulseAudio/PipeWire'
    if test "$argv[1]" = on
        echo "Monitorización del dispositivo de entrada activada."
        pactl load-module module-loopback >/dev/null 2>&1
    else if test "$argv[1]" = off
        echo "Monitorización del dispositivo de entrada desactivada."
        pactl unload-module module-loopback >/dev/null 2>&1
    else
        echo "Para activar/desactivar la monitorización del dispositivo de entrada usa: loopback on/off."
    end
end

