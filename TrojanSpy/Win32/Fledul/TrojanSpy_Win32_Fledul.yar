
rule TrojanSpy_Win32_Fledul{
	meta:
		description = "TrojanSpy:Win32/Fledul,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 23 63 25 70 25 6c 25 } //01 00 
		$a_01_1 = {5c 2a 70 2a 72 23 6f 23 63 25 65 25 73 25 73 25 78 25 78 25 } //01 00 
		$a_01_2 = {67 2a 65 40 74 40 6d 40 61 40 69 23 6c 23 } //01 00 
		$a_01_3 = {72 25 65 25 67 2a 20 2a 61 2a 64 2a 64 23 } //00 00 
	condition:
		any of ($a_*)
 
}