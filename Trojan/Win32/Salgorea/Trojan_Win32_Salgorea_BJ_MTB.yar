
rule Trojan_Win32_Salgorea_BJ_MTB{
	meta:
		description = "Trojan:Win32/Salgorea.BJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {89 14 30 89 4c 30 04 0f 84 } //01 00 
		$a_00_1 = {8b 0c 30 8b 54 30 04 0f c9 0f 84 } //01 00 
		$a_00_2 = {0f ca 68 97 b9 44 00 c3 } //01 00 
		$a_02_3 = {68 3c 1b 00 00 8b 0d 90 01 09 68 e0 63 a9 00 c7 46 10 90 01 04 68 a8 c9 0e 10 68 90 01 04 8a 81 98 00 00 00 0d 9d c3 83 9f 65 32 1e 4f 10 41 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}