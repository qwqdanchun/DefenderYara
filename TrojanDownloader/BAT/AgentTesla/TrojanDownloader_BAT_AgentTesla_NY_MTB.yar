
rule TrojanDownloader_BAT_AgentTesla_NY_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.NY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_01_0 = {57 15 a2 0b 09 0b 00 00 00 10 00 03 00 02 00 00 01 00 00 00 42 00 00 00 0a 00 00 00 08 00 00 00 15 00 00 00 05 00 00 00 48 00 00 00 18 00 00 00 08 00 00 00 03 00 00 00 04 00 00 00 05 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 05 00 00 00 01 00 00 00 01 00 00 00 01 } //1
		$a_01_1 = {63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1) >=2
 
}