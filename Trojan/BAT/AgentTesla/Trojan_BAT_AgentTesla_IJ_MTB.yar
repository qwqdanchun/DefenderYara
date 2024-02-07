
rule Trojan_BAT_AgentTesla_IJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.IJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {04 02 08 17 58 8f 90 01 03 02 7b 90 01 03 04 6f 90 01 03 0a 16 31 30 06 08 02 08 a3 90 01 03 02 a4 90 01 03 02 02 08 02 08 17 58 a3 90 01 03 02 a4 90 01 03 02 02 08 17 58 06 08 a3 90 01 03 02 a4 90 01 03 02 17 0b 08 17 58 0c 08 02 8e 69 17 59 32 a2 90 00 } //0a 00 
		$a_02_1 = {fe 0c 0c 00 fe 90 01 02 00 fe 90 01 02 00 fe 90 01 02 00 94 fe 90 01 02 00 fe 90 01 02 00 94 58 9e fe 90 01 03 fe 90 01 07 94 6c 90 01 09 5b 58 fe 90 01 03 fe 90 01 03 20 90 01 03 00 58 fe 90 01 07 20 90 01 03 00 3f 90 00 } //01 00 
		$a_81_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_81_3 = {52 69 6a 6e 64 61 65 6c 4d 61 6e 61 67 65 64 } //00 00  RijndaelManaged
	condition:
		any of ($a_*)
 
}