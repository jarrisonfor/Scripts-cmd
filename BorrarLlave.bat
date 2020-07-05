@echo off
ssh pi@ip "ls -I 'excluido.ovpn' -I 'excluido2.ovpn' ~/ovpns/ | sed -e 's/\.ovpn$//'"

SET /P "nombre=Introduce la llave a borrar: "
ssh pi@ip "pivpn -r %nombre%.ovpn"
