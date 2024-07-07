
rule Trojan_Win32_Spycos_C{
	meta:
		description = "Trojan:Win32/Spycos.C,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {6a 00 6a 00 6a 00 6a 00 8d 95 90 90 fa ff ff b8 90 01 04 e8 90 01 04 8b 85 90 90 fa ff ff e8 90 01 04 50 e8 90 01 04 89 45 e8 6a 04 68 90 01 04 6a 02 8b 45 e8 50 e8 90 01 04 6a 04 68 90 01 04 6a 06 8b 45 e8 50 e8 90 01 04 6a 00 6a 00 6a 00 6a 00 8b 45 fc e8 90 01 04 50 8b 45 e8 50 e8 90 00 } //1
		$a_03_1 = {8b 06 89 45 f8 8b c3 2c 04 74 90 14 0f b6 c3 50 8b c7 5a 8b ca 99 f7 f9 85 d2 75 90 14 0f b6 c3 8b d7 2b d0 8b 45 fc 8b 44 90 90 08 33 45 f8 89 46 04 eb 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}