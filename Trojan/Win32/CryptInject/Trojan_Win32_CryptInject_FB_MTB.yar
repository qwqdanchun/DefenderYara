
rule Trojan_Win32_CryptInject_FB_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.FB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 45 0c 57 8d 14 06 e8 90 01 04 30 02 46 59 3b 75 10 72 eb 5f 5e 5d c3 90 00 } //01 00 
		$a_03_1 = {33 c9 33 db 33 d2 8b 45 08 8a 10 80 ca 90 01 01 03 da d1 e3 03 45 10 8a 08 84 c9 e0 ee 33 c0 8b 4d 0c 3b d9 74 90 00 } //01 00 
		$a_03_2 = {64 ff 35 30 00 00 00 58 8b 40 0c 8b 48 0c 8b 11 8b 41 30 6a 02 8b 7d 08 57 50 e8 90 01 01 00 00 00 90 00 } //01 00 
		$a_03_3 = {83 c0 04 89 45 90 01 01 8b 45 90 01 01 c7 44 05 90 01 01 65 6c 33 32 8b 45 90 01 01 83 c0 04 89 45 90 01 01 8b 45 90 01 01 c7 44 05 90 01 01 2e 64 6c 6c 8b 45 90 01 01 83 c0 04 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}