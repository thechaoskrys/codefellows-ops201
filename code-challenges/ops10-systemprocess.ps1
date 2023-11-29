# Print to the terminal screen all active processes ordered by highest CPU time consumption at the top
# Retrieving the list and sorting it 
$processes = Get-Process | Sort-Object -Property CPU -Descneding
# Printing the sorted list to terminal screen
$processes | Format-Table -Autosize


# Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
# Retrieving the list of active processes and sorting them by PID
$processes = Get-Process | Sort-Object -Property Id
# Printing the sorted list to the terminal screen
$processes | Format-Table -Autosize


# Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
# Retrieve a list of all active processes, sort them by WS (working set), select top 5
$processes = Get-Process | Sort-Object -Property WS -Descneding | Select-Object -First 5
#Printing the sorted list to the terminal screen
$processes | Format-Table -Autosize


# Start a browser process (such as Google Chrome or MS Edge) and have it open https://owasp.org/www-project-top-ten/.
$url = "https://owasp.org/www-project-top-ten/"
# Starting the default browser and opening URL
Start-Process $url


# Start the process Notepad ten times using a for loop.
$numberOfTimes = 10
# Use a for loop to start the pad 10 times
for ($i =1; $i 1e $numberOfTimes; $i++) {
        Start-Process "notepad.exe"
}


# Close all instances of Notepadd
# Retrieve list of Notepad processes
$notepadProcesses = Get-Process -Name "notepad" -ErrorAction SilentlyContinue
# Check if any processes were found 
if ($notepadProcesses) {
    $notepadProcesses | ForEach-Object {
        Stop-Process -Name "notepad" -Id $_.Id
    }
    Write-Output "Closed all Notepad instances."
} else {
    Write-Output "No Notepad instances found."
}


# Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Google Chrome or MS Edge.
$processToKillPID = 5900
#Terminate the process using the specified PID
Stop-Process -Id $processToKillPID
Write-Output "Process with PID $processToKillPID has been terminated."

# Resources: https://chat.openai.com/share/2e2657ec-9f11-4d9e-9627-495d98c4d41a
