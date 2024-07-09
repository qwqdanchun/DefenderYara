
rule Trojan_BAT_Seraph_F_MTB{
	meta:
		description = "Trojan:BAT/Seraph.F!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 02 00 00 "
		
	strings :
		$a_01_0 = {6a 5f b8 13 04 11 06 09 84 95 13 05 11 06 09 84 11 06 11 04 84 95 9e 11 06 11 04 84 11 05 9e 11 07 11 08 02 11 08 91 11 06 11 06 09 84 95 11 06 11 04 84 95 d7 6e 20 ff 00 00 00 6a 5f b7 95 61 86 9c 11 08 17 d6 13 08 } //10
		$a_03_1 = {20 00 01 00 00 5d 0c 07 09 94 13 04 07 09 07 08 94 9e 07 08 11 04 9e 07 07 09 94 07 08 94 58 20 00 01 00 00 5d 94 13 08 11 06 06 ?? 06 91 11 08 61 d2 9c 06 17 58 0a } //10
	condition:
		((#a_01_0  & 1)*10+(#a_03_1  & 1)*10) >=10
 
}