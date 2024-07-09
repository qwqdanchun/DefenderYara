
rule PWS_BAT_Dcstl_PDG_MTB{
	meta:
		description = "PWS:BAT/Dcstl.PDG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {02 1f 0f 28 ?? ?? ?? 2b 28 ?? ?? ?? 2b 0a 1f 1a 28 ?? ?? ?? 0a 72 ?? ?? ?? 70 ?? ?? ?? 00 0a 28 ?? ?? ?? 06 73 ?? ?? ?? 0a 20 ?? ?? ?? 00 02 19 28 ?? ?? ?? 2b 1f 0c 28 ?? ?? ?? 2b 28 ?? ?? ?? 2b 14 73 ?? ?? ?? 0a 0b 73 ?? ?? ?? 0a 73 ?? ?? ?? 0a 0c 08 16 07 6f ?? ?? ?? 0a 00 08 06 8e 69 6f ?? ?? ?? 0a 8d 5b 00 00 01 0d 08 09 08 06 16 } //1
		$a_03_1 = {04 0a 06 2c 08 00 28 ?? ?? ?? 06 00 00 7e ?? ?? ?? 04 0b 07 2c 0c } //1
		$a_03_2 = {04 0a 06 2c 32 00 7e ?? ?? ?? 04 73 ?? ?? ?? 06 0b 07 72 } //1
		$a_03_3 = {04 0a 06 2c 32 00 7e ?? ?? ?? 04 73 ?? ?? ?? 06 0b 07 72 ?? ?? ?? 70 ?? ?? ?? 00 06 72 ?? ?? ?? 70 28 ?? ?? ?? 06 28 ?? ?? ?? 0a 6f ?? ?? ?? 06 26 00 38 ?? ?? ?? 00 00 72 ?? ?? ?? 70 28 ?? ?? ?? 06 0c 08 28 ?? ?? ?? 0a 13 0f 11 0f } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}