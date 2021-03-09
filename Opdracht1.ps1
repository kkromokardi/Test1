#optie1
#get error event logs of system on a remote server named xxx.su.local, there will be a popup to set the credential info after that the output is saved in C:\Temp\Logs\, file named: systemlogs.csv.
Invoke-Command -ComputerName xxx.su.local -Credential (Get-Credential) -ScriptBlock {Get-EventLog -logname system -entrytype error | Export-Csv C:\Temp\Logs\systemlogs.csv}


#optie2
#get error event logs of the current system and save the output in C:\Temp\Logs\, file named: systemlogs.csv.
Enter-PSSession -ComputerName xxx.su.local -Credential (Get-Credential)
Get-EventLog -logname system -entrytype error | Export-Csv C:\Temp\Logs\systemlogs.csv

Get-service | where {$_.Status -eq "stopped"} | Export-Csv C:\Temp\Logs\stoppedservices.csv


