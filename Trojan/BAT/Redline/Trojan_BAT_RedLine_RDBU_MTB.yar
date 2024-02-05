
rule Trojan_BAT_RedLine_RDBU_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDBU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {78 6a 5a 6e 73 4e 72 50 6e 6d } //01 00 
		$a_01_1 = {68 79 68 70 53 66 52 77 39 66 33 71 66 57 34 76 59 4c } //01 00 
		$a_01_2 = {69 77 6a 6b 6f 31 56 4e 4f 31 76 6b 70 63 6d 5a 77 73 } //01 00 
		$a_01_3 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 } //00 00 
	condition:
		any of ($a_*)
 
}