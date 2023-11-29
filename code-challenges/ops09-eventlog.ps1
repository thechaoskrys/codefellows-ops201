# output all events from system event long within 24 hours and place in file on desktop last_24.txt
Get-WinEvent -Logname "System" -MaxEvents 100 | Where-Object { $_.TimeCreated -ge (Get-Date).AddHours(-24) } | Format-Table -Property * | Out-File "$env:USERPROFILE\Desktop\last_24.txt"

# output all "error" type events from system log to a file on desktop errors.txt
Get-WinEvent -LogName "System" -MaxEvents 100 | Where-Object { $_.LevelDisplayName -eq "Error" } | Format-Table -Property * | Out-File "$env:USERPROFILE\Desktop\errors.txt"

# print to the screen all events with ID of 16 from system event log 
Get-WinEvent -LogName "System" | Where-Object { $_.Id -eq 16 } | Format-Table -Property * -AutoSize

# print to the screen all most recent 20 entries from system event log
Get-WinEvent -LogName "System" -MaxEvents 20 | Format-Table -Property * -AutoSize

# print to the screen sources of 500 most recent in system event log. ensure full lines displayed. 
Get-WinEvent -LogName "System" -MaxEvents 500 | Format-Table -Property TimeCreated, Id, ProviderName, Message -AutoSize
# or
Get-WinEvent -LogName "System" -MaxEvents 500 | Select-Object -ExpandProperty Source | Format-Table -AutoSize

# Utilized ChatGPT to assist with writing the script and fact checking what I wrote https://chat.openai.com/share/3c8c47e2-8368-439f-9465-61f875201f17
