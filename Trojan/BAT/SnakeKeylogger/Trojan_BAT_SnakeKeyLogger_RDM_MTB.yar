
rule Trojan_BAT_SnakeKeyLogger_RDM_MTB{
	meta:
		description = "Trojan:BAT/SnakeKeyLogger.RDM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 42 20 37 36 36 } //01 00 
		$a_01_1 = {61 52 33 6e 62 66 38 64 51 70 32 66 65 4c 6d 6b 33 31 } //01 00 
		$a_01_2 = {6c 53 66 67 41 70 61 74 6b 64 78 73 56 63 47 63 72 6b 74 6f 46 64 } //01 00 
		$a_01_3 = {62 35 39 64 31 30 61 30 2d 33 66 34 39 2d 34 33 34 38 2d 62 66 64 65 2d 32 37 32 63 39 32 61 32 31 32 66 36 } //00 00 
	condition:
		any of ($a_*)
 
}