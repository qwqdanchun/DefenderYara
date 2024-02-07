
rule VirTool_BAT_Antinza_B_MTB{
	meta:
		description = "VirTool:BAT/Antinza.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 78 65 63 75 74 65 41 73 73 65 6d 62 6c 79 43 6f 6e 74 65 78 74 } //01 00  ExecuteAssemblyContext
		$a_01_1 = {4d 79 74 68 69 63 4a 6f 62 } //01 00  MythicJob
		$a_01_2 = {43 68 65 63 6b 69 6e 52 65 73 70 6f 6e 73 65 } //01 00  CheckinResponse
		$a_01_3 = {55 70 6c 6f 61 64 52 65 73 70 6f 6e 73 65 44 61 74 61 } //01 00  UploadResponseData
		$a_01_4 = {4d 79 74 68 69 63 54 61 73 6b } //01 00  MythicTask
		$a_01_5 = {4d 79 74 68 69 63 52 65 73 70 6f 6e 73 65 52 65 73 75 6c 74 } //01 00  MythicResponseResult
		$a_01_6 = {41 74 68 65 6e 61 2e 43 6f 6e 66 69 67 2e 48 54 54 50 } //01 00  Athena.Config.HTTP
		$a_01_7 = {41 74 68 65 6e 61 2e 53 6f 63 6b 73 } //01 00  Athena.Socks
		$a_00_8 = {4d 79 74 68 69 63 55 70 6c 6f 61 64 4a 6f 62 } //00 00  MythicUploadJob
	condition:
		any of ($a_*)
 
}