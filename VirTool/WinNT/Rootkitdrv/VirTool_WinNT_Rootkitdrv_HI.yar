
rule VirTool_WinNT_Rootkitdrv_HI{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.HI,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_00_0 = {44 00 65 00 76 00 69 00 63 00 65 00 5c 00 44 00 72 00 69 00 76 00 65 00 72 00 33 00 30 00 34 00 33 00 31 00 35 00 } //1 Device\Driver304315
		$a_00_1 = {41 00 70 00 70 00 49 00 6e 00 69 00 74 00 5f 00 44 00 4c 00 4c 00 73 00 } //1 AppInit_DLLs
		$a_00_2 = {44 00 65 00 76 00 69 00 63 00 65 00 5c 00 54 00 63 00 70 00 } //1 Device\Tcp
		$a_03_3 = {68 3f 00 0f 00 68 90 01 04 e8 90 01 04 8b f8 85 ff 0f 8c 90 01 01 00 00 00 56 bf 00 04 00 00 68 4e 4d 64 61 57 6a 00 90 00 } //3
		$a_01_4 = {8b 48 14 85 c9 74 0f 39 71 04 75 05 8b 16 89 51 04 8b 49 18 eb ed 8b 40 10 eb d9 } //3
		$a_03_5 = {55 68 10 27 00 00 8b 54 90 01 02 8b 44 90 01 02 52 50 e8 90 01 02 00 00 8b da 55 8b f8 6a 19 53 57 e8 90 01 02 00 00 55 68 e8 03 00 00 83 c0 61 90 00 } //3
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_03_3  & 1)*3+(#a_01_4  & 1)*3+(#a_03_5  & 1)*3) >=6
 
}