
rule HackTool_Win64_Wincred_I_{
	meta:
		description = "HackTool:Win64/Wincred.I!!Wincred.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_80_0 = {57 43 45 41 64 64 4e 54 4c 4d 43 72 65 64 65 6e 74 69 61 6c 73 } //WCEAddNTLMCredentials  01 00 
		$a_80_1 = {57 43 45 44 65 6c 4e 54 4c 4d 43 72 65 64 65 6e 74 69 61 6c 73 } //WCEDelNTLMCredentials  01 00 
		$a_80_2 = {57 43 45 47 65 74 4e 54 4c 4d 43 72 65 64 65 6e 74 69 61 6c 73 } //WCEGetNTLMCredentials  01 00 
		$a_80_3 = {77 63 65 61 75 78 2e 64 6c 6c } //wceaux.dll  01 00 
		$a_01_4 = {48 8b 84 24 f0 00 00 00 0f b7 40 4e 8b d0 48 8d 8c 24 20 05 00 00 ff 94 24 e8 00 00 00 48 8b 84 24 f0 00 00 00 0f b7 40 4e 48 8b 8c 24 40 0d 00 00 48 81 c1 18 08 00 00 44 8b c8 4c 8d 84 24 20 05 00 00 } //01 00 
		$a_01_5 = {49 83 e0 3f 49 c1 e9 06 75 39 4d 8b c8 49 83 e0 07 49 c1 e9 03 74 11 66 66 66 90 90 48 89 11 48 83 c1 08 49 ff c9 75 f4 } //01 00 
		$a_03_6 = {48 8b 44 24 38 0f b7 00 99 2b c2 d1 f8 89 84 24 60 04 00 00 48 8b 44 24 38 48 8b 40 08 48 89 44 24 40 44 8b 8c 24 60 04 00 00 4c 8b 44 24 40 ba 00 04 00 00 48 8d 4c 24 60 e8 90 01 04 89 44 24 48 83 7c 24 48 00 75 17 48 8b 84 24 80 04 00 00 c7 80 40 08 00 00 00 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}