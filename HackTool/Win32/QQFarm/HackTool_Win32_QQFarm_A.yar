
rule HackTool_Win32_QQFarm_A{
	meta:
		description = "HackTool:Win32/QQFarm.A,SIGNATURE_TYPE_PEHSTR,07 00 07 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {46 36 30 30 33 36 33 30 37 38 44 45 34 39 63 35 42 31 30 41 46 36 32 43 37 41 31 33 42 33 37 45 } //02 00 
		$a_01_1 = {2e 35 39 74 6f 75 2e 63 6f 6d } //01 00 
		$a_01_2 = {20 37 30 38 32 38 30 00 } //01 00 
		$a_01_3 = {61 77 61 72 64 6e 61 6d 65 00 } //01 00 
		$a_01_4 = {26 62 65 6e 65 77 30 39 30 38 3d 31 } //01 00 
		$a_01_5 = {26 66 72 69 65 6e 64 75 69 6e 3d } //01 00 
		$a_01_6 = {2f 72 6f 73 61 72 79 30 39 } //01 00 
		$a_01_7 = {61 6e 71 75 61 6e 2e 68 74 6d 6c } //00 00 
	condition:
		any of ($a_*)
 
}