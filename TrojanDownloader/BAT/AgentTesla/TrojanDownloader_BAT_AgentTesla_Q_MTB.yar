
rule TrojanDownloader_BAT_AgentTesla_Q_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.Q!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {11 04 09 11 05 18 6f 90 01 01 00 00 0a 1f 10 28 90 00 } //02 00 
		$a_01_1 = {11 05 18 58 13 05 11 05 09 6f } //01 00  ԑ堘ԓԑ漉
		$a_01_2 = {52 65 61 64 41 73 42 79 74 65 41 72 72 61 79 41 73 79 6e 63 } //01 00  ReadAsByteArrayAsync
		$a_01_3 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //00 00  InvokeMember
	condition:
		any of ($a_*)
 
}