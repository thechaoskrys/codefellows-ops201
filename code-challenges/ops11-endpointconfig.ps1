# Enable File and Printer Sharing 
Write-Host “Enabling File and Printer Sharing...”
# Set the firewall rule for File and Printer Sharing (SMB-In) to be enabled 
Set-NetFirewallRule -Name “File and Printer Sharing (SMB-In)” -Enabled True 
Write-Host “File and Printer Sharing has been enabled.”


# Allow ICMP (ping)
Write-Host “Allowing ICMP traffic (ping)...”
Set-NetFirewallRule -Name “File and Printer Sharing (Echo Request - ICMPv4-In)” -Enabled True

Write-Host “ICMP traffic has been allowed.”


# Enable Remote Management (WinRM)
Write-Host “Enabling Remote Management (WInRM)...”
Enable-PSRemoting -Force

Write-Host “Remote Management (WInRM) has been enabled.”


# Define a list of bloatware apps to remove
$appsToRemove = @(
	“Microsoft Edge”, 
	“OneNote”, 
	“Paint 3D”
)
# Remove bloatware apps
Write-Host “Removing bloatware apps...”
foreach ($app in $appsToRemove) {
	Write-Host “Removing $app...”
	Get-AppxPackage -AllUsers | Where-Object { $_.Name -like $app } | Remove-AppxPackage
}

Write-Host “Bloatware removal completed.”


# Enable Hyper-V feature
Write-Host “Enabling Hyper-V feature...”
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All -All

Write-Host “Hyper-V has been enabled.”

# DIsable SMBv1
Write-Host “Disabling SMBv1...”
Set-SmbServerConfiguration -EnableSMB1Protocol $false
Set-SmbClientConfiguration -EnableSMB1Protocol $false

Write-Host “SMBv1 has been disabled.”
