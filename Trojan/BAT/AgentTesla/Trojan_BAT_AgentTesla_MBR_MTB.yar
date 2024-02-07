
rule Trojan_BAT_AgentTesla_MBR_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBR!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 44 21 35 41 21 39 30 21 2c 21 30 33 21 2c 21 2c 21 2c 21 30 34 21 2c 21 2c 21 2c 21 46 46 21 46 46 21 2c 21 2c 21 42 38 } //01 00  4D!5A!90!,!03!,!,!,!04!,!,!,!FF!FF!,!,!B8
		$a_01_1 = {21 34 30 21 32 45 21 37 32 21 36 35 21 36 43 21 36 46 21 36 33 21 2c 21 2c 21 30 43 21 2c 21 2c 21 2c 21 2c 21 2c 21 30 31 } //01 00  !40!2E!72!65!6C!6F!63!,!,!0C!,!,!,!,!,!01
		$a_81_2 = {53 79 73 74 65 6d 2e 52 65 66 6c 65 63 74 69 6f 6e 2e 41 73 73 65 6d 62 6c 79 } //01 00  System.Reflection.Assembly
		$a_81_3 = {53 79 73 74 65 6d 2e 41 63 74 69 76 61 74 6f 72 } //01 00  System.Activator
		$a_01_4 = {41 41 41 41 41 41 41 41 41 41 41 41 41 2e 72 } //00 00  AAAAAAAAAAAAA.r
	condition:
		any of ($a_*)
 
}