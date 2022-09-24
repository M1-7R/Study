#!/bin/bash
read -p "Input repository: " answer
GIT='.git'
TAR='tar.gz'
TGZ='tgz' 
ZIP='zip'
cd /home/aboba/Downloads
mkdir /home/aboba/test
if [[ "$answer" == *"$GIT"* ]]; then
git clone $answer
else wget $answer
fi
FOUND="$(ls -tr | tail)"
if [[ "$FOUND" == *"$TAR"* ]]; then
tar -xf "${FOUND}" -C /home/aboba/test
elif [[ "$FOUND" == *"$TGZ"* ]]; then
tar -xzf "${FOUND}" -C /home/aboba/test
elif [[ "$FOUND" == *"ZIP"* ]]; then 
echo "You want WAHT?"
else
chmod 700 -R /home/aboba/Downloads/"${FOUND}"
mv /home/aboba/Downloads/"${FOUND}"/* /home/aboba/test
fi
rm -rf /home/aboba/Downloads/"${FOUND}"
chmod 700 -R /home/aboba/test
chmod 600 -R /home/aboba/test
echo "Лабораторная работа 1 выполнена"
read -p "очистить мусор? (y/n)" final
case $final in
y)chmod 700 -R /home/aboba/test
rm -rf /home/aboba/test
echo "Готово!" ;;
n) echo "Завершение" ;;
esac
