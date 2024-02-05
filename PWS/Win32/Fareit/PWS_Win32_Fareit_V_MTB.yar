
rule PWS_Win32_Fareit_V_MTB{
	meta:
		description = "PWS:Win32/Fareit.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {55 8b ec 51 e8 90 01 04 89 45 fc 8b 45 08 0f be 00 33 45 fc 8b 4d 08 88 01 90 00 } //01 00 
		$a_02_1 = {8b 85 50 f6 ff ff 40 89 85 90 01 04 8b 85 90 01 04 3b 45 94 73 90 01 01 8b 45 ec 89 85 90 01 04 ff b5 90 01 04 ff b5 90 01 04 ff 75 e8 e8 90 01 04 eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Fareit_V_MTB_2{
	meta:
		description = "PWS:Win32/Fareit.V!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 02 00 "
		
	strings :
		$a_00_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00 
		$a_01_1 = {44 00 63 00 64 00 75 00 6f 00 76 00 53 00 31 00 42 00 4b 00 50 00 74 00 32 00 33 00 34 00 } //01 00 
		$a_01_2 = {62 00 39 00 4d 00 5a 00 31 00 33 00 31 00 36 00 39 00 } //01 00 
		$a_01_3 = {6d 00 77 00 48 00 36 00 63 00 75 00 7a 00 6c 00 65 00 70 00 32 00 7a 00 50 00 5a 00 71 00 63 00 51 00 74 00 47 00 38 00 31 00 } //01 00 
		$a_01_4 = {59 00 45 00 45 00 72 00 56 00 6b 00 67 00 54 00 58 00 6b 00 37 00 5a 00 53 00 38 00 6d 00 44 00 36 00 65 00 32 00 58 00 6a 00 70 00 6c 00 49 00 65 00 68 00 32 00 5a 00 4b 00 32 00 31 00 30 00 33 00 } //01 00 
		$a_01_5 = {58 00 66 00 62 00 62 00 62 00 51 00 51 00 33 00 67 00 50 00 75 00 7a 00 78 00 49 00 51 00 45 00 35 00 55 00 33 00 55 00 56 00 51 00 37 00 70 00 42 00 73 00 75 00 50 00 56 00 56 00 30 00 4c 00 59 00 7a 00 5a 00 66 00 6d 00 35 00 47 00 47 00 31 00 38 00 32 00 } //01 00 
		$a_01_6 = {62 00 57 00 78 00 37 00 6e 00 30 00 45 00 5a 00 71 00 63 00 67 00 51 00 32 00 30 00 37 00 } //01 00 
		$a_01_7 = {7a 00 32 00 51 00 38 00 53 00 4e 00 4a 00 64 00 43 00 51 00 34 00 34 00 4c 00 77 00 53 00 71 00 46 00 61 00 62 00 57 00 55 00 66 00 48 00 72 00 44 00 4b 00 75 00 70 00 53 00 4f 00 63 00 33 00 33 00 } //01 00 
		$a_01_8 = {6a 00 77 00 79 00 46 00 63 00 45 00 35 00 42 00 32 00 72 00 32 00 57 00 44 00 30 00 74 00 42 00 34 00 49 00 76 00 66 00 39 00 4a 00 5a 00 6e 00 61 00 46 00 70 00 45 00 5a 00 79 00 5a 00 73 00 65 00 33 00 35 00 4b 00 52 00 52 00 51 00 31 00 36 00 30 00 } //01 00 
		$a_01_9 = {54 00 67 00 4d 00 79 00 4b 00 6e 00 4f 00 4b 00 43 00 47 00 6f 00 46 00 30 00 65 00 4b 00 4d 00 6d 00 6a 00 6c 00 4b 00 77 00 55 00 79 00 74 00 7a 00 6e 00 7a 00 73 00 4d 00 72 00 76 00 70 00 55 00 70 00 32 00 39 00 } //00 00 
	condition:
		any of ($a_*)
 
}