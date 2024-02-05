
rule TrojanSpy_Win32_Westnet_A{
	meta:
		description = "TrojanSpy:Win32/Westnet.A,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 db 80 bd 90 01 02 ff ff 5c 75 09 80 bd 90 01 02 ff ff 4b 74 90 01 01 e8 90 01 02 ff ff 33 c0 5a 59 59 64 89 10 90 00 } //01 00 
		$a_03_1 = {63 6f 6f 6b 69 65 90 02 10 70 61 79 70 61 6c 2e 90 02 10 6c 6f 67 69 6e 5f 65 6d 61 69 6c 90 00 } //01 00 
		$a_01_2 = {2e 6d 79 70 65 6e 2e 69 73 } //01 00 
		$a_01_3 = {63 6f 6e 66 69 67 2e 61 73 69 61 } //04 00 
		$a_03_4 = {2f 31 2f 31 2e 70 68 70 3f 71 3d 31 26 61 3d 90 0a 35 00 2e 65 78 65 00 90 02 15 68 74 74 70 73 3a 2f 2f 90 00 } //00 00 
		$a_00_5 = {5d 04 00 00 } //d2 08 
	condition:
		any of ($a_*)
 
}