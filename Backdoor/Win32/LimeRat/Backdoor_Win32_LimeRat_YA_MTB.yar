
rule Backdoor_Win32_LimeRat_YA_MTB{
	meta:
		description = "Backdoor:Win32/LimeRat.YA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 05 00 "
		
	strings :
		$a_01_0 = {4c 00 69 00 6d 00 65 00 52 00 41 00 54 00 2d 00 41 00 64 00 6d 00 69 00 6e 00 } //01 00  LimeRAT-Admin
		$a_01_1 = {53 00 62 00 69 00 65 00 44 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00  SbieDll.dll
		$a_01_2 = {76 00 62 00 6f 00 78 00 68 00 6f 00 6f 00 6b 00 2e 00 64 00 6c 00 6c 00 } //01 00  vboxhook.dll
		$a_01_3 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 2a 00 20 00 46 00 52 00 4f 00 4d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  SELECT * FROM AntivirusProduct
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //00 00  Software\Microsoft\Windows\CurrentVersion\Run\
	condition:
		any of ($a_*)
 
}