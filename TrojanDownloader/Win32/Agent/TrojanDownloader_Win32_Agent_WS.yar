
rule TrojanDownloader_Win32_Agent_WS{
	meta:
		description = "TrojanDownloader:Win32/Agent.WS,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {64 65 6c 20 25 31 } //01 00 
		$a_00_1 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 6c } //01 00 
		$a_00_2 = {64 65 6c 20 25 30 } //01 00 
		$a_00_3 = {61 2e 62 61 74 } //01 00 
		$a_00_4 = {66 69 6c 65 2e 70 68 70 3f 26 49 44 3d 25 73 26 45 58 45 3d } //01 00 
		$a_01_5 = {49 45 46 72 61 6d 65 } //01 00 
		$a_00_6 = {53 68 65 6c 6c 20 44 6f 63 4f 62 6a 65 63 74 20 56 69 65 77 } //01 00 
		$a_00_7 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5f 53 65 72 76 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}