Invoke-Command -ComputerName xxx -ScriptBlock {Get-EventLog -logname security -entrytype error | Export-Csv C:\Temp\Logs\systemlogs.csv}

Get-EventLog -logname security -entrytype error | Export-Csv C:\Temp\Logs\systemlogs.csv
