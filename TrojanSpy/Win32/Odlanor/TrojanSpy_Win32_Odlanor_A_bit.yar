
rule TrojanSpy_Win32_Odlanor_A_bit{
	meta:
		description = "TrojanSpy:Win32/Odlanor.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 6f 6b 65 72 53 74 61 72 73 54 61 62 6c 65 46 72 61 6d 65 43 6c 61 73 73 00 50 6f 6b 65 72 53 74 61 72 73 3a 20 00 7c 7c 7c 00 } //01 00 
		$a_03_1 = {62 62 73 79 73 74 65 6d 73 2e 69 6e 66 6f 00 25 64 00 90 02 10 00 50 4f 53 54 20 2f 25 73 2f 72 2e 70 68 70 3f 6d 3d 25 73 26 76 3d 25 73 26 6f 73 3d 25 73 26 63 3d 25 73 26 75 3d 25 73 20 48 54 54 50 2f 31 2e 30 90 00 } //01 00 
		$a_01_2 = {00 4f 4b 00 44 45 53 54 52 4f 59 00 53 43 52 45 45 4e 53 48 4f 54 00 } //01 00 
		$a_01_3 = {46 75 6c 6c 54 69 6c 74 50 6f 6b 65 72 3a 20 00 46 75 6c 6c 54 69 6c 74 50 6f 6b 65 72 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 9a 
	condition:
		any of ($a_*)
 
}