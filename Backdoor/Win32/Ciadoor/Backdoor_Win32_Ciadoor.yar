
rule Backdoor_Win32_Ciadoor{
	meta:
		description = "Backdoor:Win32/Ciadoor,SIGNATURE_TYPE_PEHSTR_EXT,28 00 23 00 2e 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 00 45 00 46 00 4c 00 4e 00 } //01 00 
		$a_01_1 = {25 00 45 00 53 00 56 00 41 00 } //01 00 
		$a_01_2 = {25 00 42 00 46 00 4c 00 4e 00 } //01 00 
		$a_01_3 = {25 00 4c 00 73 00 56 00 41 00 } //01 00 
		$a_01_4 = {25 00 42 00 46 00 4c 00 43 00 } //01 00 
		$a_01_5 = {25 00 42 00 45 00 58 00 45 00 } //01 00 
		$a_01_6 = {25 00 45 00 45 00 58 00 45 00 } //01 00 
		$a_01_7 = {25 00 45 00 4d 00 4c 00 54 00 } //01 00 
		$a_01_8 = {25 00 42 00 42 00 4f 00 44 00 } //01 00 
		$a_01_9 = {25 00 42 00 4d 00 4c 00 54 00 } //01 00 
		$a_01_10 = {25 00 45 00 42 00 4f 00 44 00 } //01 00 
		$a_01_11 = {25 00 42 00 42 00 45 00 47 00 } //01 00 
		$a_01_12 = {25 00 45 00 45 00 4e 00 44 00 } //01 00 
		$a_01_13 = {25 00 42 00 4d 00 53 00 54 00 } //01 00 
		$a_01_14 = {25 00 45 00 57 00 4c 00 73 00 } //01 00 
		$a_01_15 = {25 00 45 00 4d 00 53 00 54 00 } //01 00 
		$a_01_16 = {25 00 42 00 57 00 4c 00 73 00 } //01 00 
		$a_01_17 = {25 00 42 00 54 00 49 00 54 00 } //01 00 
		$a_01_18 = {25 00 45 00 54 00 49 00 54 00 } //01 00 
		$a_01_19 = {25 00 45 00 46 00 4c 00 53 00 } //01 00 
		$a_01_20 = {25 00 42 00 46 00 4c 00 53 00 } //01 00 
		$a_01_21 = {25 00 45 00 49 00 4e 00 4a 00 } //01 00 
		$a_01_22 = {25 00 45 00 46 00 4c 00 43 00 } //01 00 
		$a_01_23 = {25 00 42 00 44 00 4c 00 4c 00 } //01 00 
		$a_01_24 = {25 00 42 00 49 00 4e 00 4a 00 } //01 00 
		$a_01_25 = {25 00 45 00 44 00 4c 00 4c 00 } //01 00 
		$a_01_26 = {25 00 45 00 53 00 54 00 46 00 } //01 00 
		$a_01_27 = {25 00 4c 00 73 00 54 00 46 00 } //01 00 
		$a_01_28 = {25 00 45 00 42 00 46 00 53 00 } //01 00 
		$a_01_29 = {25 00 42 00 42 00 46 00 53 00 } //01 00 
		$a_01_30 = {68 00 78 00 6e 00 50 00 40 00 67 00 6c 00 62 00 7e 00 61 00 7c 00 72 00 61 00 4a 00 40 00 71 00 77 00 7e 00 74 00 6b 00 6e 00 42 00 5c 00 55 00 53 00 50 00 46 00 4a 00 51 00 70 00 42 00 5a 00 5a 00 43 00 44 00 42 00 71 00 6b 00 57 00 40 00 5d 00 5d 00 41 00 51 00 47 00 6a 00 75 00 4a 00 56 00 4d 00 48 00 59 00 4f 00 } //01 00 
		$a_01_31 = {49 00 66 00 20 00 45 00 78 00 69 00 73 00 74 00 20 00 } //01 00 
		$a_01_32 = {20 00 47 00 6f 00 74 00 6f 00 20 00 42 00 65 00 67 00 69 00 6e 00 } //01 00 
		$a_01_33 = {40 00 45 00 63 00 68 00 6f 00 20 00 6f 00 66 00 66 00 } //01 00 
		$a_01_34 = {3a 00 42 00 65 00 67 00 69 00 6e 00 } //05 00 
		$a_01_35 = {6e 00 6b 00 6f 00 70 00 70 00 6c 00 32 00 32 00 33 00 61 00 } //02 00 
		$a_01_36 = {2f 00 2f 00 55 00 4e 00 42 00 49 00 4e 00 44 00 2f 00 2f 00 } //01 00 
		$a_01_37 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_38 = {44 65 63 6c 43 69 6e } //01 00 
		$a_01_39 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 46 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_01_40 = {5c 00 69 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 } //01 00 
		$a_01_41 = {54 00 68 00 75 00 6e 00 64 00 65 00 72 00 52 00 54 00 36 00 46 00 6f 00 72 00 6d 00 44 00 43 00 } //03 00 
		$a_01_42 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 61 00 69 00 5c 00 6c 00 2e 00 76 00 62 00 70 00 } //03 00 
		$a_01_43 = {2a 00 5c 00 41 00 43 00 3a 00 5c 00 75 00 69 00 5c 00 6c 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_44 = {5c 00 64 00 65 00 6c 00 33 00 32 00 2e 00 62 00 61 00 74 00 } //05 00 
		$a_01_45 = {20 00 4f 00 62 00 6a 00 65 00 63 00 74 00 73 00 5c 00 7b 00 45 00 31 00 34 00 44 00 43 00 45 00 36 00 37 00 2d 00 38 00 46 00 42 00 37 00 2d 00 34 00 37 00 32 00 31 00 2d 00 38 00 31 00 34 00 39 00 2d 00 31 00 37 00 39 00 42 00 41 00 41 00 34 00 44 00 37 00 39 00 32 00 43 00 7d 00 } //00 00 
	condition:
		any of ($a_*)
 
}