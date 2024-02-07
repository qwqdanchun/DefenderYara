
rule VirTool_Win32_CobaltStrike_B{
	meta:
		description = "VirTool:Win32/CobaltStrike.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {8e 4e 0e ec 74 90 01 01 81 7d 90 01 01 aa fc 0d 7c 74 90 01 01 81 7d 90 01 01 54 ca af 91 74 90 00 } //01 00 
		$a_01_1 = {0f b7 40 16 25 00 80 00 00 74 09 c7 45 f0 40 00 00 00 eb 07 c7 45 f0 04 00 00 00 } //01 00 
		$a_01_2 = {ff 75 f0 68 00 30 00 00 8b 45 f4 ff 70 50 6a 00 ff 55 } //01 00 
		$a_01_3 = {83 7d 9c 40 73 19 0f b6 45 a7 8b 4d 98 03 4d 9c 0f b6 09 33 c8 8b 45 98 03 45 9c 88 08 eb da } //01 00 
		$a_03_4 = {83 c4 10 33 c0 80 b0 90 01 04 69 40 3d 00 10 00 00 7c f1 68 00 10 00 00 b9 90 01 04 8d 44 24 14 e8 90 00 } //01 00 
		$a_03_5 = {62 65 61 63 6f 6e 90 02 04 2e 64 6c 6c 00 90 00 } //01 00 
		$a_01_6 = {52 65 66 6c 65 63 74 69 76 65 4c 6f 61 64 65 72 } //01 00  ReflectiveLoader
		$a_00_7 = {5d 04 00 00 f8 } //6b 04 
	condition:
		any of ($a_*)
 
}