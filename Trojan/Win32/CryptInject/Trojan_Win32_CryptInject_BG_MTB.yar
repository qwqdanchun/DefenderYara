
rule Trojan_Win32_CryptInject_BG_MTB{
	meta:
		description = "Trojan:Win32/CryptInject.BG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {03 55 10 8b 45 10 8a 92 85 c5 0a 00 88 14 01 } //02 00 
		$a_02_1 = {d3 ea 89 55 e0 8b 45 e0 03 45 a8 89 45 e0 8b 4d ec 33 4d b8 89 4d ec 81 3d 90 01 04 c1 10 00 00 75 90 00 } //00 00 
		$a_00_2 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_CryptInject_BG_MTB_2{
	meta:
		description = "Trojan:Win32/CryptInject.BG!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 61 63 6b 65 52 4c 4f 5f 70 72 6f 6a 65 63 74 5c 50 72 6f 6a 65 74 5f 32 5c 70 72 6f 6a 65 63 74 5c 68 61 63 6b 65 72 6c 6f 5c 52 65 6c 65 61 73 65 5c 68 61 63 6b 65 72 6c 6f 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}