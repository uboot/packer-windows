if (!(Test-Path 'C:\Windows\Temp\python.exe')) {
  Write-Output "Downloading python"
  (New-Object System.Net.WebClient).DownloadFile("https://www.python.org/ftp/python/3.8.6/python-3.8.6-amd64.exe", "C:\Windows\Temp\python.exe")
}

Write-Output "Installing python"
C:\Windows\temp\python.exe /quiet InstallAllUsers=1 Include_pip=1 PrependPath=1 Include_test=0

Remove-Item C:\Windows\Temp\python.exe
