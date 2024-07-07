
rule Trojan_Win64_Emotet_PAR_MTB{
	meta:
		description = "Trojan:Win64/Emotet.PAR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {c1 fa 04 8b c2 c1 e8 1f 03 d0 6b c2 90 01 01 2b c8 48 8b 90 02 06 48 63 d1 0f b6 0c 02 32 4c 1e 90 01 01 88 4b 90 01 01 48 83 ed 01 75 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}