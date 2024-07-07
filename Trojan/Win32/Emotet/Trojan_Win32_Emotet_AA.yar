
rule Trojan_Win32_Emotet_AA{
	meta:
		description = "Trojan:Win32/Emotet.AA,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 44 24 04 8a 0c 05 90 01 04 8a 14 05 90 01 04 28 ca 88 54 04 64 83 c0 01 83 f8 0e 89 44 24 04 90 00 } //1
		$a_03_1 = {8b 44 24 18 8a 0c 05 90 01 04 8a 14 05 90 01 04 28 ca 88 54 04 28 83 c0 01 89 44 24 18 83 f8 0e 90 00 } //1
		$a_03_2 = {8b 44 24 2c 8a 0c 05 90 01 04 2a 0c 05 90 01 04 88 4c 04 40 83 c0 01 89 44 24 34 8b 44 24 34 8b 54 24 34 89 54 24 2c 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}