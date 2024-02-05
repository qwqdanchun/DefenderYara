
rule BrowserModifier_Win32_Webalta{
	meta:
		description = "BrowserModifier:Win32/Webalta,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 6c 6f 62 61 6c 5c 53 65 61 72 63 68 53 65 72 76 69 63 65 } //01 00 
		$a_01_1 = {57 65 62 61 6c 74 61 53 65 72 76 69 63 65 } //01 00 
		$a_01_2 = {50 24 72 6f 24 63 65 73 73 } //01 00 
		$a_01_3 = {44 24 6f 77 6e 24 6c 6f 61 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Webalta_2{
	meta:
		description = "BrowserModifier:Win32/Webalta,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {b1 2e 83 f8 04 7e 0b 38 4c 18 fc 75 05 c6 44 18 fc 00 83 f8 05 7e 0b 38 4c 18 fb 75 05 c6 44 18 fb 00 83 f8 08 7e 0b 38 4c 18 f9 75 05 c6 44 18 f9 00 83 f8 09 } //01 00 
		$a_01_1 = {47 6c 6f 62 61 6c 5c 53 65 61 72 63 68 53 65 72 76 69 63 65 } //01 00 
		$a_01_2 = {57 65 62 61 6c 74 61 53 65 72 76 69 63 65 } //01 00 
		$a_00_3 = {77 65 62 61 6c 74 61 2e 72 75 2f 73 72 63 68 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Webalta_3{
	meta:
		description = "BrowserModifier:Win32/Webalta,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {8b 55 f0 32 45 e3 88 44 1a ff 47 4e 75 e0 3b 5d ec 7c c8 8b 55 f0 8b 4d ec 8b 45 f4 e8 } //01 00 
		$a_01_1 = {57 65 62 d0 b0 6c 74 d0 b0 2e 72 75 07 43 68 65 63 6b 65 64 09 } //01 00 
		$a_01_2 = {2f 67 65 74 5f 63 68 65 61 74 73 6d 61 6e 69 61 5f 6c 69 6e 6b 2e 70 68 70 3f 6c 6f 61 64 3d 00 } //01 00 
		$a_01_3 = {32 71 33 34 63 72 33 71 34 77 72 74 33 65 35 74 00 } //01 00 
		$a_03_4 = {2e 74 6f 72 72 e5 6e 74 90 01 18 5f 72 61 72 90 00 } //01 00 
		$a_01_5 = {71 6d 00 00 74 78 74 00 55 8b ec } //01 00 
		$a_01_6 = {2f 70 61 72 74 6e 65 72 3d 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Webalta_4{
	meta:
		description = "BrowserModifier:Win32/Webalta,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 09 00 09 00 00 02 00 "
		
	strings :
		$a_03_0 = {85 c0 7e 17 ba 01 00 00 00 8b 4d 90 01 01 8a 4c 11 ff 8b 75 90 01 01 30 0c 1e 43 42 48 75 ee 3b 5d 90 01 01 7c d8 90 00 } //02 00 
		$a_03_1 = {85 c0 7e 1f ba 01 00 00 00 8b 4d 90 01 01 8a 4c 11 ff 88 4d 90 01 01 8b 4d 90 01 01 8d 34 19 8a 4d 90 01 01 30 0e 43 42 48 75 e6 3b 5d 90 01 01 7c d0 90 00 } //05 00 
		$a_01_2 = {57 65 62 61 6c 74 61 2e 72 75 07 43 68 65 63 6b 65 64 09 } //01 00 
		$a_03_3 = {30 5f 30 5f 90 01 0c 2e 65 78 65 00 90 00 } //01 00 
		$a_03_4 = {26 7c 00 00 ff ff ff ff 90 02 21 00 00 00 73 6f 66 74 00 90 00 } //01 00 
		$a_03_5 = {68 74 74 70 3a 2f 2f 90 02 01 2e 2e 2e 00 90 00 } //01 00 
		$a_03_6 = {54 46 6f 72 6d 31 00 90 01 12 30 41 3f 30 3a 3e 32 3a 30 90 00 } //05 00 
		$a_01_7 = {57 65 62 d0 b0 6c 74 d0 b0 2e 72 75 07 43 68 65 63 6b 65 64 09 } //01 00 
		$a_01_8 = {2f 73 3d 31 20 2f 70 61 72 74 6e 65 72 3d } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Webalta_5{
	meta:
		description = "BrowserModifier:Win32/Webalta,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 10 00 00 02 00 "
		
	strings :
		$a_01_0 = {2f 67 65 74 5f 63 68 65 61 74 73 6d 61 6e 69 61 5f 6c 69 6e 6b 2e 70 68 70 3f } //01 00 
		$a_01_1 = {00 20 2f 70 61 72 74 6e 65 72 3d 00 } //01 00 
		$a_01_2 = {00 2f 70 61 72 74 6e 65 72 3d 00 } //01 00 
		$a_01_3 = {00 2f 73 3d 31 00 } //01 00 
		$a_01_4 = {00 5f 72 61 72 00 } //01 00 
		$a_01_5 = {20 57 65 62 d0 b0 6c 74 d0 b0 2e 72 75 } //01 00 
		$a_03_6 = {54 46 6f 72 6d 31 00 90 01 12 30 41 3f 30 3a 3e 32 3a 30 90 00 } //01 00 
		$a_01_7 = {57 65 62 d0 b0 6c 74 d0 b0 2e 72 75 07 43 68 65 63 6b 65 64 09 } //01 00 
		$a_01_8 = {59 de c0 d6 14 de d3 d6 df c4 56 d5 d8 c6 14 df } //01 00 
		$a_01_9 = {57 65 62 30 6c 74 30 2e 72 75 } //01 00 
		$a_01_10 = {71 6d 00 00 74 78 74 00 55 8b ec } //02 00 
		$a_01_11 = {c7 45 ec 01 00 00 00 43 8b 45 e4 8b 55 ec 8a 44 10 ff 8b 55 f0 30 44 1a ff ff 45 ec 4e 75 e8 3b 5d e8 7c ce } //02 00 
		$a_01_12 = {be 01 00 00 00 8b 55 e8 0f b6 7c 32 ff 8b 55 f0 8a 14 1a 8b cf 32 d1 8b 4d f0 88 14 19 43 46 48 75 e3 } //01 00 
		$a_03_13 = {2f 70 61 72 00 90 02 0b 74 6e 65 72 3d 00 90 00 } //01 00 
		$a_01_14 = {71 6d 00 00 54 58 54 00 } //01 00 
		$a_01_15 = {71 6d 00 00 6d 74 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}