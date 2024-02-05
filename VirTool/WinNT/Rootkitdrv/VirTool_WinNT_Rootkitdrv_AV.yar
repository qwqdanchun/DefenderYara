
rule VirTool_WinNT_Rootkitdrv_AV{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.AV,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 07 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 53 00 4e 00 41 00 4b 00 45 00 4d 00 4f 00 4e 00 } //0a 00 
		$a_02_1 = {5c 64 6f 77 6e 6c 6f 61 64 65 72 5c 73 79 73 5c 69 33 38 36 5c 90 02 08 2e 70 64 62 90 00 } //01 00 
		$a_00_2 = {4b 00 65 00 41 00 64 00 64 00 53 00 79 00 73 00 74 00 65 00 6d 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 54 00 61 00 62 00 6c 00 65 00 } //01 00 
		$a_00_3 = {50 00 73 00 4c 00 6f 00 6f 00 6b 00 75 00 70 00 54 00 68 00 72 00 65 00 61 00 64 00 42 00 79 00 54 00 68 00 72 00 65 00 61 00 64 00 49 00 64 00 } //01 00 
		$a_02_4 = {fa 0f 20 c0 25 ff ff fe ff 0f 22 c0 b8 90 01 03 00 39 30 74 90 01 01 83 c0 04 3d 90 00 } //01 00 
		$a_02_5 = {8b 40 01 8b 12 c7 04 82 90 01 03 00 0f 20 c0 0d 00 00 01 00 0f 22 c0 fb 90 00 } //01 00 
		$a_02_6 = {bb 49 66 73 20 53 ff 75 90 01 01 6a 01 ff d6 8b f8 85 ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}