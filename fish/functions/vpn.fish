function vpn --description 'Conexión automática de ProtonVPN exclusiva para Miami/Atlanta'
    echo "Iniciando ProtonVPN (Buscando servidor gratis en Miami o Atlanta)..."
    protonvpn disconnect >/dev/null 2>&1

    while true
        protonvpn connect
        sleep 2
        set ciudad (curl -s https://ipinfo.io/city)

        if test (string lower "$ciudad") = miami
            echo "Conectado con éxito en Miami."
            break
        else if test (string lower "$ciudad") = atlanta
            echo "Conectado con éxito en Atlanta."
            break
        else
            echo "Conectado a $ciudad, reintentando conexión..."
            protonvpn disconnect >/dev/null 2>&1
            sleep 1
        end
    end
end

