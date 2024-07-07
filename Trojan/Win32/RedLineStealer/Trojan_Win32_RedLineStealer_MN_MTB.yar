
rule Trojan_Win32_RedLineStealer_MN_MTB{
	meta:
		description = "Trojan:Win32/RedLineStealer.MN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {75 06 89 1d 90 01 04 8b 4d 90 01 01 8b 45 90 01 01 8b d6 d3 ea 03 c6 50 ff 75 90 01 01 03 55 90 01 01 c7 05 90 01 04 2e ce 50 91 89 55 90 01 01 e8 90 01 04 31 45 90 01 01 2b 7d 90 01 01 89 45 90 01 01 25 90 01 04 8b c7 8d 4d 90 01 01 e8 90 01 04 8b 4d 90 01 01 8b c7 c1 e8 05 03 cf 89 45 90 01 01 8b 45 90 01 01 01 45 90 01 01 8b 45 90 01 01 03 45 90 01 01 51 50 e8 90 01 04 8b 4d 90 01 01 89 45 90 01 01 8d 45 90 01 01 e8 90 01 04 2b 75 90 01 01 89 1d 90 01 04 8b 45 90 01 01 29 45 90 01 01 ff 4d 90 01 01 0f 85 90 00 } //1
		$a_00_1 = {c1 e0 04 89 01 c3 } //1
		$a_03_2 = {89 55 fc b8 90 01 04 01 45 fc 8b 45 fc 8a 04 08 88 04 31 41 3b 0d 90 01 04 72 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}