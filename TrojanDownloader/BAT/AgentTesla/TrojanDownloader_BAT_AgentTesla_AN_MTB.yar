
rule TrojanDownloader_BAT_AgentTesla_AN_MTB{
	meta:
		description = "TrojanDownloader:BAT/AgentTesla.AN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {62 00 6d 00 6e 00 2e 00 6c 00 70 00 6d 00 70 00 62 00 61 00 6e 00 74 00 65 00 6e 00 2e 00 69 00 64 00 2f 00 66 00 69 00 6e 00 74 00 } //02 00  bmn.lpmpbanten.id/fint
		$a_01_1 = {72 00 6f 00 63 00 6b 00 73 00 6f 00 6c 00 69 00 64 00 66 00 61 00 62 00 2e 00 67 00 61 00 } //02 00  rocksolidfab.ga
		$a_01_2 = {31 00 38 00 35 00 2e 00 32 00 32 00 32 00 2e 00 35 00 37 00 2e 00 31 00 35 00 35 00 } //02 00  185.222.57.155
		$a_01_3 = {35 00 31 00 2e 00 38 00 31 00 2e 00 31 00 31 00 32 00 2e 00 32 00 31 00 } //02 00  51.81.112.21
		$a_01_4 = {73 00 61 00 72 00 61 00 68 00 62 00 75 00 72 00 72 00 65 00 6c 00 6c 00 2e 00 69 00 6e 00 66 00 6f 00 2f 00 6e 00 64 00 78 00 7a 00 73 00 74 00 75 00 64 00 69 00 6f 00 2f 00 68 00 65 00 6c 00 70 00 65 00 72 00 } //03 00  sarahburrell.info/ndxzstudio/helper
		$a_01_5 = {57 15 02 08 09 09 00 00 00 5a a4 00 00 14 00 00 01 00 00 00 2c 00 00 00 06 00 00 00 04 00 00 00 } //01 00 
		$a_01_6 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggerNonUserCodeAttribute
		$a_01_7 = {47 65 74 4d 65 74 68 6f 64 } //00 00  GetMethod
	condition:
		any of ($a_*)
 
}