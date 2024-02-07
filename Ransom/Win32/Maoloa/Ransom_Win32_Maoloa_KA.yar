
rule Ransom_Win32_Maoloa_KA{
	meta:
		description = "Ransom:Win32/Maoloa.KA,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 4f 00 57 00 20 00 54 00 4f 00 20 00 42 00 41 00 43 00 4b 00 20 00 59 00 4f 00 55 00 52 00 20 00 46 00 49 00 4c 00 45 00 53 00 } //01 00  HOW TO BACK YOUR FILES
		$a_01_1 = {76 73 73 61 64 6d 69 6e 20 44 65 6c 65 74 65 20 53 68 61 64 6f 77 73 20 2f 61 6c 6c 20 2f 71 75 69 65 74 } //01 00  vssadmin Delete Shadows /all /quiet
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 4f 00 6e 00 63 00 65 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\RunOnce
		$a_01_3 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 61 00 6c 00 74 00 69 00 6d 00 65 00 4d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 69 00 6e 00 67 00 } //01 00  DisableRealtimeMonitoring
		$a_01_4 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 } //01 00  DisableAntiSpyware
		$a_01_5 = {43 00 3a 00 5c 00 69 00 64 00 73 00 2e 00 74 00 78 00 74 00 } //00 00  C:\ids.txt
	condition:
		any of ($a_*)
 
}