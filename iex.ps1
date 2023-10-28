$url = "https://raw.githubusercontent.com/riomccloud/frogdebloat/main/frogdebloat-win.bat"

$downloadFolder = Join-Path -Path $env:TEMP -ChildPath "frogdebloat-win.bat"

Invoke-WebRequest -Uri $url -OutFile $downloadfolder

Start-Process -Wait -FilePath $downloadFolder