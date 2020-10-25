if (!(Test-Path "C:\Windows\Temp\CloudbaseInitSetup_x64.msi")) {
  Write-Output "Downloading cloudbase-init"
  (New-Object System.Net.WebClient).DownloadFile("https://cloudbase.it/downloads/CloudbaseInitSetup_x64.msi", "C:\Windows\Temp\CloudbaseInitSetup_x64.msi")
}

Write-Output "Installing cloudbase-init"
msiexec /i C:\Windows\Temp\CloudbaseInitSetup_x64.msi /qn /l*v log.txt

Remove-Item C:\Windows\Temp\CloudbaseInitSetup_x64.msi
