
rule Trojan_AndroidOS_SAgnt_AA_MTB{
	meta:
		description = "Trojan:AndroidOS/SAgnt.AA!MTB,SIGNATURE_TYPE_DEXHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 2f 68 6f 75 6c 61 2f 71 75 69 63 6b 65 6e } //01 00 
		$a_01_1 = {6d 65 2f 74 68 65 63 6c 6f 75 64 35 37 31 } //01 00 
		$a_01_2 = {2f 43 6f 6e 53 65 72 76 69 63 65 } //00 00 
	condition:
		any of ($a_*)
 
}