
rule Trojan_Win32_Barys_GMF_MTB{
	meta:
		description = "Trojan:Win32/Barys.GMF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {2b 1f 00 00 18 0b 30 90 01 01 aa 5c d7 07 b5 03 90 00 } //0a 00 
		$a_01_1 = {09 f3 00 51 3c 30 16 09 50 bd 44 26 0c fc } //01 00 
		$a_01_2 = {68 61 72 79 41 68 4c 69 62 72 68 4c 6f 61 64 54 55 } //01 00 
		$a_01_3 = {68 54 68 72 65 68 45 78 69 74 54 55 } //00 00 
	condition:
		any of ($a_*)
 
}