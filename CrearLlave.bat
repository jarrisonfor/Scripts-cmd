@echo off

SET /P "nombre=Introduce un nombre para la llave: "
SET /P "password=Introduce una contraseña para la llave: "
ssh pi@ip "pivpn -a -n %nombre% -p %password% -d 1080 | grep created"
scp pi@ip:~/ovpns/%nombre%.ovpn ./
