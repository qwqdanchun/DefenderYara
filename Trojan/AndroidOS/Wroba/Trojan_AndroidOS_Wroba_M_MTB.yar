
rule Trojan_AndroidOS_Wroba_M_MTB{
	meta:
		description = "Trojan:AndroidOS/Wroba.M!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {3b 00 17 4c 67 90 01 06 2f 90 01 02 41 70 70 6c 69 63 61 74 69 6f 6e 3b 00 90 00 } //01 00 
		$a_01_1 = {3b 00 06 4c 73 2f 6e 69 3b 00 } //01 00  ;䰆⽳楮;
		$a_01_2 = {0f 65 6c 61 70 73 65 64 52 65 61 6c 74 69 6d 65 00 } //01 00 
		$a_01_3 = {69 73 49 67 6e 6f 72 69 6e 67 42 61 74 74 65 72 79 4f 70 74 69 6d 69 7a 61 74 69 6f 6e 73 00 } //01 00 
		$a_03_4 = {63 61 74 69 6f 6e 3b 90 09 08 00 2f 90 01 02 41 70 70 6c 69 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}