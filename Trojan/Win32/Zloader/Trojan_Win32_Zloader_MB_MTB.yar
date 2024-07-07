
rule Trojan_Win32_Zloader_MB_MTB{
	meta:
		description = "Trojan:Win32/Zloader.MB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 75 f8 8b c2 c1 e8 90 01 01 03 f2 89 45 fc 8b 45 f4 01 45 fc 8b 5d f8 8b c2 c1 e0 90 01 01 03 45 f0 c7 05 90 01 08 33 45 fc c7 05 90 01 08 33 c6 2b c8 8b f1 c1 e6 90 01 01 03 75 e8 8b c1 c1 e8 90 01 01 03 45 ec 03 d9 33 f3 33 f0 c7 05 90 01 08 89 45 fc 2b d6 8b 45 e4 29 45 f8 4f 75 99 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}