
rule TrojanDropper_Win32_QQpass_gen_C{
	meta:
		description = "TrojanDropper:Win32/QQpass.gen!C,SIGNATURE_TYPE_PEHSTR_EXT,4b 00 41 00 36 00 00 01 00 "
		
	strings :
		$a_00_0 = {6e 70 6b 63 72 79 70 74 2e 73 79 73 } //01 00 
		$a_00_1 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //02 00 
		$a_00_2 = {73 33 db 6a 00 e8 ee ff ff ff 83 f8 07 75 1c 6a 01 e8 e2 ff ff ff } //01 00 
		$a_00_3 = {6d 6f 6e 65 79 } //01 00 
		$a_00_4 = {73 74 72 69 6b 65 6f 75 74 } //01 00 
		$a_00_5 = {68 6f 74 6c 69 67 68 74 } //02 00 
		$a_00_6 = {75 78 74 68 65 6d 65 2e 64 6c 6c } //02 00 
		$a_00_7 = {83 c9 ff 83 ca ff e8 01 00 00 00 c3 6a 00 52 51 b2 04 66 8b } //02 00 
		$a_00_8 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 62 00 61 00 72 00 } //02 00 
		$a_00_9 = {6b 65 79 70 72 65 73 73 } //01 00 
		$a_00_10 = {73 6d 74 70 } //01 00 
		$a_00_11 = {74 66 6f 72 6d 31 } //02 00 
		$a_00_12 = {8b 65 fc 8a 64 18 ff 24 0f 8b 75 f8 8a 74 32 ff 80 e2 0f 32 c2 88 65 f3 8d 65 fc e8 90 01 04 8b 75 fc 8a 74 1a ff 80 e2 f0 8a 6d f3 02 d1 88 74 18 ff 66 90 00 } //02 00 
		$a_00_13 = {07 00 42 00 42 00 41 00 42 00 4f 00 52 00 54 00 } //02 00 
		$a_00_14 = {06 00 44 00 56 00 43 00 4c 00 41 00 4c 00 } //02 00 
		$a_00_15 = {08 00 4d 00 41 00 49 00 4e 00 49 00 43 00 4f 00 4e 00 } //02 00 
		$a_00_16 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 73 79 73 74 65 6d 33 32 5c 90 02 08 2e 65 78 65 90 00 } //02 00 
		$a_00_17 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 53 68 65 6c 6c 45 78 65 63 75 74 65 48 6f 6f 6b 73 } //0a 00 
		$a_00_18 = {53 79 73 57 46 53 46 2e 64 6c 6c } //0a 00 
		$a_00_19 = {53 79 73 57 46 47 51 51 32 2e 64 6c 6c } //05 00 
		$a_00_20 = {78 69 61 6f 79 75 77 65 64 40 67 6d 61 69 6c 2e 63 6f 6d } //03 00 
		$a_00_21 = {68 6f 6f 6b 69 6e 67 } //02 00 
		$a_00_22 = {54 48 6f 6f 6b 41 50 49 } //02 00 
		$a_00_23 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //02 00 
		$a_00_24 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //02 00 
		$a_00_25 = {00 68 6f 6f 6b 2e 64 6c 6c } //02 00 
		$a_00_26 = {4a 6d 70 48 6f 6f 6b 4f 6e } //02 00 
		$a_00_27 = {7e 68 6f 6f 6b } //05 00 
		$a_02_28 = {53 6f 66 74 77 61 72 65 5c 90 02 03 5c 51 51 42 65 74 61 33 20 48 6f 6f 6b 65 72 90 00 } //0a 00 
		$a_00_29 = {39 31 42 31 45 38 34 36 2d 32 42 45 46 2d 34 33 34 35 2d 38 38 34 38 2d 37 36 39 39 43 37 43 39 39 33 35 46 } //02 00 
		$a_00_30 = {51 51 32 30 30 35 5f 48 6f 6f 6b 65 72 5f 48 65 61 64 } //02 00 
		$a_00_31 = {51 71 48 65 6c 70 65 72 44 6c 6c 2e 44 6c 6c } //0a 00 
		$a_00_32 = {51 51 4e 75 6d 62 65 72 3d } //05 00 
		$a_00_33 = {00 71 71 2e 45 78 65 } //0a 00 
		$a_00_34 = {26 51 51 50 61 73 73 57 6f 72 64 3d } //0a 00 
		$a_00_35 = {51 51 4e 75 6d 62 65 72 2e 69 6e 69 } //0a 00 
		$a_00_36 = {26 51 51 63 6c 75 62 3d } //0a 00 
		$a_00_37 = {26 51 51 69 70 3d } //05 00 
		$a_00_38 = {51 51 4c 69 73 74 } //02 00 
		$a_00_39 = {68 74 74 70 3a 2f 2f 6a 75 6d 70 2e 71 71 2e 63 6f 6d 2f 63 6c 69 65 6e 74 75 72 6c 5f } //02 00 
		$a_00_40 = {6d 61 69 6c 74 6f 3a } //03 00 
		$a_00_41 = {3f 73 75 62 6a 65 63 74 3d } //02 00 
		$a_00_42 = {26 62 6f 64 79 3d } //03 00 
		$a_00_43 = {68 65 6c 6f 90 02 38 61 75 74 68 20 6c 6f 67 69 6e 0d 0a 00 00 00 00 ff ff ff ff 0c 00 00 00 6d 61 69 6c 20 66 72 6f 6d 3a 20 3c 00 00 00 00 ff ff ff ff 01 00 00 00 3e 00 00 00 ff ff ff ff 0a 00 00 00 72 63 70 74 20 74 6f 3a 20 3c 90 00 } //01 00 
		$a_00_44 = {48 45 4c 4f 20 } //01 00 
		$a_00_45 = {41 55 54 48 20 4c 4f 47 49 4e } //01 00 
		$a_00_46 = {4d 41 49 4c 20 46 52 4f 4d 3a 20 3c } //01 00 
		$a_00_47 = {52 43 50 54 20 54 4f 3a 20 3c } //01 00 
		$a_00_48 = {46 72 6f 6d 3a 20 3c } //01 00 
		$a_00_49 = {54 6f 3a 20 3c } //01 00 
		$a_00_50 = {53 75 62 6a 65 63 74 3a 20 } //01 00 
		$a_00_51 = {48 54 54 50 2f 31 2e 30 } //01 00 
		$a_00_52 = {43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //05 00 
		$a_00_53 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //00 00 
	condition:
		any of ($a_*)
 
}