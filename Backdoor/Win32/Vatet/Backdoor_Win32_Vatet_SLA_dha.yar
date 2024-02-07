
rule Backdoor_Win32_Vatet_SLA_dha{
	meta:
		description = "Backdoor:Win32/Vatet.SLA!dha,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 68 00 65 00 6c 00 70 00 5c 00 } //01 00  c:\windows\help\
		$a_00_1 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 64 00 65 00 62 00 75 00 67 00 5c 00 } //01 00  c:\windows\debug\
		$a_00_2 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 69 00 6e 00 66 00 5c 00 } //01 00  c:\windows\inf\
		$a_00_3 = {63 00 3a 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 6d 00 65 00 64 00 69 00 61 00 5c 00 } //01 00  c:\windows\media\
		$a_00_4 = {67 00 6f 00 6f 00 67 00 6c 00 65 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //05 00  googleupdate.exe
		$a_00_5 = {67 00 6f 00 6f 00 70 00 64 00 61 00 74 00 65 00 2e 00 64 00 6c 00 6c 00 2e 00 64 00 61 00 74 00 } //9c ff  goopdate.dll.dat
		$a_00_6 = {6f 00 73 00 71 00 75 00 65 00 72 00 79 00 69 00 2e 00 65 00 78 00 65 00 } //00 00  osqueryi.exe
	condition:
		any of ($a_*)
 
}