﻿# For the SourceCode
#I did not tought that I would opencource this project so it is not well commented or clean!


$start_time = Get-Date
Import-Module BitsTransfer
$driveletter = (gwmi -class win32_volume -filter "label='BashBunny'").Name

$image = {
'____                          _____ _              _               
| __ ) _   _ _ __  _ __  _   _|  ___| |    __ _ ___| |__   ___ _ __ 
|  _ \| | | |  _ \|  _ \| | | | |_  | |   / _  / __|  _ \ / _ \  __|
| |_) | |_| | | | | | | | |_| |  _| | |__| (_| \__ \ | | |  __/ |   
|____/ \__ _|_| |_|_| |_|\__  |_|   |_____\__ _|___/_| |_|\___|_|
                         |___/'
}

$image
echo 'Bunny-Flasher'
echo '============='
echo '[1] Firmware options'
echo '[2] Exit'
$userinput = Read-Host -Prompt 'ENTER your choise'

If ($userinput -eq 1) {

cls
$image
echo 'Choose your firmware'
echo '===================='
echo '[1] 1.5 (newest)'
echo '[2] 1.4'
echo '[3] 1.3'
echo '[4] 1.2'
echo '[5] 1.1'
$userinput2 = Read-Host -Prompt 'ENTER your choise'

If ($userinput2 -eq 1) {

cls
$url = "https://storage.googleapis.com/bashbunny_updates/ch_fw_1.5_298.tar.gz"
$output = "$driveletter\ch_fw_1.5_298.tar.gz"
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
cls
$image
echo 'Done, now safely eject your Bunny and plug it back in. Wait for the policelights to stop and then you are all set.'
echo 'Press ENTER to exit'
echo ""
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit

}

Elseif ($userinput2 -eq 2) {

cls
$url = "https://storage.googleapis.com/bashbunny_updates/ch_fw_1.4_284.tar.gz"
$output = "$driveletter\ch_fw_1.5_298.tar.gz"
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
cls
$image
echo 'Done, now safely eject your Bunny and plug it back in. Wait for the policelights to stop and then you are all set.'
echo ""
echo 'Press ENTER to exit'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit

}

Elseif ($userinput2 -eq 3) {
cls
$url = "https://storage.googleapis.com/bashbunny_updates/ch_fw_1.3_264.tar.gz"
$output = "$driveletter\ch_fw_1.5_298.tar.gz"
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
cls
$image
echo 'Done, now safely eject your Bunny and plug it back in. Wait for the policelights to stop and then you are all set.'
echo ""
echo 'Press ENTER to exit'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit
}

Elseif ($userinput2 -eq 4) {

cls
$url = "https://storage.googleapis.com/bashbunny_updates/ch_fw_1.2_249.tar.gz"
$output = "$driveletter\ch_fw_1.5_298.tar.gz"
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
cls
$image
echo 'Done, now safely eject your Bunny and plug it back in. Wait for the policelights to stop and then you are all set.'
echo ""
echo 'Press ENTER to exit'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit

}

Elseif ($userinput2 -eq 5) {

cls
$url = "https://storage.googleapis.com/bashbunny_updates/ch_fw_1.1_228.tar.gz"
$output = "$driveletter\ch_fw_1.5_298.tar.gz"
Start-BitsTransfer -Source $url -Destination $output
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
cls
$image
echo 'Done, now safely eject your Bunny and plug it back in. Wait for the policelights to stop and then you are all set.'
echo ""
echo 'Press ENTER to exit'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit

}

else {

cls
$image
echo 'That was not one of the options!'
echo ""
echo 'Press ENTER to exit'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit

}

}

Elseif ($userinput -eq 2) {
exit
}

else {
cls
$image
echo 'That was not one of the options!'
echo ""
echo 'Press ENTER to exit'
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
exit
}

cls
$image
echo 'An unknow error has occured, please send a screenshot with detailed info of what happend to error@c1ph3r.nl'