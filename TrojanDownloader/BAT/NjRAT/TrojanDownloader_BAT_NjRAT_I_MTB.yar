
rule TrojanDownloader_BAT_NjRAT_I_MTB{
	meta:
		description = "TrojanDownloader:BAT/NjRAT.I!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 70 00 69 00 6e 00 67 00 20 00 31 00 } //02 00  cmd.exe /c ping 1
		$a_01_1 = {31 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //02 00  1 & del
		$a_01_2 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 66 00 69 00 6c 00 65 00 } //02 00  powershell -ExecutionPolicy Bypass -file
		$a_01_3 = {4e 00 65 00 77 00 2d 00 49 00 74 00 65 00 6d 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 2d 00 50 00 61 00 74 00 68 00 20 00 22 00 48 00 4b 00 43 00 55 00 3a 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 22 00 20 00 2d 00 4e 00 61 00 6d 00 65 00 } //02 00  New-ItemProperty -Path "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" -Name
		$a_01_4 = {2d 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 54 00 79 00 70 00 65 00 20 00 22 00 53 00 74 00 72 00 69 00 6e 00 67 00 22 00 20 00 2d 00 66 00 6f 00 72 00 63 00 65 00 } //00 00  -PropertyType "String" -force
	condition:
		any of ($a_*)
 
}