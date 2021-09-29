# ScoutBert_infra
ScoutBert Infra repository

testapp_IP = 62.84.116.197
testapp_port = 9292

WEB-интерфейс pritunl: https://62.84.113.242


Создание ВМ с запущенным сервисом  instance.sh параметры user-data.yml

yc compute instance create --name reddit-app-auto --hostname reddit-app2 --cores=2 --memory=4 --core-fraction=20 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --metadata serial-port-enable=1 --metadata-from-file user-data=./user-data.yml
