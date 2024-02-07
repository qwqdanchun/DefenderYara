
rule Worm_Win32_Drolnux_B{
	meta:
		description = "Worm:Win32/Drolnux.B,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 65 79 4c 75 63 6b 65 72 } //01 00  CeyLucker
		$a_01_1 = {73 65 74 20 4d 72 39 3d 64 65 6c } //01 00  set Mr9=del
		$a_01_2 = {25 4d 72 39 25 20 2f 73 20 2f 66 20 2f 61 20 2f 71 } //01 00  %Mr9% /s /f /a /q
		$a_01_3 = {61 73 68 63 76 2e 65 78 65 } //01 00  ashcv.exe
		$a_01_4 = {43 4f 4d 37 2e 45 58 45 } //01 00  COM7.EXE
		$a_01_5 = {62 69 6c 62 69 6c 61 6c 2e 65 78 65 } //00 00  bilbilal.exe
	condition:
		any of ($a_*)
 
}