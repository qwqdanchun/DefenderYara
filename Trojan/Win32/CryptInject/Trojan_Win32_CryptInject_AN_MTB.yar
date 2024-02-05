
rule Trojan_Win32_CryptInject_AN_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.AN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {68 7a 6a 66 61 7a 6b 72 69 66 62 6a } //02 00 
		$a_01_1 = {6d 52 5a 56 4f 5a 71 41 4f 4c 57 6e 52 6f 4f } //02 00 
		$a_01_2 = {72 6d 68 75 6c 7a 73 77 76 6e 6a 64 68 79 } //02 00 
		$a_01_3 = {78 65 5a 58 48 65 51 6b 66 77 43 68 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_CryptInject_AN_MTB_2{
	meta:
		description = "Trojan:Win32/CryptInject.AN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 44 24 10 03 f1 8b 08 13 ea 8b c7 6b c0 90 01 01 81 7c 24 18 90 01 04 89 0d 90 01 03 00 8d 0c 18 90 00 } //01 00 
		$a_02_1 = {8b 44 24 1c 13 c2 8b f3 8b e8 0f b6 0d 90 01 03 00 a1 90 01 03 00 8b 54 24 10 05 90 01 04 8d 1c b9 a3 90 01 03 00 89 02 8d 44 1b ec 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}