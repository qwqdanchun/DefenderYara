
rule Backdoor_BAT_Remcos_VAP_MTB{
	meta:
		description = "Backdoor:BAT/Remcos.VAP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {49 50 48 6f 73 74 45 6e 74 72 79 } //01 00  IPHostEntry
		$a_81_1 = {47 65 74 48 6f 73 74 45 6e 74 72 79 } //01 00  GetHostEntry
		$a_81_2 = {6f 70 5f 45 71 75 61 6c 69 74 79 } //01 00  op_Equality
		$a_81_3 = {6f 70 5f 49 6e 65 71 75 61 6c 69 74 79 } //01 00  op_Inequality
		$a_81_4 = {53 51 55 41 52 45 20 43 41 50 49 54 41 4c 20 4c 49 4d 49 54 45 44 } //01 00  SQUARE CAPITAL LIMITED
		$a_81_5 = {24 38 31 31 64 32 30 34 37 2d 64 39 63 31 2d 34 66 38 65 2d 38 35 33 35 2d 30 62 64 63 35 39 35 35 64 63 33 66 } //01 00  $811d2047-d9c1-4f8e-8535-0bdc5955dc3f
		$a_01_6 = {63 00 6f 00 6e 00 66 00 2f 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 78 00 6d 00 6c 00 } //01 00  conf/Server.xml
		$a_01_7 = {55 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //01 00  Username
		$a_01_8 = {50 00 75 00 70 00 70 00 65 00 74 00 4d 00 61 00 73 00 74 00 65 00 72 00 49 00 50 00 } //01 00  PuppetMasterIP
		$a_01_9 = {50 00 75 00 70 00 70 00 65 00 74 00 4d 00 61 00 73 00 74 00 65 00 72 00 50 00 6f 00 72 00 74 00 } //00 00  PuppetMasterPort
	condition:
		any of ($a_*)
 
}