# ScoutBert_infra

Создаём образ с переменными из файла

cd packer

packer  build -var-file ./variables.json immutable.json

Запускаем создание виртуалки через yc

cd ./config-scripts/
./create-reddit-vm.sh
