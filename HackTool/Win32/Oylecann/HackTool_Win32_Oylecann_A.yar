
rule HackTool_Win32_Oylecann_A{
	meta:
		description = "HackTool:Win32/Oylecann.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {58 58 50 46 6c 6f 6f 64 65 72 } //01 00  XXPFlooder
		$a_01_1 = {48 54 54 50 46 6c 6f 6f 64 65 72 } //01 00  HTTPFlooder
		$a_01_2 = {4c 4f 49 43 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00  LOIC.Properties
		$a_01_3 = {67 65 74 5f 49 73 46 6c 6f 6f 64 69 6e 67 } //01 00  get_IsFlooding
		$a_01_4 = {67 65 74 5f 46 6c 6f 6f 64 43 6f 75 6e 74 } //01 00  get_FloodCount
		$a_01_5 = {74 00 78 00 74 00 54 00 61 00 72 00 67 00 65 00 74 00 55 00 52 00 4c 00 } //01 00  txtTargetURL
		$a_01_6 = {4c 00 4f 00 49 00 43 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00  LOIC.Properties.Resources
	condition:
		any of ($a_*)
 
}