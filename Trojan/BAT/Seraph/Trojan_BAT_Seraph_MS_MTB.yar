
rule Trojan_BAT_Seraph_MS_MTB{
	meta:
		description = "Trojan:BAT/Seraph.MS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {03 8e 69 3f 90 02 04 38 90 02 04 28 90 02 04 72 90 02 04 6f 90 02 04 1d 3a 90 02 04 26 90 00 } //1
		$a_02_1 = {11 01 11 01 11 90 01 01 94 11 90 01 01 11 90 01 01 94 58 20 90 01 04 5d 94 13 90 01 06 11 90 01 01 11 90 01 01 11 90 01 01 94 58 13 90 01 01 20 90 01 09 11 90 01 01 11 90 01 01 03 11 90 01 01 91 11 90 01 01 61 d2 9c 38 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}