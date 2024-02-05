
rule Trojan_BAT_Lokibot_ALK_MTB{
	meta:
		description = "Trojan:BAT/Lokibot.ALK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 00 36 00 2e 00 36 00 2e 00 39 00 33 00 36 00 2e 00 33 00 36 00 36 00 39 00 } //01 00 
		$a_01_1 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 57 00 65 00 62 00 54 00 6f 00 6f 00 6c 00 73 00 2e 00 53 00 68 00 61 00 72 00 65 00 64 00 2e 00 43 00 50 00 53 00 2e 00 56 00 53 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_2 = {31 00 36 00 2e 00 36 00 2e 00 39 00 33 00 36 00 2d 00 70 00 72 00 65 00 76 00 69 00 65 00 77 00 33 00 2b 00 35 00 35 00 30 00 65 00 35 00 39 00 63 00 31 00 61 00 64 00 } //01 00 
		$a_01_3 = {54 6f 41 72 72 61 79 } //01 00 
		$a_01_4 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}