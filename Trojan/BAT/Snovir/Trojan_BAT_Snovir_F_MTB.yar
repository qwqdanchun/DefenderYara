
rule Trojan_BAT_Snovir_F_MTB{
	meta:
		description = "Trojan:BAT/Snovir.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {06 91 06 61 00 23 90 01 08 23 90 01 08 28 90 01 04 58 28 90 01 04 61 d2 9c 06 17 58 0a 06 7e 03 00 00 04 8e 69 fe 04 3a bd ff ff ff 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}