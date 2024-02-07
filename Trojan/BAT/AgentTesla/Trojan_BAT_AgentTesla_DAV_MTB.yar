
rule Trojan_BAT_AgentTesla_DAV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DAV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {0d 16 13 05 2b 35 08 11 05 9a 28 90 01 01 00 00 0a 13 06 11 06 18 5d 2d 10 09 11 05 11 06 1f 19 58 28 90 01 01 00 00 0a 9c 2b 0e 09 11 05 11 06 1f 0f 59 28 90 01 01 00 00 0a 9c 11 05 17 58 13 05 11 05 08 8e 69 17 59 32 c2 90 00 } //01 00 
		$a_01_1 = {44 65 63 72 79 70 74 } //01 00  Decrypt
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //01 00  DownloadString
		$a_01_3 = {53 70 6c 69 74 } //00 00  Split
	condition:
		any of ($a_*)
 
}