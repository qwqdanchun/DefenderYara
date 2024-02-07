
rule Backdoor_Win32_Farfli_C{
	meta:
		description = "Backdoor:Win32/Farfli.C,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 07 00 00 04 00 "
		
	strings :
		$a_02_0 = {68 00 00 01 c0 ff 75 08 ff 15 90 01 02 40 00 8b f0 83 fe ff 75 04 33 c0 eb 1d 8d 45 f0 50 8d 45 e8 50 8d 45 e0 50 90 00 } //04 00 
		$a_00_1 = {80 c9 ff 2a 08 47 3b fe 88 08 72 ee 33 ff } //04 00 
		$a_02_2 = {b9 ff 00 00 00 2b c8 8b 85 90 01 02 ff ff 88 88 90 01 02 43 00 eb c5 83 a5 90 01 02 ff ff 00 eb 0d 8b 85 90 01 02 ff ff 40 89 85 90 00 } //01 00 
		$a_00_3 = {0f 84 08 00 00 00 0f 85 02 00 00 00 eb } //01 00 
		$a_00_4 = {0f 84 0a 00 00 00 0f 85 04 00 00 00 eb } //01 00 
		$a_00_5 = {0f 84 0e 00 00 00 0f 85 08 00 00 00 eb } //01 00 
		$a_00_6 = {0f 84 14 00 00 00 0f 85 0e 00 00 00 eb } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Farfli_C_2{
	meta:
		description = "Backdoor:Win32/Farfli.C,SIGNATURE_TYPE_PEHSTR_EXT,16 00 16 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {68 00 00 01 c0 ff 75 08 ff 15 90 01 02 40 00 8b f0 83 fe ff 75 04 33 c0 eb 1d 8d 45 f0 50 8d 45 e8 50 8d 45 e0 50 90 00 } //0a 00 
		$a_02_1 = {33 f6 56 56 56 56 56 ff 74 90 01 02 6a 01 6a 03 6a 01 68 ff 01 0f 00 ff 74 24 90 01 01 ff 74 24 90 01 01 ff 74 24 90 01 01 ff 15 90 01 03 00 3b c6 5e 75 03 33 c0 c3 50 ff 15 90 01 03 00 6a 01 58 c3 57 68 ff 01 0f 00 90 00 } //01 00 
		$a_00_2 = {53 74 61 72 74 53 65 72 76 69 63 65 41 } //01 00  StartServiceA
		$a_00_3 = {28 00 43 00 29 00 20 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 6f 00 72 00 70 00 6f 00 72 00 61 00 74 00 69 00 6f 00 6e 00 2e 00 20 00 41 00 6c 00 6c 00 20 00 72 00 69 00 67 00 68 00 74 00 73 00 20 00 72 00 65 00 73 00 65 00 72 00 76 00 65 00 64 00 2e 00 } //00 00  (C) Microsoft Corporation. All rights reserved.
	condition:
		any of ($a_*)
 
}