
rule Trojan_BAT_ClipBanker_BE_MTB{
	meta:
		description = "Trojan:BAT/ClipBanker.BE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {57 69 6e 53 65 72 76 69 63 65 53 45 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //02 00 
		$a_01_1 = {57 69 6e 53 65 72 76 69 63 65 53 45 2e 70 64 62 } //01 00 
		$a_01_2 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //00 00 
	condition:
		any of ($a_*)
 
}