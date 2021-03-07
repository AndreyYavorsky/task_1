#!/bin/bash

echo "Программа поиска жестких ссылок"
echo "С помощью этой программы можно найти жесткие ссылки файла в системе "
echo "по его названию."
echo "Разработчик: Яворский Андрей"

while :
do
	echo "-----------------------------"
	echo "Ваш текущий католог: $(pwd)"
	while :
	do
		echo "Введите имя файла:"
		read file_name

		if [ -z $file_name ]
		then 
			echo "Файл не существует" >&2
			continue
		fi

		if  [ -e $file_name ]
		then 
			break
		else 
			echo "Файл не существует" >&2
		fi
	done
	echo "Жесткие ссылки файла в системе: "
	echo "Поиск займет немного времени... "
	echo "$(find / -samefile $file_name 2>/dev/null)"

	echo "Хотите продолжить? (Y/n)"
	read test_exit
	if [ "$test_exit" = "n" ]
	then
		break
	fi

done




