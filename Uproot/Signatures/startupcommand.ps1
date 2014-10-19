$FilePath = 'C:\Users\assessor\Desktop\'

#STARTUPCOMMAND_CREATION
$Name = 'STARTUPCOMMAND_CREATION'
$Query = "SELECT * FROM __InstanceCreationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_StartupCommand'"
$Text = "%TIME_CREATED%|UTC|N/A|UPR|Uproot|$Name|%TargetInstance.Name% Startup Command Creation|ComputerName: %TargetInstance.__SERVER, Name: %TargetInstance.Name%, Command: %TargetInstance.Command%, Location: %TargetInstance.Location%, Caption: %TargetInstance.Caption%"

Add-Subscription -Name $Name -Query $Query -FilePath $FilePath -Text $Text -Type "LogFile"

#STARTUPCOMMAND_DELETION
$Name = 'STARTUPCOMMAND_DELETION'
$Query = "SELECT * FROM __InstanceDeletionEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_StartupCommand'"
$Text = "%TIME_CREATED%|UTC|N/A|UPR|Uproot|$Name|%TargetInstance.Name% Startup Command Deletion|ComputerName: %TargetInstance.__SERVER, Name: %TargetInstance.Name%, Command: %TargetInstance.Command%, Location: %TargetInstance.Location%, Caption: %TargetInstance.Caption%"

Add-Subscription -Name $Name -Query $Query -FilePath $FilePath -Text $Text -Type "LogFile"
