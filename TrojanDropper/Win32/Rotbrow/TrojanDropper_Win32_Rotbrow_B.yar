
rule TrojanDropper_Win32_Rotbrow_B{
	meta:
		description = "TrojanDropper:Win32/Rotbrow.B,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 05 00 "
		
	strings :
		$a_03_0 = {72 04 8b 03 eb 02 8b c3 ba 90 01 02 00 00 66 33 14 75 90 01 04 46 66 89 54 70 fe 83 fe 90 01 01 72 d2 8b c7 90 00 } //01 00 
		$a_01_1 = {62 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 6f 00 72 00 46 00 6f 00 72 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 00 00 } //01 00 
		$a_01_2 = {42 00 52 00 4f 00 57 00 53 00 45 00 52 00 4d 00 4e 00 47 00 52 00 53 00 45 00 54 00 54 00 49 00 4e 00 47 00 53 00 00 00 } //01 00 
		$a_01_3 = {62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 64 00 62 00 61 00 00 00 } //01 00 
		$a_01_4 = {6b 00 65 00 72 00 62 00 65 00 72 00 6f 00 73 00 5f 00 62 00 68 00 6f 00 2e 00 64 00 6c 00 6c 00 00 00 } //01 00 
		$a_01_5 = {62 00 50 00 72 00 6f 00 74 00 65 00 63 00 74 00 2e 00 73 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 00 00 } //01 00 
		$a_01_6 = {42 50 52 4f 54 45 43 54 5f 58 4d 4c 5f 4e 41 4d 45 00 } //00 00  偂佒䕔呃塟䱍也䵁E
	condition:
		any of ($a_*)
 
}