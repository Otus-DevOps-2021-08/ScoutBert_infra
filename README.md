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
