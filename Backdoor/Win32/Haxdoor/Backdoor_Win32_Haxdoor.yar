
rule Backdoor_Win32_Haxdoor{
	meta:
		description = "Backdoor:Win32/Haxdoor,SIGNATURE_TYPE_PEHSTR_EXT,11 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_02_0 = {8b 50 3c 66 81 3c 02 50 45 75 05 a3 90 01 03 00 68 90 01 03 00 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 92 8b 04 24 68 40 01 00 00 0f 31 90 00 } //01 00 
		$a_00_1 = {76 00 62 00 61 00 67 00 7a 00 2e 00 73 00 79 00 73 00 } //01 00 
		$a_00_2 = {67 00 7a 00 69 00 70 00 6d 00 6f 00 64 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_00_3 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 76 00 62 00 61 00 67 00 7a 00 } //01 00 
		$a_00_4 = {6d 70 72 65 78 65 2e 65 78 65 } //01 00 
		$a_00_5 = {74 72 65 6d 69 72 2e 62 69 6e } //01 00 
		$a_00_6 = {5c 64 72 69 76 65 72 73 4c 4f 44 45 } //01 00 
		$a_00_7 = {4e 64 69 73 52 65 67 69 73 74 65 72 50 72 6f 74 6f 63 6f 6c } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Haxdoor_2{
	meta:
		description = "Backdoor:Win32/Haxdoor,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0c 00 0d 00 00 04 00 "
		
	strings :
		$a_00_0 = {0f 20 c3 53 a6 81 e3 ff ff fe ff } //04 00 
		$a_00_1 = {0f 20 c3 53 81 e3 ff ff fe ff 0f 22 } //04 00 
		$a_00_2 = {0f 20 c1 51 81 e1 ff ff fe ff 0f 22 c1 } //03 00 
		$a_00_3 = {0f 20 c0 50 25 ff ff fe ff 0f 22 c0 } //04 00 
		$a_02_4 = {1c 89 47 18 8b 77 60 80 3e 0e 0f 85 90 01 02 00 00 8b 46 0c 3d 90 00 } //04 00 
		$a_00_5 = {0b c0 74 10 8b 08 0b c9 74 0a 80 39 b8 75 05 8b 41 } //04 00 
		$a_00_6 = {0b c0 74 0f 8b 08 0b c9 74 09 80 39 b8 75 04 8b 41 } //03 00 
		$a_00_7 = {81 3e 73 76 63 68 75 09 81 7e 04 6f 73 74 2e 74 22 } //02 00 
		$a_00_8 = {ff 74 24 04 c7 44 24 0c ff 0f 1f 00 ff 74 24 28 ff 74 24 28 ff 74 24 28 } //02 00 
		$a_00_9 = {64 a1 18 00 00 00 8b 40 20 } //02 00 
		$a_00_10 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //02 00 
		$a_00_11 = {03 40 01 83 c0 05 8b 40 02 } //01 00 
		$a_00_12 = {50 73 4c 6f 6f 6b 75 70 50 72 6f 63 65 73 73 42 79 50 72 6f 63 65 73 73 49 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Haxdoor_3{
	meta:
		description = "Backdoor:Win32/Haxdoor,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0c 00 2b 00 00 06 00 "
		
	strings :
		$a_02_0 = {00 00 68 00 30 40 00 50 e8 90 01 02 00 00 59 51 80 3d 90 01 03 00 00 74 10 68 90 00 } //05 00 
		$a_02_1 = {66 81 7c 08 fe 21 21 0f 84 90 01 02 ff ff ff 90 00 } //05 00 
		$a_02_2 = {be 32 30 40 00 8b fe ac c0 c0 90 01 01 aa ac 90 02 01 c0 90 02 02 e2 90 00 } //04 00 
		$a_00_3 = {66 81 7c 08 fe 21 21 74 } //03 00 
		$a_00_4 = {be 00 30 40 00 8b fe ac } //03 00 
		$a_00_5 = {74 07 ba 36 36 36 00 ff e0 } //02 00 
		$a_00_6 = {40 00 ba 36 36 36 00 ff d0 61 } //02 00 
		$a_00_7 = {50 ba 4d 5a 4d 5a 52 8b d4 6a 02 52 53 e8 } //01 00 
		$a_00_8 = {5b 25 75 25 75 5d } //01 00 
		$a_01_9 = {70 32 2e 69 6e 69 } //01 00 
		$a_01_10 = {63 7a 2e 64 6c 6c } //01 00 
		$a_01_11 = {68 7a 2e 64 6c 6c } //01 00 
		$a_01_12 = {6d 70 72 65 78 65 2e 65 78 65 } //01 00 
		$a_01_13 = {4d 61 78 57 61 69 74 } //01 00 
		$a_01_14 = {5c 4d 50 52 53 65 72 76 69 63 65 73 5c 54 65 73 74 53 65 72 76 69 63 65 } //04 00 
		$a_02_15 = {81 3e 52 65 66 65 75 90 01 01 81 7e 04 72 65 72 3a 75 90 00 } //04 00 
		$a_02_16 = {81 3f 65 2d 67 6f 0f 85 90 01 02 00 00 81 7f 07 42 61 6c 61 90 00 } //04 00 
		$a_02_17 = {50 ba 4d 5a 00 00 52 8b cc 6a 04 51 50 e8 90 01 04 59 59 51 68 90 01 02 00 00 68 04 30 40 90 00 } //03 00 
		$a_00_18 = {ba 36 36 36 00 ff 65 08 } //03 00 
		$a_00_19 = {5a 81 fa 36 36 36 00 75 07 } //03 00 
		$a_00_20 = {81 3f 76 61 6c 75 } //03 00 
		$a_00_21 = {81 7f 09 76 61 6c 75 } //02 00 
		$a_00_22 = {55 8b ec e8 00 00 00 00 58 2d } //02 00 
		$a_01_23 = {00 4d 65 4d 65 73 73 61 67 65 72 00 } //02 00 
		$a_00_24 = {57 4e 65 74 45 6e 75 6d 43 61 63 68 65 64 50 61 73 73 77 6f 72 64 73 } //02 00 
		$a_00_25 = {57 65 62 4d 6f 6e 65 79 20 44 65 74 65 63 74 65 64 21 } //02 00 
		$a_01_26 = {53 75 62 6a 65 63 74 3a 20 2a 25 73 2a 27 0d 0a 00 } //02 00 
		$a_00_27 = {53 6f 66 74 77 61 72 65 5c 57 65 62 4d 6f 6e 65 79 } //01 00 
		$a_01_28 = {41 2d 33 31 31 } //01 00 
		$a_00_29 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 73 3a 2f 2f 77 77 77 2e 65 2d 67 6f 6c 64 2e 63 6f 6d 2f } //01 00 
		$a_00_30 = {2f 61 63 63 74 2f 61 63 63 6f 75 6e 74 69 6e 66 6f 2e 61 73 70 } //01 00 
		$a_01_31 = {00 42 42 4d 54 72 61 70 } //01 00 
		$a_00_32 = {61 70 70 6c 69 63 61 74 69 6f 6e 2f 6f 63 74 65 74 2d 73 74 72 65 61 6d } //01 00 
		$a_00_33 = {76 64 6d 74 31 36 } //01 00 
		$a_01_34 = {50 53 74 6f 72 65 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_35 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_36 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00 
		$a_01_37 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00 
		$a_00_38 = {2e 73 79 73 00 53 79 73 74 65 6d 5c 43 } //04 00 
		$a_00_39 = {3d 4b 69 6c 6c 75 3c 6a 00 6a 04 8d 85 } //04 00 
		$a_00_40 = {3d 73 6c 6b 67 75 16 6a 00 6a 01 68 } //04 00 
		$a_00_41 = {3d 67 63 66 67 75 19 6a 00 68 1c 01 } //04 00 
		$a_00_42 = {3d 50 72 69 6f 75 4d 6a 00 6a 04 8d 85 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Backdoor_Win32_Haxdoor_4{
	meta:
		description = "Backdoor:Win32/Haxdoor,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0c 00 31 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 6b 79 78 31 36 2e 64 6c 6c } //02 00 
		$a_01_1 = {6b 69 72 64 61 6d 2e 64 6c 6c } //02 00 
		$a_01_2 = {47 45 54 20 2f 25 73 62 73 72 76 2e 70 68 70 3f 6c 61 6e 67 3d 25 73 26 70 61 6c 3d 25 75 26 62 61 79 3d 25 75 26 67 6f 6c 64 3d 25 75 26 69 64 3d 25 73 26 70 61 72 61 6d 3d 25 75 26 73 6f 63 6b 73 70 6f 72 74 3d 25 75 26 68 74 74 70 70 6f 72 74 3d 25 } //02 00 
		$a_01_3 = {47 45 54 20 2f 25 73 77 78 2e 70 68 70 3f 77 78 78 3d 25 73 26 75 69 64 3d 25 73 20 48 54 54 50 2f 31 2e 30 } //01 00 
		$a_01_4 = {57 4d 20 4b 65 65 70 65 72 20 44 65 74 65 63 74 65 64 } //02 00 
		$a_01_5 = {41 2d 33 31 31 20 44 65 61 74 68 20 77 65 6c 63 6f 6d 65 } //06 00 
		$a_02_6 = {00 00 68 00 30 40 00 50 e8 90 01 02 00 00 59 51 80 3d 90 01 03 00 00 74 10 68 90 00 } //05 00 
		$a_02_7 = {66 81 7c 08 fe 21 21 0f 84 90 01 02 ff ff ff 90 00 } //05 00 
		$a_02_8 = {be 32 30 40 00 8b fe ac c0 c0 90 01 01 aa ac 90 02 01 c0 90 02 02 e2 90 00 } //04 00 
		$a_00_9 = {66 81 7c 08 fe 21 21 74 } //03 00 
		$a_00_10 = {be 00 30 40 00 8b fe ac } //03 00 
		$a_00_11 = {74 07 ba 36 36 36 00 ff e0 } //02 00 
		$a_00_12 = {40 00 ba 36 36 36 00 ff d0 61 } //02 00 
		$a_00_13 = {50 ba 4d 5a 4d 5a 52 8b d4 6a 02 52 53 e8 } //01 00 
		$a_00_14 = {5b 25 75 25 75 5d } //01 00 
		$a_01_15 = {70 32 2e 69 6e 69 } //01 00 
		$a_01_16 = {63 7a 2e 64 6c 6c } //01 00 
		$a_01_17 = {68 7a 2e 64 6c 6c } //01 00 
		$a_01_18 = {6d 70 72 65 78 65 2e 65 78 65 } //01 00 
		$a_01_19 = {4d 61 78 57 61 69 74 } //01 00 
		$a_01_20 = {5c 4d 50 52 53 65 72 76 69 63 65 73 5c 54 65 73 74 53 65 72 76 69 63 65 } //04 00 
		$a_02_21 = {81 3e 52 65 66 65 75 90 01 01 81 7e 04 72 65 72 3a 75 90 00 } //04 00 
		$a_02_22 = {81 3f 65 2d 67 6f 0f 85 90 01 02 00 00 81 7f 07 42 61 6c 61 90 00 } //04 00 
		$a_02_23 = {50 ba 4d 5a 00 00 52 8b cc 6a 04 51 50 e8 90 01 04 59 59 51 68 90 01 02 00 00 68 04 30 40 90 00 } //03 00 
		$a_00_24 = {ba 36 36 36 00 ff 65 08 } //03 00 
		$a_00_25 = {5a 81 fa 36 36 36 00 75 07 } //03 00 
		$a_00_26 = {81 3f 76 61 6c 75 } //03 00 
		$a_00_27 = {81 7f 09 76 61 6c 75 } //02 00 
		$a_00_28 = {55 8b ec e8 00 00 00 00 58 2d } //02 00 
		$a_01_29 = {00 4d 65 4d 65 73 73 61 67 65 72 00 } //02 00 
		$a_00_30 = {57 4e 65 74 45 6e 75 6d 43 61 63 68 65 64 50 61 73 73 77 6f 72 64 73 } //02 00 
		$a_00_31 = {57 65 62 4d 6f 6e 65 79 20 44 65 74 65 63 74 65 64 21 } //02 00 
		$a_01_32 = {53 75 62 6a 65 63 74 3a 20 2a 25 73 2a 27 0d 0a 00 } //02 00 
		$a_00_33 = {53 6f 66 74 77 61 72 65 5c 57 65 62 4d 6f 6e 65 79 } //01 00 
		$a_01_34 = {41 2d 33 31 31 } //01 00 
		$a_00_35 = {52 65 66 65 72 65 72 3a 20 68 74 74 70 73 3a 2f 2f 77 77 77 2e 65 2d 67 6f 6c 64 2e 63 6f 6d 2f } //01 00 
		$a_00_36 = {2f 61 63 63 74 2f 61 63 63 6f 75 6e 74 69 6e 66 6f 2e 61 73 70 } //01 00 
		$a_01_37 = {00 42 42 4d 54 72 61 70 } //01 00 
		$a_00_38 = {61 70 70 6c 69 63 61 74 69 6f 6e 2f 6f 63 74 65 74 2d 73 74 72 65 61 6d } //01 00 
		$a_00_39 = {76 64 6d 74 31 36 } //01 00 
		$a_01_40 = {50 53 74 6f 72 65 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_41 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_42 = {4e 74 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00 
		$a_01_43 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00 
		$a_00_44 = {2e 73 79 73 00 53 79 73 74 65 6d 5c 43 } //04 00 
		$a_00_45 = {3d 4b 69 6c 6c 75 3c 6a 00 6a 04 8d 85 } //04 00 
		$a_00_46 = {3d 73 6c 6b 67 75 16 6a 00 6a 01 68 } //04 00 
		$a_00_47 = {3d 67 63 66 67 75 19 6a 00 68 1c 01 } //04 00 
		$a_00_48 = {3d 50 72 69 6f 75 4d 6a 00 6a 04 8d 85 } //00 00 
	condition:
		any of ($a_*)
 
}