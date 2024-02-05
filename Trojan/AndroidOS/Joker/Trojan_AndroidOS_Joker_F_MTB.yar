
rule Trojan_AndroidOS_Joker_F_MTB{
	meta:
		description = "Trojan:AndroidOS/Joker.F!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 4f 49 43 45 4d 41 4e 41 47 45 52 5f 50 48 4f 4e 45 4e 55 4d 42 45 52 5f 52 45 43 4f 52 44 5f 54 59 50 45 } //03 00 
		$a_00_1 = {5f 37 37 67 37 5f 68 2f 5f 37 37 67 37 5f 68 } //01 00 
		$a_00_2 = {6c 6f 67 6f 75 74 53 4d 53 4e 75 6d 62 65 72 } //01 00 
		$a_01_3 = {52 45 41 44 5f 43 41 4c 4c 5f 4c 4f 47 } //01 00 
		$a_01_4 = {54 52 41 43 4b 5f 4e 55 4d 42 45 52 } //00 00 
	condition:
		any of ($a_*)
 
}