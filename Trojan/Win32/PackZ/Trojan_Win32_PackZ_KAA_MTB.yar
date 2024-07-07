
rule Trojan_Win32_PackZ_KAA_MTB{
	meta:
		description = "Trojan:Win32/PackZ.KAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {49 8b 30 81 e9 90 01 04 81 eb 90 01 04 81 e6 90 01 04 81 ef 90 01 04 81 c1 90 01 04 31 32 29 f9 bb 5e 06 5d b6 42 09 fb 81 c1 90 01 04 40 21 c9 89 d9 81 fa 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}