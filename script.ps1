#Имя подключения
$Target = "Network Interface Name"
#Адрес днс сервера
$DNS    = "192.168.1.1"
# Проверяем наличие адаптера
$adapter = Get-NetAdapter | Where-Object { $_.Name -eq $Target -and $_.Status -eq "Up" }
#Нет такого адаптера, выход 1
if (-not $adapter) {
    exit 1
}
#Ставим днс через нетсх
netsh interface ip set dns name="$Target" static $DNS
#Успешно, выход 0
exit 0

