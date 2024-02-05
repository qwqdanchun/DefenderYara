
rule Trojan_Win32_CryptInject_BQ_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.BQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {40 53 65 74 56 69 63 65 43 69 74 69 65 73 7a 40 30 } //01 00 
		$a_03_1 = {8b ff 8b c6 e8 90 01 02 ff ff 81 3d 90 01 06 00 00 75 0b 6a 00 8d 85 90 01 02 ff ff 50 ff d7 46 3b 35 90 01 03 00 72 d9 90 00 } //01 00 
		$a_03_2 = {88 14 01 c3 90 0a 1f 00 8b 0d 90 01 04 8a 94 01 90 01 04 8b 0d 90 01 04 88 14 01 c3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}