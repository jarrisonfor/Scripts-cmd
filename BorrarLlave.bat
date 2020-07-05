@echo off
ssh pi@ip "ls -I 'excluido.ovpn' -I 'excluido2.ovpn' ~/ovpns/ | sed -e 's/\.ovpn$//'"
SET /P "nombre=Introduce la llave a borrar: "
cls
ssh pi@ip "pivpn -r %nombre%"
PAUSE
