
rule VirTool_WinNT_Rootkitdrv_LI{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.LI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 6d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 45 00 6e 00 75 00 6d 00 5c 00 52 00 6f 00 6f 00 74 00 5c 00 4c 00 45 00 47 00 41 00 43 00 59 00 5f 00 25 00 77 00 73 00 } //01 00  \registry\machine\system\CurrentControlSet\Enum\Root\LEGACY_%ws
		$a_03_1 = {0f b7 00 3d 93 08 00 00 74 90 01 01 3d 28 0a 00 00 74 90 01 01 3d ce 0e 00 00 75 90 01 01 c7 05 90 01 04 05 12 00 00 90 00 } //01 00 
		$a_03_2 = {8b 75 08 a1 90 01 04 81 e6 ff 0f 00 00 85 c0 74 90 01 01 3b 70 18 73 90 01 01 8d 45 90 01 01 50 e8 90 01 04 a1 90 01 04 8b 50 10 8b ce 8b 75 10 c1 e1 02 8b 14 11 89 16 8b 40 10 8b 55 0c 89 14 01 ff 75 90 01 01 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}