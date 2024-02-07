
rule HackTool_Win32_Eqtonex_A_ibt{
	meta:
		description = "HackTool:Win32/Eqtonex.A!ibt,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 69 6e 64 52 65 6e 64 65 7a 76 6f 75 73 00 63 6c 6f 73 65 45 4d } //01 00  楢摮敒摮穥潶獵挀潬敳䵅
		$a_01_1 = {63 6c 6f 73 65 52 65 6e 64 65 7a 76 6f 75 73 00 63 6f 6e 6e 65 63 74 52 65 6e 64 65 7a 76 6f 75 73 } //01 00 
		$a_01_2 = {64 69 73 63 6f 6e 6e 65 63 74 52 65 6e 64 65 7a 76 6f 75 73 00 67 65 74 44 65 66 61 75 6c 74 45 4d 46 69 6c 65 } //01 00 
		$a_01_3 = {6f 70 65 6e 45 4d 46 6f 72 57 72 69 74 69 6e 67 00 72 65 61 64 50 61 72 61 6d 73 46 72 6f 6d 45 4d } //01 00 
		$a_01_4 = {72 65 63 76 53 6f 63 6b 65 74 00 73 65 6e 64 53 6f 63 6b 65 74 73 00 77 72 69 74 65 50 61 72 61 6d 73 54 6f 45 4d } //00 00  敲癣潓正瑥猀湥卤捯敫獴眀楲整慐慲獭潔䵅
	condition:
		any of ($a_*)
 
}