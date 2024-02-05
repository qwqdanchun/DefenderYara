
rule VirTool_Win32_CeeInject_gen_J{
	meta:
		description = "VirTool:Win32/CeeInject.gen!J,SIGNATURE_TYPE_PEHSTR_EXT,6d 00 6d 00 1a 00 00 01 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //01 00 
		$a_00_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00 
		$a_00_2 = {4c 6f 61 64 52 65 73 6f 75 72 63 65 } //01 00 
		$a_00_3 = {46 69 6e 64 52 65 73 6f 75 72 63 65 41 } //01 00 
		$a_01_4 = {53 69 7a 65 6f 66 52 65 73 6f 75 72 63 65 } //01 00 
		$a_01_5 = {47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_00_6 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_00_7 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00 
		$a_00_8 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00 
		$a_00_9 = {6d 5f 53 74 75 62 00 } //0a 00 
		$a_03_10 = {8a 10 32 91 90 01 04 8b 45 90 01 01 03 45 90 01 01 88 10 eb 90 00 } //0a 00 
		$a_01_11 = {81 e3 ff 00 00 80 79 08 4b 81 cb 00 ff ff ff 43 8a 5c 9c 14 30 1c 2a 42 3b d0 72 } //0a 00 
		$a_03_12 = {8b 45 08 03 85 90 01 02 ff ff 8a 10 32 94 8d 90 01 02 ff ff 8b 45 08 03 85 90 01 02 ff ff 88 10 e9 90 00 } //0a 00 
		$a_03_13 = {8a 04 1f 8a 54 94 90 01 01 32 c2 88 04 1f 8b 84 24 90 01 02 00 00 47 3b f8 72 90 00 } //0a 00 
		$a_03_14 = {99 f7 f9 8a 84 95 90 01 02 ff ff 30 07 ff 45 90 01 01 8b 45 90 01 01 3b 45 90 01 01 72 90 00 } //0a 00 
		$a_01_15 = {66 b9 ff ff eb 06 66 b8 00 4c cd 21 e2 f6 } //0a 00 
		$a_02_16 = {8a 14 31 8a 0c 07 32 ca 88 0c 07 ff d5 50 ff 15 90 01 04 a3 90 01 04 8b 44 24 20 47 3b f8 0f 8c 2f ff ff ff 90 00 } //64 00 
		$a_01_17 = {6a 04 68 00 30 00 00 ff 73 50 ff 73 34 ff 75 e4 ff 15 } //64 00 
		$a_03_18 = {6a 40 68 00 30 00 00 8b 48 50 8b 50 34 8b 44 24 90 01 01 51 52 50 ff 90 00 } //64 00 
		$a_03_19 = {6a 40 68 00 30 00 00 90 03 02 01 8b 0d a1 90 01 04 8b 90 03 01 01 51 48 50 90 03 01 01 52 51 90 03 01 02 a1 8b 15 90 01 04 8b 90 03 01 01 48 42 34 90 03 01 01 51 50 8b 90 03 01 01 95 8d 90 01 02 ff ff 90 03 01 01 52 51 ff 90 00 } //64 00 
		$a_03_20 = {8b 48 50 51 8b 15 90 01 04 8b 42 34 50 8b 4d 90 01 01 51 ff 15 90 00 } //64 00 
		$a_01_21 = {6a 40 68 00 30 00 00 8b 50 50 8b 40 34 52 50 51 ff } //64 00 
		$a_03_22 = {6a 40 68 00 30 00 00 a1 90 01 04 8b 4c 24 90 01 01 8b 50 50 8b 40 34 52 50 51 ff 90 00 } //64 00 
		$a_03_23 = {6a 40 68 00 30 00 00 8b 0d 90 01 04 8b 51 50 52 a1 90 01 04 8b 48 34 51 8b 55 90 01 01 52 ff 90 00 } //64 00 
		$a_03_24 = {8b 50 50 8b 40 34 8b 4c 24 90 01 01 6a 40 68 00 30 00 00 52 50 51 ff 90 00 } //64 00 
		$a_02_25 = {6a 40 c1 e9 1f 03 d1 8b 4c 24 90 01 01 89 15 90 01 04 8b 50 50 8b 40 34 68 00 30 00 00 52 50 51 ff 15 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}