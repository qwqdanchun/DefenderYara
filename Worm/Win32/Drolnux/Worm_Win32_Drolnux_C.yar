
rule Worm_Win32_Drolnux_C{
	meta:
		description = "Worm:Win32/Drolnux.C,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 65 79 4c 75 63 6b 65 72 } //01 00  CeyLucker
		$a_01_1 = {73 00 65 00 74 00 20 00 4d 00 72 00 39 00 3d 00 64 00 65 00 6c 00 } //01 00  set Mr9=del
		$a_01_2 = {25 00 4d 00 72 00 39 00 25 00 20 00 2f 00 73 00 20 00 2f 00 66 00 20 00 2f 00 61 00 20 00 2f 00 71 00 } //01 00  %Mr9% /s /f /a /q
		$a_01_3 = {61 00 73 00 68 00 63 00 76 00 2e 00 65 00 78 00 65 00 } //01 00  ashcv.exe
		$a_01_4 = {53 00 48 00 44 00 65 00 41 00 74 00 68 00 4d 00 72 00 4c 00 69 00 4e 00 75 00 78 00 59 00 77 00 5a 00 4a 00 6b 00 } //00 00  SHDeAthMrLiNuxYwZJk
	condition:
		any of ($a_*)
 
}