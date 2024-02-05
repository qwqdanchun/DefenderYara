
rule Trojan_Win32_CryptInject_FA_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.FA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 f7 29 74 24 10 89 1d 90 01 04 81 f9 90 01 04 75 90 02 30 8b 54 24 10 8b 74 24 90 01 01 89 16 81 f9 90 01 04 75 90 00 } //01 00 
		$a_03_1 = {88 14 01 c3 90 0a 20 00 8b 0d 90 01 04 8a 94 01 90 01 04 8b 0d 90 01 04 88 14 01 c3 90 00 } //01 00 
		$a_03_2 = {8d 9b 00 00 00 00 81 f9 90 01 04 75 90 01 01 e8 90 01 04 41 81 f9 90 01 04 7c 90 01 01 ff 15 90 01 04 8b 8c 24 90 01 02 00 00 5e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}