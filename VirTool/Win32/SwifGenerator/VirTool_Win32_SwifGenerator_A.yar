
rule VirTool_Win32_SwifGenerator_A{
	meta:
		description = "VirTool:Win32/SwifGenerator.A,SIGNATURE_TYPE_PEHSTR_EXT,50 00 50 00 0d 00 00 05 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 76 62 36 6d 69 6e 69 5c 56 42 36 2e 4f 4c 42 } //02 00  C:\Program Files\vb6mini\VB6.OLB
		$a_01_1 = {45 56 45 4e 54 5f 53 49 4e 4b 5f 51 75 65 72 79 49 6e 74 65 72 66 61 63 65 } //0a 00  EVENT_SINK_QueryInterface
		$a_00_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 30 00 78 00 34 00 66 00 2e 00 63 00 6e 00 2f 00 62 00 6c 00 6f 00 67 00 } //02 00  http://www.0x4f.cn/blog
		$a_01_3 = {4d 5a 4b 45 52 4e 45 4c 33 32 2e 44 4c 4c } //02 00  MZKERNEL32.DLL
		$a_01_4 = {46 6f 72 6d 31 } //0a 00  Form1
		$a_01_5 = {56 42 35 21 36 26 76 62 36 63 68 73 2e 64 6c 6c } //02 00  VB5!6&vb6chs.dll
		$a_00_6 = {56 00 61 00 72 00 46 00 69 00 6c 00 65 00 49 00 6e 00 66 00 6f 00 } //02 00  VarFileInfo
		$a_01_7 = {43 6c 69 63 6b } //05 00  Click
		$a_01_8 = {56 42 41 36 2e 44 4c 4c } //0a 00  VBA6.DLL
		$a_00_9 = {46 00 4c 00 41 00 53 00 48 00 } //0a 00  FLASH
		$a_00_10 = {46 00 6c 00 61 00 73 00 68 00 20 00 30 00 64 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //0a 00  Flash 0day.exe
		$a_00_11 = {57 00 69 00 6e 00 20 00 39 00 2c 00 30 00 2c 00 31 00 31 00 35 00 2c 00 30 00 69 00 65 00 2e 00 73 00 77 00 66 00 } //0a 00  Win 9,0,115,0ie.swf
		$a_01_12 = {4d 65 74 68 43 61 6c 6c 45 6e 67 69 6e 65 } //00 00  MethCallEngine
	condition:
		any of ($a_*)
 
}