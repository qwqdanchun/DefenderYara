
rule Trojan_BAT_AgentTesla_RDK_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RDK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {35 33 33 31 62 64 33 34 2d 34 30 32 37 2d 34 36 35 37 2d 62 32 62 66 2d 62 31 61 36 39 36 62 31 62 31 62 37 } //01 00  5331bd34-4027-4657-b2bf-b1a696b1b1b7
		$a_01_1 = {55 00 73 00 65 00 72 00 6d 00 6f 00 64 00 65 00 20 00 46 00 6f 00 6e 00 74 00 20 00 44 00 72 00 69 00 76 00 65 00 72 00 20 00 48 00 6f 00 73 00 74 00 } //02 00  Usermode Font Driver Host
		$a_01_2 = {11 05 25 4b 11 0c 11 0f 1f 0f 5f 95 61 54 } //02 00 
		$a_01_3 = {25 1a 58 13 12 4b 61 11 09 58 11 0a 11 0b 5a 58 } //01 00 
		$a_01_4 = {6b 65 72 6e 65 6c 33 32 } //01 00  kernel32
		$a_01_5 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //00 00  VirtualProtect
	condition:
		any of ($a_*)
 
}