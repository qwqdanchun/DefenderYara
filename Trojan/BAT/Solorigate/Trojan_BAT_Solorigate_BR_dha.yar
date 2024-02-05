
rule Trojan_BAT_Solorigate_BR_dha{
	meta:
		description = "Trojan:BAT/Solorigate.BR!dha,SIGNATURE_TYPE_PEHSTR_EXT,28 00 28 00 42 00 00 0a 00 "
		
	strings :
		$a_03_0 = {43 00 30 00 37 00 4e 00 53 00 55 00 30 00 75 00 55 00 64 00 42 00 90 01 01 00 63 00 43 00 76 00 4b 00 7a 00 31 00 55 00 49 00 7a 00 38 00 77 00 7a 00 4e 00 6f 00 72 00 33 00 53 00 79 00 30 00 70 00 7a 00 79 00 2f 00 4b 00 64 00 6b 00 78 00 4a 00 4c 00 43 00 68 00 4a 00 4c 00 58 00 4c 00 4f 00 7a 00 30 00 76 00 4c 00 54 00 43 00 38 00 74 00 53 00 69 00 7a 00 4a 00 7a 00 4d 00 39 00 54 00 4b 00 4d 00 39 00 49 00 4c 00 55 00 70 00 56 00 38 00 41 00 78 00 77 00 7a 00 55 00 74 00 4d 00 79 00 6b 00 6c 00 4e 00 73 00 53 00 30 00 70 00 4b 00 6b 00 30 00 46 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_1 = {63 00 30 00 6b 00 74 00 54 00 69 00 37 00 4b 00 4c 00 43 00 6a 00 90 01 01 00 7a 00 4d 00 38 00 44 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_2 = {38 00 33 00 56 00 30 00 64 00 6b 00 78 00 4a 00 4b 00 55 00 6f 00 90 01 01 00 4c 00 67 00 59 00 41 00 00 90 00 } //0a 00 
		$a_03_3 = {63 00 2f 00 46 00 77 00 44 00 6e 00 44 00 4e 00 53 00 30 00 7a 00 90 01 01 00 53 00 55 00 30 00 42 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_4 = {63 00 2f 00 46 00 77 00 44 00 67 00 68 00 4f 00 4c 00 53 00 70 00 90 01 01 00 4c 00 51 00 49 00 41 00 00 90 00 } //0a 00 
		$a_03_5 = {63 00 2f 00 45 00 4c 00 39 00 73 00 67 00 76 00 4c 00 76 00 46 00 4c 00 90 01 01 00 45 00 30 00 46 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_6 = {63 00 2f 00 45 00 4c 00 64 00 73 00 6e 00 50 00 54 00 63 00 7a 00 4d 00 43 00 90 01 01 00 35 00 4e 00 53 00 38 00 75 00 73 00 43 00 45 00 35 00 4e 00 4c 00 45 00 72 00 4f 00 38 00 43 00 39 00 4b 00 53 00 53 00 30 00 43 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_7 = {63 00 2f 00 45 00 4c 00 44 00 6b 00 34 00 74 00 4b 00 6b 00 73 00 74 00 43 00 6b 00 90 01 01 00 4e 00 4c 00 45 00 72 00 4f 00 38 00 43 00 39 00 4b 00 53 00 53 00 30 00 43 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_8 = {38 00 77 00 78 00 77 00 54 00 45 00 6b 00 70 00 53 00 90 01 01 00 30 00 75 00 42 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_9 = {38 00 77 00 77 00 49 00 4c 00 6b 00 33 00 4b 00 53 00 90 01 01 00 30 00 42 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_10 = {63 00 30 00 6c 00 4e 00 53 00 79 00 7a 00 4e 00 4b 00 66 00 45 00 4d 00 90 01 01 00 45 00 38 00 73 00 53 00 53 00 31 00 50 00 72 00 41 00 51 00 41 00 00 90 00 } //0a 00 
		$a_03_11 = {43 00 30 00 37 00 4e 00 53 00 55 00 30 00 75 00 55 00 64 00 42 00 90 01 01 00 63 00 43 00 76 00 4b 00 7a 00 31 00 55 00 49 00 7a 00 38 00 77 00 7a 00 4e 00 6f 00 72 00 33 00 4c 00 30 00 67 00 74 00 53 00 69 00 7a 00 4a 00 7a 00 45 00 73 00 50 00 72 00 69 00 77 00 75 00 53 00 63 00 30 00 46 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_12 = {63 00 30 00 34 00 73 00 4b 00 4d 00 6e 00 90 01 01 00 7a 00 77 00 4d 00 41 00 00 90 00 } //0a 00 
		$a_03_13 = {38 00 77 00 39 00 32 00 4c 00 45 00 72 00 4f 00 79 00 43 00 90 01 01 00 4a 00 54 00 53 00 34 00 70 00 4c 00 55 00 6f 00 46 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_14 = {38 00 38 00 77 00 72 00 4c 00 6b 00 6e 00 4d 00 79 00 58 00 90 01 01 00 4a 00 4c 00 45 00 6b 00 46 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_15 = {38 00 79 00 39 00 4b 00 54 00 38 00 7a 00 4c 00 72 00 45 00 90 01 01 00 73 00 79 00 63 00 7a 00 50 00 41 00 77 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_16 = {43 00 30 00 70 00 4e 00 7a 00 79 00 77 00 75 00 53 00 53 00 90 01 01 00 4b 00 54 00 51 00 6b 00 74 00 54 00 69 00 30 00 43 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_17 = {43 00 30 00 73 00 74 00 4b 00 73 00 90 01 01 00 4d 00 7a 00 77 00 4d 00 41 00 00 90 00 } //0a 00 
		$a_03_18 = {69 00 33 00 61 00 4e 00 56 00 61 00 67 00 32 00 71 00 46 00 57 00 6f 00 90 01 01 00 67 00 52 00 69 00 6f 00 31 00 6f 00 41 00 00 90 00 } //0a 00 
		$a_03_19 = {38 00 2f 00 42 00 32 00 6a 00 59 00 7a 00 33 00 38 00 58 00 64 00 32 00 90 01 01 00 49 00 6e 00 33 00 64 00 58 00 54 00 32 00 38 00 50 00 52 00 7a 00 6a 00 51 00 6e 00 32 00 64 00 77 00 73 00 4a 00 64 00 77 00 78 00 79 00 6a 00 66 00 48 00 4e 00 54 00 43 00 37 00 4b 00 4c 00 38 00 35 00 50 00 4b 00 34 00 6c 00 78 00 4c 00 71 00 6f 00 73 00 4b 00 4d 00 6c 00 50 00 4c 00 30 00 6f 00 73 00 79 00 4b 00 67 00 45 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_20 = {38 00 30 00 31 00 4d 00 7a 00 73 00 6a 00 4d 00 53 00 33 00 90 01 01 00 76 00 7a 00 55 00 77 00 42 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_21 = {4d 00 7a 00 54 00 51 00 90 01 01 00 30 00 4d 00 41 00 00 90 00 } //0a 00 
		$a_03_22 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4d 00 90 01 01 00 51 00 51 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_23 = {4d 00 7a 00 51 00 33 00 30 00 6a 00 4d 00 30 00 90 01 01 00 7a 00 50 00 51 00 4d 00 77 00 41 00 41 00 00 90 00 } //0a 00 
		$a_03_24 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4d 00 79 00 90 01 01 00 64 00 41 00 44 00 51 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_25 = {4d 00 37 00 51 00 30 00 30 00 6a 00 4d 00 30 00 90 01 01 00 39 00 41 00 7a 00 30 00 44 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_26 = {4d 00 7a 00 49 00 31 00 31 00 54 00 90 01 01 00 43 00 59 00 67 00 4d 00 39 00 41 00 77 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_27 = {4d 00 7a 00 49 00 79 00 30 00 54 00 90 01 01 00 41 00 51 00 51 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_28 = {4d 00 7a 00 49 00 78 00 30 00 41 00 4e 00 90 01 01 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_29 = {53 00 30 00 73 00 32 00 4d 00 4c 00 43 00 90 01 01 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_30 = {53 00 30 00 73 00 31 00 4d 00 4c 00 43 00 90 01 01 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_31 = {53 00 30 00 74 00 4e 00 4e 00 72 00 43 00 90 01 01 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_32 = {53 00 30 00 74 00 4c 00 4e 00 72 00 43 00 90 01 01 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_33 = {53 00 30 00 73 00 7a 00 4d 00 4c 00 90 01 01 00 79 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_34 = {4d 00 7a 00 48 00 55 00 73 00 7a 00 44 00 90 01 01 00 4d 00 7a 00 53 00 31 00 31 00 44 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_35 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4f 00 90 01 01 00 59 00 67 00 4d 00 41 00 00 90 00 } //0a 00 
		$a_03_36 = {4d 00 7a 00 66 00 52 00 4d 00 7a 00 51 00 90 01 01 00 30 00 54 00 4d 00 79 00 30 00 54 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_37 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4d 00 43 00 59 00 90 01 01 00 4d 00 4c 00 50 00 51 00 4d 00 41 00 00 90 00 } //0a 00 
		$a_03_38 = {4d 00 7a 00 51 00 31 00 30 00 54 00 4d 00 30 00 90 01 01 00 4e 00 41 00 7a 00 4e 00 44 00 48 00 51 00 4d 00 77 00 41 00 41 00 00 90 00 } //0a 00 
		$a_03_39 = {4d 00 7a 00 49 00 30 00 31 00 7a 00 4d 00 30 00 90 01 01 00 39 00 59 00 7a 00 31 00 7a 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_40 = {4d 00 7a 00 4c 00 51 00 4d 00 7a 00 51 00 90 01 01 00 30 00 41 00 4e 00 43 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_41 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4d 00 79 00 4e 00 90 01 01 00 45 00 7a 00 30 00 44 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_42 = {73 00 7a 00 54 00 54 00 4d 00 7a 00 62 00 55 00 90 01 01 00 7a 00 51 00 33 00 30 00 6a 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_43 = {4d 00 7a 00 51 00 32 00 31 00 44 00 4d 00 79 00 73 00 74 00 90 01 01 00 7a 00 4e 00 4e 00 49 00 7a 00 41 00 41 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_44 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4d 00 43 00 59 00 79 00 90 01 01 00 39 00 41 00 77 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_45 = {4d 00 7a 00 51 00 78 00 30 00 62 00 4d 00 77 00 30 00 90 01 01 00 4d 00 79 00 4d 00 74 00 4d 00 7a 00 41 00 41 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_46 = {73 00 39 00 41 00 7a 00 74 00 4e 00 41 00 7a 00 4e 00 90 01 01 00 48 00 52 00 4d 00 77 00 41 00 41 00 00 90 00 } //0a 00 
		$a_03_47 = {4d 00 7a 00 49 00 31 00 31 00 54 00 4d 00 43 00 90 01 01 00 78 00 4d 00 39 00 41 00 77 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_48 = {4d 00 37 00 54 00 51 00 4d 00 7a 00 51 00 32 00 30 00 41 00 90 01 01 00 43 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_49 = {4d 00 7a 00 66 00 55 00 4d 00 7a 00 51 00 31 00 90 01 01 00 6a 00 4d 00 31 00 31 00 6a 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_50 = {73 00 37 00 54 00 55 00 4d 00 37 00 66 00 55 00 4d 00 90 01 01 00 41 00 7a 00 41 00 41 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_51 = {73 00 7a 00 44 00 58 00 4d 00 7a 00 4b 00 32 00 30 00 4c 00 4d 00 90 01 01 00 30 00 44 00 4d 00 41 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_52 = {4d 00 37 00 53 00 30 00 31 00 44 00 4d 00 79 00 4d 00 90 01 01 00 51 00 7a 00 4e 00 44 00 54 00 58 00 4d 00 77 00 41 00 41 00 00 90 00 } //0a 00 
		$a_03_53 = {4d 00 37 00 51 00 77 00 30 00 54 00 4d 00 33 00 30 00 90 01 01 00 50 00 51 00 4d 00 77 00 41 00 41 00 00 90 00 } //0a 00 
		$a_03_54 = {30 00 37 00 44 00 50 00 31 00 4e 00 53 00 49 00 6a 00 90 01 01 00 76 00 55 00 72 00 59 00 71 00 74 00 69 00 64 00 50 00 55 00 4b 00 45 00 6b 00 74 00 4c 00 6f 00 48 00 7a 00 56 00 54 00 51 00 42 00 00 90 00 } //0a 00 
		$a_03_55 = {30 00 37 00 44 00 50 00 31 00 4e 00 51 00 6f 00 7a 00 73 00 39 00 90 01 01 00 4c 00 43 00 72 00 50 00 7a 00 45 00 73 00 70 00 31 00 67 00 51 00 41 00 00 90 00 } //0a 00 
		$a_03_56 = {43 00 30 00 6f 00 74 00 79 00 43 00 38 00 71 00 43 00 55 00 38 00 90 01 01 00 53 00 63 00 35 00 49 00 4c 00 51 00 70 00 4b 00 4c 00 53 00 6d 00 71 00 42 00 41 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_57 = {43 00 30 00 6f 00 74 00 79 00 43 00 38 00 71 00 43 00 55 00 38 00 73 00 53 00 90 01 01 00 35 00 49 00 4c 00 51 00 72 00 49 00 4c 00 79 00 34 00 70 00 79 00 4d 00 39 00 4c 00 42 00 51 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_58 = {53 00 79 00 7a 00 49 00 31 00 43 00 76 00 4f 00 7a 00 30 00 6b 00 90 01 01 00 4b 00 73 00 2f 00 4d 00 53 00 79 00 6e 00 57 00 53 00 38 00 37 00 50 00 42 00 51 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_59 = {53 00 79 00 77 00 72 00 4c 00 73 00 74 00 4e 00 7a 00 73 00 6b 00 90 01 01 00 54 00 64 00 46 00 4c 00 7a 00 73 00 38 00 46 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_60 = {53 00 79 00 77 00 6f 00 4b 00 4b 00 37 00 4d 00 53 00 39 00 90 01 01 00 4e 00 4c 00 4d 00 67 00 45 00 41 00 41 00 3d 00 3d 00 00 90 00 } //0a 00 
		$a_03_61 = {53 00 79 00 33 00 56 00 4c 00 55 00 38 00 90 01 01 00 4c 00 74 00 45 00 31 00 42 00 41 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_62 = {4b 00 79 00 33 00 57 00 4c 00 55 00 38 00 90 01 01 00 4c 00 74 00 45 00 31 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_63 = {4b 00 79 00 33 00 57 00 54 00 55 00 30 00 73 00 4c 00 90 01 01 00 45 00 31 00 42 00 41 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_64 = {4b 00 79 00 33 00 57 00 54 00 55 00 30 00 73 00 4c 00 90 01 01 00 45 00 31 00 41 00 67 00 41 00 3d 00 00 90 00 } //0a 00 
		$a_03_65 = {4d 00 37 00 55 00 77 00 54 00 6b 00 6d 00 30 00 4e 00 44 00 90 01 01 00 56 00 4e 00 54 00 4e 00 4b 00 54 00 4e 00 4d 00 31 00 4e 00 45 00 69 00 31 00 30 00 44 00 57 00 78 00 4e 00 44 00 90 01 01 00 53 00 54 00 62 00 52 00 49 00 4d 00 7a 00 49 00 77 00 54 00 54 00 59 00 33 00 53 00 6a 00 4a 00 4b 00 42 00 51 00 41 00 3d 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}