
rule Trojan_BAT_Cerbu_CM_MTB{
	meta:
		description = "Trojan:BAT/Cerbu.CM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {08 09 28 2d 00 00 06 09 73 90 01 02 00 0a 28 90 01 02 00 0a 13 06 11 06 02 7b 90 01 02 00 04 07 6f 90 01 02 00 0a 7b 90 01 02 00 04 6a 2e 3c 72 90 01 02 00 70 02 7b 90 01 02 00 04 07 6f 90 01 02 00 0a 7c 90 01 02 00 04 28 90 01 02 00 0a 72 90 01 02 00 70 12 06 28 90 01 02 00 0a 28 90 01 02 00 0a 28 90 01 02 00 06 09 28 90 01 02 00 0a 90 00 } //01 00 
		$a_01_1 = {54 72 61 69 6e 43 6f 6e 74 72 6f 6c 55 70 64 61 74 65 72 } //00 00  TrainControlUpdater
	condition:
		any of ($a_*)
 
}