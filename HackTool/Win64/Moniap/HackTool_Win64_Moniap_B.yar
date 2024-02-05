
rule HackTool_Win64_Moniap_B{
	meta:
		description = "HackTool:Win64/Moniap.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {74 73 62 2e 6d 73 63 90 02 20 25 73 20 2d 62 69 6e 64 65 72 20 22 25 73 22 90 02 10 25 73 5c 2a 2e 65 78 65 90 00 } //01 00 
		$a_03_1 = {75 73 62 2e 6d 73 63 90 02 08 25 73 2e 64 65 6c 90 02 10 44 69 72 65 63 74 58 2e 6d 73 63 90 02 10 75 63 70 2e 6d 73 63 90 00 } //01 00 
		$a_03_2 = {2d 74 73 68 61 63 6b 20 25 64 20 25 73 25 73 90 02 08 4d 53 41 53 47 75 69 2e 65 78 65 90 02 10 50 72 6f 67 72 61 6d 44 61 74 61 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 53 74 61 72 74 20 4d 65 6e 75 5c 50 72 6f 67 72 61 6d 73 5c 53 74 61 72 74 75 70 5c 90 00 } //00 00 
		$a_00_3 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}