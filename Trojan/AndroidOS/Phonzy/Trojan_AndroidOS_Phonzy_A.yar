
rule Trojan_AndroidOS_Phonzy_A{
	meta:
		description = "Trojan:AndroidOS/Phonzy.A,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {4c 63 6f 6d 2f 70 61 6e 64 6f 72 61 2f 6f 31 34 37 2f } //01 00 
		$a_01_1 = {76 32 61 70 69 2e 33 78 78 2e 6c 69 76 65 } //01 00 
		$a_01_2 = {44 49 53 43 4f 4e 4e 45 43 54 5f 52 45 41 53 4f 4e 5f 43 4f 44 45 5f 55 4e 4b 4e 4f 57 } //01 00 
		$a_01_3 = {55 70 6c 6f 61 64 4c 6f 6f 70 57 6f 72 6b } //00 00 
	condition:
		any of ($a_*)
 
}