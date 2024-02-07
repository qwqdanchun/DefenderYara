
rule Trojan_BAT_AgentTesla_DYI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DYI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 6c 23 ff b9 f4 ee 2a 81 f7 3f 5b 28 90 01 03 06 b7 28 90 01 03 06 28 90 01 03 06 0b 07 0a 90 00 } //01 00 
		$a_01_1 = {42 00 75 00 2d 00 6e 00 69 00 2d 00 2d 00 66 00 75 00 5f 00 54 00 2d 00 2d 00 65 00 78 00 2d 00 2d 00 74 00 42 00 6f 00 2d 00 2d 00 2d 00 78 00 } //00 00  Bu-ni--fu_T--ex--tBo---x
	condition:
		any of ($a_*)
 
}