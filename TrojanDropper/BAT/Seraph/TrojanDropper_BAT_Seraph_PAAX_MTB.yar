
rule TrojanDropper_BAT_Seraph_PAAX_MTB{
	meta:
		description = "TrojanDropper:BAT/Seraph.PAAX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 72 77 70 61 63 78 74 73 67 69 76 64 75 71 72 63 63 6f 71 77 74 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_2 = {52 65 76 65 72 73 65 } //00 00 
	condition:
		any of ($a_*)
 
}