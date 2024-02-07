
rule Trojan_Win32_Zonsterarch_AD{
	meta:
		description = "Trojan:Win32/Zonsterarch.AD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 72 00 65 00 76 00 65 00 64 00 68 00 61 00 63 00 6b 00 65 00 72 00 } //01 00  prevedhacker
		$a_01_1 = {12 04 32 04 35 04 34 04 51 04 3d 04 20 00 3d 04 35 04 3f 04 40 04 30 04 32 04 38 04 3b 04 4c 04 3d 04 4b 04 39 04 20 00 3a 04 3e 04 34 04 21 00 } //01 00  Введён неправильный код!
		$a_01_2 = {3f 04 35 04 48 04 3d 04 3e 04 20 00 43 04 34 04 30 04 3b 04 51 04 3d 04 4b 04 21 00 0a 00 1d 04 } //00 00 
	condition:
		any of ($a_*)
 
}