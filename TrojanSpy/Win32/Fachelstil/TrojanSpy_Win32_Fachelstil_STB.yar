
rule TrojanSpy_Win32_Fachelstil_STB{
	meta:
		description = "TrojanSpy:Win32/Fachelstil.STB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {2f 00 65 00 76 00 65 00 6e 00 74 00 73 00 3f 00 64 00 65 00 76 00 69 00 63 00 65 00 3d 00 90 02 04 26 00 70 00 77 00 64 00 3d 00 90 00 } //01 00 
		$a_02_1 = {2f 00 73 00 63 00 72 00 65 00 65 00 6e 00 3f 00 64 00 65 00 76 00 69 00 63 00 65 00 3d 00 90 02 04 26 00 70 00 77 00 64 00 3d 00 90 00 } //01 00 
		$a_02_2 = {2f 00 74 00 61 00 73 00 6b 00 73 00 3f 00 64 00 65 00 76 00 69 00 63 00 65 00 3d 00 90 02 04 26 00 70 00 77 00 64 00 3d 00 90 00 } //01 00 
		$a_02_3 = {2f 00 66 00 73 00 3f 00 64 00 65 00 76 00 69 00 63 00 65 00 3d 00 90 02 04 26 00 70 00 77 00 64 00 3d 00 90 00 } //01 00 
		$a_02_4 = {2f 00 66 00 73 00 2f 00 74 00 72 00 65 00 65 00 3f 00 64 00 65 00 76 00 69 00 63 00 65 00 3d 00 90 02 04 26 00 70 00 77 00 64 00 3d 00 90 00 } //01 00 
		$a_02_5 = {63 00 65 00 72 00 74 00 75 00 74 00 69 00 6c 00 2e 00 65 00 78 00 65 00 20 00 2d 00 75 00 72 00 6c 00 63 00 61 00 63 00 68 00 65 00 20 00 2d 00 73 00 70 00 6c 00 69 00 74 00 20 00 2d 00 66 00 20 00 22 00 68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 90 02 40 2e 00 65 00 78 00 65 00 22 00 90 00 } //00 00 
		$a_00_6 = {5d 04 00 } //00 64 
	condition:
		any of ($a_*)
 
}