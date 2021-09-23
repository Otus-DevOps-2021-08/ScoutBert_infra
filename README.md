# ScoutBert_infra
ScoutBert Infra repository

Вариант решения для подключения из консоли при помощи
команды вида ssh someinternalhost из локальной консоли рабочего
устройства

 Добавить  в ~/.ssh/config:

Host someinternalhost
	HostName someinternalhost
	#HostName 10.128.0.18
	User appuser
	ProxyCommand ssh -W %h:%p appuser@62.84.113.242

WEB-интерфейс pritunl: https://62.84.113.242

bastion_IP = 62.84.113.242
someinternalhost_IP = 10.128.0.18

testapp_IP = 62.84.116.197
testapp_port = 9292


Создание ВМ с запущенным сервисом  instance.sh параметры user-data.yml

yc compute instance create --name reddit-app-auto --hostname reddit-app2 --cores=2 --memory=4 --core-fraction=20 --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 --metadata serial-port-enable=1 --metadata-from-file user-data=./user-data.yml
