#!/bin/bash
exec 6<&0
read -p "Input repository: " answer
cd /home/aboba/Downloads
git clone $answer
FOUND="$(ls -tr | tail)"
mkdir /home/aboba/test
mv /home/aboba/Downloads/"${FOUND}"/* /home/aboba/test
rm -rf /home/aboba/Downloads/"${FOUND}"
echo "Лабораторная работа 1 выполнена"
read -p "очистить мусор? (y/n)" final
case $final in
y) rm -rf /home/aboba/test
echo "Готово!" ;;
n) echo "Завершение" ;;
esac

