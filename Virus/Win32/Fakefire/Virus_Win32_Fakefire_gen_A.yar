
rule Virus_Win32_Fakefire_gen_A{
	meta:
		description = "Virus:Win32/Fakefire.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 09 00 00 0a 00 "
		
	strings :
		$a_02_0 = {83 c4 0c c7 45 fc 0b 00 00 00 6a 00 68 90 01 04 8d 4d 90 01 01 51 ff 15 90 01 04 8d 55 90 01 01 52 8d 45 90 01 01 50 ff 15 90 01 04 c7 45 fc 0c 00 00 00 c7 85 90 01 01 ff ff ff 90 01 04 c7 85 90 01 01 ff ff ff 08 00 00 00 c7 85 90 01 01 ff ff ff 90 01 04 c7 85 90 01 01 ff ff ff 08 00 00 00 b8 10 00 00 00 90 00 } //0a 00 
		$a_02_1 = {89 41 0c 6a 02 68 90 01 04 8d 4d 90 01 01 51 ff 15 90 01 04 50 ff 15 90 01 04 83 c4 2c c7 45 fc 0d 00 00 00 8b 55 08 66 c7 42 50 01 00 c7 45 fc 0e 00 00 00 ba 90 01 04 8d 4d 90 01 01 ff 15 90 01 04 c7 45 fc 0f 00 00 00 90 00 } //01 00 
		$a_00_2 = {5c 00 6f 00 77 00 6e 00 65 00 72 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 2e 00 70 00 74 00 74 00 00 00 } //01 00 
		$a_00_3 = {3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 00 00 } //01 00 
		$a_00_4 = {77 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 00 00 } //01 00 
		$a_00_5 = {52 00 65 00 67 00 77 00 72 00 69 00 74 00 65 00 00 00 } //01 00 
		$a_00_6 = {2a 00 2e 00 65 00 78 00 65 00 00 00 } //01 00 
		$a_00_7 = {63 00 64 00 65 00 66 00 67 00 68 00 69 00 6a 00 6b 00 6c 00 6d 00 6e 00 6f 00 70 00 71 00 72 00 73 00 74 00 75 00 76 00 77 00 78 00 79 00 7a 00 00 00 } //01 00 
		$a_00_8 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //00 00 
	condition:
		any of ($a_*)
 
}