#!/bin/bash
read -p "Input repository: " answer
cd ./Downloads
git clone $answer
FOUND="$(ls -tr | tail)"
mkdir ../test
mv ./"${FOUND}"/* ../test
rm -rf ./"${FOUND}"
sudo chmod 600 -R ../test
echo "Лабораторная работа 1 выполнена"
read -p "очистить мусор? (y/n)" final
case $final in
y)chmod 700 -R ../test
rm -rf ../test
echo "Готово!" ;;
n) echo "Завершение" ;;
esac
