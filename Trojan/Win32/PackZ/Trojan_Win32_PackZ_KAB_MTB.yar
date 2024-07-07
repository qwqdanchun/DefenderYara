
rule Trojan_Win32_PackZ_KAB_MTB{
	meta:
		description = "Trojan:Win32/PackZ.KAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {8b 19 29 fa 81 ef 90 01 04 29 f8 81 e3 90 01 04 f7 d7 f7 d7 81 ef 90 01 04 31 1e ba 90 01 04 f7 d0 89 c7 46 42 42 81 c2 90 01 04 41 09 c2 09 f8 81 fe 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}