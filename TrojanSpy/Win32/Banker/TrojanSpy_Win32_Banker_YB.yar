
rule TrojanSpy_Win32_Banker_YB{
	meta:
		description = "TrojanSpy:Win32/Banker.YB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 5c 52 75 6e 22 20 2f 76 20 22 90 03 04 04 43 49 50 41 56 49 50 41 22 20 2f 64 20 43 3a 5c 55 6e 6e 69 73 74 74 61 6c 6c 2e 65 78 65 20 2f 74 20 22 52 45 47 5f 53 5a 22 20 2f 66 00 90 00 } //01 00 
		$a_01_1 = {4f 6e 65 43 6f 70 79 4d 75 74 65 78 00 } //01 00 
		$a_01_2 = {6d 65 73 73 61 67 65 3d 69 6e 66 65 63 74 61 64 6f 00 } //00 00 
	condition:
		any of ($a_*)
 
}