@echo off

SET /P "nombre=Introduce un nombre para la llave: "
SET /P "password=Introduce una contraseña para la llave: "
cls
ssh pi@pi "pivpn -a -n %nombre% -p %password% -d 1080
scp pi@pi:~/ovpns/%nombre%.ovpn ./
pause
