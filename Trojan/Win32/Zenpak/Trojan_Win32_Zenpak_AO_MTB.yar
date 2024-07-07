
rule Trojan_Win32_Zenpak_AO_MTB{
	meta:
		description = "Trojan:Win32/Zenpak.AO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_01_0 = {8b 84 24 8c 00 00 00 b9 6d 78 29 cc 89 44 24 40 f7 e1 c1 ea 08 69 c2 41 01 00 00 8b 4c 24 40 29 c1 89 c8 83 e8 06 89 4c 24 3c 89 44 24 38 74 } //2
	condition:
		((#a_01_0  & 1)*2) >=2
 
}