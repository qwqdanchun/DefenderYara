
rule Trojan_BAT_AgentTesla_NQS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NQS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 16 73 90 01 03 0a 0c 73 90 01 03 0a 0d 08 09 28 90 01 03 06 09 16 6a 6f 90 01 03 0a 09 13 04 de 1c 90 00 } //01 00 
		$a_01_1 = {63 6f 73 74 75 72 61 2e 63 6f 73 74 75 72 61 2e 64 6c 6c 2e 63 6f 6d 70 72 65 73 73 65 64 } //0a 00  costura.costura.dll.compressed
		$a_01_2 = {57 1f 02 0a 09 0b 00 00 00 fa 01 33 00 16 c4 00 01 00 00 00 44 00 00 00 07 00 00 00 2b 00 00 00 15 00 00 00 11 00 00 00 01 00 00 00 7c 00 00 00 02 00 00 00 14 } //0a 00 
		$a_01_3 = {57 1f a2 1f 09 0b 00 00 00 fa 01 33 00 16 c4 00 01 00 00 00 79 00 00 00 11 00 00 00 34 00 00 00 77 00 00 00 80 00 00 00 01 00 00 00 aa 00 00 00 0a 00 00 00 67 } //00 00 
	condition:
		any of ($a_*)
 
}