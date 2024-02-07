
rule HackTool_Win32_DoorH_A_dha{
	meta:
		description = "HackTool:Win32/DoorH.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0c 00 00 01 00 "
		
	strings :
		$a_02_0 = {2d 65 6e 75 6d 90 0d 0a 00 45 6e 75 6d 20 74 68 65 20 48 6f 73 74 5c 55 73 65 72 5c 47 72 6f 75 70 90 00 } //01 00 
		$a_02_1 = {2d 66 70 6f 72 74 90 0d 09 00 46 70 6f 72 74 90 00 } //01 00 
		$a_02_2 = {2d 68 62 73 90 0d 0b 00 50 6f 72 74 20 42 61 6e 6e 65 72 20 53 63 61 6e 6e 65 72 90 00 } //01 00 
		$a_02_3 = {2d 68 73 63 61 6e 90 0d 09 00 50 69 6e 67 2f 4e 61 6d 65 2f 53 51 4c 2f 49 50 43 20 53 63 61 6e 6e 65 72 90 00 } //01 00 
		$a_02_4 = {2d 50 61 63 6b 65 74 90 0d 08 00 50 61 63 6b 65 74 20 54 72 61 6e 73 6d 69 74 90 00 } //01 00 
		$a_02_5 = {2d 70 75 6c 69 73 74 90 0d 08 00 4c 69 6b 65 20 50 75 6c 69 73 74 90 00 } //01 00 
		$a_02_6 = {2d 70 73 6b 69 6c 6c 90 0d 08 00 4b 69 6c 6c 20 61 20 50 72 6f 63 65 73 73 90 00 } //01 00 
		$a_02_7 = {2d 70 73 6c 69 73 74 90 0d 08 00 4c 69 73 74 20 50 72 6f 63 65 73 73 90 00 } //01 00 
		$a_02_8 = {2d 73 61 66 65 64 65 6c 90 0d 07 00 53 61 66 65 20 44 65 6c 65 74 65 20 46 69 6c 65 90 00 } //01 00 
		$a_00_9 = {2d 73 65 74 66 69 6c 65 74 69 6d 65 20 20 20 53 65 74 20 46 69 6c 65 20 54 69 6d 65 } //01 00  -setfiletime   Set File Time
		$a_02_10 = {2d 73 6f 63 6b 73 90 0d 09 00 53 6f 63 6b 73 35 20 50 72 6f 78 79 90 00 } //01 00 
		$a_02_11 = {2d 73 71 6c 90 0d 0b 00 53 51 4c 20 78 70 5f 63 6d 64 73 68 65 6c 6c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}