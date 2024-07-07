
rule Trojan_Win32_QBot_CRIE_MTB{
	meta:
		description = "Trojan:Win32/QBot.CRIE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0f b6 00 89 c6 8b 4d e4 ba 90 01 04 89 c8 f7 ea c1 fa 90 01 01 89 c8 c1 f8 90 01 01 29 c2 89 d0 c1 e0 90 01 01 01 d0 01 c0 29 c1 89 ca 0f b6 82 90 01 04 31 f0 88 03 83 45 e4 01 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}