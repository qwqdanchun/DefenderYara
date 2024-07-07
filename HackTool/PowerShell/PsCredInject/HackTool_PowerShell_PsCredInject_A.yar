
rule HackTool_PowerShell_PsCredInject_A{
	meta:
		description = "HackTool:PowerShell/PsCredInject.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 07 00 00 "
		
	strings :
		$a_01_0 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 43 00 72 00 65 00 64 00 65 00 6e 00 74 00 69 00 61 00 6c 00 49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //1 Invoke-CredentialInjection
		$a_01_1 = {23 00 53 00 74 00 61 00 72 00 74 00 20 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 20 00 61 00 73 00 20 00 53 00 59 00 53 00 54 00 45 00 4d 00 } //1 #Start winlogon.exe as SYSTEM
		$a_01_2 = {24 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 20 00 3d 00 20 00 43 00 72 00 65 00 61 00 74 00 65 00 2d 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 } //1 $WinLogonProcessId = Create-WinLogonProcess
		$a_01_3 = {24 00 4c 00 6f 00 67 00 6f 00 6e 00 90 00 02 00 04 00 42 00 69 00 74 00 5f 00 42 00 61 00 73 00 65 00 36 00 34 00 20 00 3d 00 20 00 22 00 54 00 56 00 71 00 } //1
		$a_01_4 = {24 00 57 00 69 00 6e 00 4c 00 6f 00 67 00 6f 00 6e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 49 00 64 00 20 00 3d 00 20 00 28 00 47 00 65 00 74 00 2d 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 20 00 22 00 77 00 69 00 6e 00 6c 00 6f 00 67 00 6f 00 6e 00 22 00 29 00 5b 00 30 00 5d 00 2e 00 49 00 64 00 } //1 $WinLogonProcessId = (Get-Process -Name "winlogon")[0].Id
		$a_01_5 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 76 00 65 00 50 00 45 00 49 00 6e 00 6a 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //1 Invoke-ReflectivePEInjection
		$a_01_6 = {24 00 50 00 69 00 70 00 65 00 2e 00 57 00 61 00 69 00 74 00 46 00 6f 00 72 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 28 00 29 00 } //1 $Pipe.WaitForConnection()
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=5
 
}