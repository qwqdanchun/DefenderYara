
rule TrojanProxy_Win32_Sefbov_D{
	meta:
		description = "TrojanProxy:Win32/Sefbov.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 62 73 73 72 65 67 00 } //01 00 
		$a_01_1 = {6d 61 69 6c 61 2e 6d 69 63 72 6f 73 6f 66 74 2e 63 6f 6d 3a 32 35 00 } //01 00 
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 63 62 73 73 5c 43 61 6c 6c 42 61 63 6b 00 } //01 00 
		$a_01_3 = {2f 43 61 6c 6c 42 61 63 6b 2f 53 6f 6d 65 53 63 72 69 70 74 73 2f 6d 67 73 4e 65 77 50 65 65 72 2e 70 68 70 00 } //01 00 
		$a_03_4 = {68 80 00 00 00 68 90 01 04 e8 90 01 04 68 90 01 04 6a 00 6a 02 e8 90 01 04 0b c0 0f 84 90 01 04 8b f8 68 90 01 04 6a 00 6a 02 e8 90 01 04 90 90 8b f0 68 90 01 04 6a 00 68 00 00 10 00 e8 90 01 04 8b d8 57 e8 90 01 04 6a ff 53 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}