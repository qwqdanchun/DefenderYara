
rule Trojan_BAT_AgentTesla_DFA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DFA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {07 17 58 0b 07 20 00 01 00 00 5d 0b 09 11 07 07 94 58 0d 09 20 00 01 00 00 5d 0d 11 07 07 94 13 05 11 07 07 11 07 09 94 9e 11 07 09 11 05 9e 11 07 11 07 07 94 11 07 09 94 58 20 00 01 00 00 5d 94 13 04 11 08 08 02 08 91 11 04 61 d2 9c 08 17 58 0c } //01 00 
		$a_01_1 = {47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 } //01 00  GetExportedTypes
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_3 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 73 00 74 00 6f 00 72 00 65 00 32 00 2e 00 67 00 6f 00 66 00 69 00 6c 00 65 00 2e 00 69 00 6f 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 } //00 00  https://store2.gofile.io/download/
	condition:
		any of ($a_*)
 
}