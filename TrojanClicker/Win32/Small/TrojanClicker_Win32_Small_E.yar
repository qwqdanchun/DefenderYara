
rule TrojanClicker_Win32_Small_E{
	meta:
		description = "TrojanClicker:Win32/Small.E,SIGNATURE_TYPE_PEHSTR,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {77 69 6e 73 74 61 30 5c 64 65 66 61 75 6c 74 } //0a 00 
		$a_01_1 = {5c 5c 2e 5c 70 69 70 65 } //01 00 
		$a_01_2 = {50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 20 64 72 65 66 75 73 2e 6f 72 67 2f 66 72 2f 3f 69 64 3d 75 73 } //01 00 
		$a_01_3 = {50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 20 6e 77 66 72 61 6d 65 2e 6e 65 74 2f 66 72 2f 3f 69 64 3d 75 73 } //00 00 
	condition:
		any of ($a_*)
 
}