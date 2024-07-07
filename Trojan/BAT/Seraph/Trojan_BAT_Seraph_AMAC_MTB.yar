
rule Trojan_BAT_Seraph_AMAC_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AMAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {11 12 d2 13 2f 11 12 1e 63 d1 13 12 11 1f 11 09 91 13 24 11 1f 11 09 11 24 11 27 61 19 11 18 58 61 11 2f 61 d2 9c 17 11 09 58 13 09 11 24 13 18 11 09 11 26 32 a4 } //1
		$a_01_1 = {11 2c 11 16 11 14 11 16 91 9d 11 16 17 58 13 16 11 16 11 19 32 ea } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}