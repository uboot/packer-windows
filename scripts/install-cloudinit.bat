if not exist "C:\Windows\Temp\CloudbaseInitSetup_x64.msi" (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://cloudbase.it/downloads/CloudbaseInitSetup_x64.msi', 'C:\Windows\Temp\CloudbaseInitSetup_x64.msi')" <NUL
)

msiexec /i C:\Windows\Temp\CloudbaseInitSetup_x64.msi /qn /l*v log.txt
