
rule PWS_Win32_Stimilina_F_bit{
	meta:
		description = "PWS:Win32/Stimilina.F!bit,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 41 01 80 39 e9 74 0c 80 39 eb 75 0c 0f be c0 41 41 eb 03 83 c1 05 01 c1 } //01 00 
		$a_03_1 = {83 f8 07 75 1c 6a 01 e8 90 01 02 ff ff 25 00 ff 00 00 3d 00 0d 00 00 74 07 3d 00 04 00 00 75 02 b3 01 8b c3 5b c3 90 00 } //01 00 
		$a_01_2 = {2f 00 63 00 20 00 25 00 57 00 49 00 4e 00 44 00 49 00 52 00 25 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 74 00 69 00 6d 00 65 00 6f 00 75 00 74 00 2e 00 65 00 78 00 65 00 20 00 33 00 20 00 26 00 20 00 64 00 65 00 6c 00 } //01 00 
		$a_01_3 = {6d 00 62 00 68 00 64 00 2e 00 77 00 61 00 6c 00 6c 00 65 00 74 00 2e 00 61 00 65 00 73 00 } //01 00 
		$a_01_4 = {6d 00 62 00 68 00 64 00 2e 00 63 00 68 00 65 00 63 00 6b 00 70 00 6f 00 69 00 6e 00 74 00 73 00 } //01 00 
		$a_01_5 = {6d 00 62 00 68 00 64 00 2e 00 73 00 70 00 76 00 63 00 68 00 61 00 69 00 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}