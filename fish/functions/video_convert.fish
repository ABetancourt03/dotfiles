function video_convert
    if test (count $argv) -lt 2
        echo (set_color red)"Error: Faltan argumentos."(set_color normal)
        echo "Uso correcto: video_convert <ruta_video_origen> <ruta_video_salida.mov>"
        echo "Ejemplo:      video_convert ~/Videos/mi_guitarra.mp4 ./lamento_fijo.mov"
        return 1
    end

    set origen $argv[1]
    set destino $argv[2]

    # Comprobamos si el archivo de origen realmente existe antes de llamar a ffmpeg
    if not test -f $origen
        echo (set_color red)"Error: El archivo de origen '$origen' no existe."(set_color normal)
        return 1
    end

    echo (set_color cyan)"Convertiendo video a formato nativo DaVinci (DNxHR + PCM)..."(set_color normal)
    echo "Origen:  $origen"
    echo "Destino: $destino"

    # El comando definitivo que te funcionó impecable
    ffmpeg -i $origen -vcodec dnxhd -profile:v dnxhr_hq -acodec pcm_s16le $destino

    if test $status -eq 0
        echo (set_color green)"\n¡Listo! Video convertido con éxito. Ya puedes importarlo a DaVinci."(set_color normal)
    else
        echo (set_color red)"\nHubo un problema durante la conversión con FFmpeg."(set_color normal)
    end
end
