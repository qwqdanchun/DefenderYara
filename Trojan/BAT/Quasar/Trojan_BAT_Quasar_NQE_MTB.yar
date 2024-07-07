
rule Trojan_BAT_Quasar_NQE_MTB{
	meta:
		description = "Trojan:BAT/Quasar.NQE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 "
		
	strings :
		$a_03_0 = {28 0b 00 00 0a 0c 73 90 01 01 00 00 0a 0d 73 90 01 01 00 00 0a 13 04 11 04 09 06 07 6f 90 01 01 00 00 0a 17 73 90 01 01 00 00 0a 13 05 11 05 08 16 08 8e 69 6f 90 01 01 00 00 0a 11 05 90 00 } //5
		$a_03_1 = {72 19 24 29 70 a2 11 07 17 11 04 28 90 01 03 0a a2 11 07 13 08 11 06 28 90 01 03 0a 28 90 01 03 0a 72 90 01 03 70 6f 90 01 03 0a 72 90 01 03 70 20 90 01 03 00 90 00 } //5
		$a_01_2 = {4e 00 6f 00 64 00 65 00 54 00 79 00 70 00 65 00 5f 00 54 00 6f 00 5f 00 58 00 70 00 61 00 74 00 68 00 4e 00 6f 00 64 00 65 00 54 00 79 00 70 00 65 00 5f 00 4d 00 61 00 70 00 } //1 NodeType_To_XpathNodeType_Map
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*1) >=11
 
}