
rule Trojan_BAT_RemLoader_MTB{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 79 72 75 73 2e 65 78 65 } //01 00 
		$a_01_1 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_2 = {44 65 62 75 67 67 65 72 4e 6f 6e 55 73 65 72 43 6f 64 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_3 = {50 72 6f 63 65 73 73 53 74 61 72 74 49 6e 66 6f } //01 00 
		$a_01_4 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_5 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_01_6 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 41 63 63 65 73 73 43 6f 6e 74 72 6f 6c } //01 00 
		$a_01_7 = {54 68 72 65 61 64 53 74 61 72 74 } //01 00 
		$a_01_8 = {43 72 65 61 74 65 41 70 69 } //01 00 
		$a_01_9 = {53 65 74 41 63 63 65 73 73 52 75 6c 65 50 72 6f 74 65 63 74 69 6f 6e } //01 00 
		$a_01_10 = {67 65 74 5f 55 73 65 72 4e 61 6d 65 } //01 00 
		$a_01_11 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_12 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00 
		$a_01_13 = {47 65 74 52 75 6e 74 69 6d 65 44 69 72 65 63 74 6f 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_2{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 18 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_1 = {4f 75 74 70 75 74 44 65 62 75 67 53 74 72 69 6e 67 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_3 = {52 65 73 6f 6c 76 65 45 76 65 6e 74 41 72 67 73 } //01 00 
		$a_01_4 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_5 = {4e 74 51 75 65 72 79 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //01 00 
		$a_01_6 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00 
		$a_01_7 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //01 00 
		$a_01_8 = {47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_9 = {57 6f 77 36 34 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_10 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_11 = {57 6f 77 36 34 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_12 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_13 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_14 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00 
		$a_01_15 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00 
		$a_01_16 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00 
		$a_01_17 = {41 70 70 44 6f 6d 61 69 6e } //01 00 
		$a_01_18 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_19 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_01_20 = {53 79 73 74 65 6d 2e 4e 65 74 } //01 00 
		$a_01_21 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00 
		$a_01_22 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00 
		$a_01_23 = {4b 69 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_3{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,18 00 18 00 18 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 79 73 74 65 6d 2e 49 4f } //01 00 
		$a_01_1 = {42 69 74 6d 61 70 44 61 74 61 } //01 00 
		$a_01_2 = {4f 76 65 72 72 69 64 65 4d 65 74 61 64 61 74 61 } //01 00 
		$a_01_3 = {67 65 74 5f 43 75 72 72 65 6e 74 54 68 72 65 61 64 } //01 00 
		$a_01_4 = {54 6f 74 61 6c 42 79 74 65 73 54 72 61 6e 73 66 65 72 72 65 64 } //01 00 
		$a_01_5 = {53 74 72 65 61 6d 42 79 74 65 73 54 72 61 6e 73 66 65 72 72 65 64 } //01 00 
		$a_01_6 = {47 65 74 50 72 6f 63 65 73 73 65 73 42 79 4e 61 6d 65 } //01 00 
		$a_01_7 = {47 65 74 43 6f 6d 6d 61 6e 64 4c 69 6e 65 41 72 67 73 } //01 00 
		$a_01_8 = {44 65 66 69 6e 65 50 49 6e 76 6f 6b 65 4d 65 74 68 6f 64 } //01 00 
		$a_01_9 = {47 65 74 52 61 6e 64 6f 6d 46 69 6c 65 4e 61 6d 65 } //01 00 
		$a_01_10 = {47 65 74 52 75 6e 74 69 6d 65 44 69 72 65 63 74 6f 72 79 } //01 00 
		$a_01_11 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_12 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_13 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //01 00 
		$a_01_14 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //01 00 
		$a_01_15 = {47 65 74 50 72 6f 63 65 73 73 65 73 } //01 00 
		$a_01_16 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00 
		$a_01_17 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00 
		$a_01_18 = {73 65 74 5f 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 45 72 72 6f 72 } //01 00 
		$a_01_19 = {73 65 74 5f 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 49 6e 70 75 74 } //01 00 
		$a_01_20 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_21 = {44 65 66 61 75 6c 74 53 74 79 6c 65 4b 65 79 50 72 6f 70 65 72 74 79 } //01 00 
		$a_01_22 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //01 00 
		$a_01_23 = {43 6f 6e 74 61 69 6e 73 4b 65 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_4{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,32 00 32 00 1c 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 52 4f 43 45 53 53 5f 53 45 54 5f 51 55 4f 54 41 } //01 00 
		$a_01_1 = {57 52 49 54 45 5f 44 41 43 } //01 00 
		$a_01_2 = {50 52 4f 43 45 53 53 5f 43 52 45 41 54 45 5f 54 48 52 45 41 44 } //01 00 
		$a_01_3 = {50 52 4f 43 45 53 53 5f 56 4d 5f 52 45 41 44 } //01 00 
		$a_01_4 = {53 54 41 4e 44 41 52 44 5f 52 49 47 48 54 53 5f 52 45 51 55 49 52 45 44 } //01 00 
		$a_01_5 = {50 52 4f 43 45 53 53 5f 44 55 50 5f 48 41 4e 44 4c 45 } //01 00 
		$a_01_6 = {50 52 4f 43 45 53 53 5f 53 55 53 50 45 4e 44 5f 52 45 53 55 4d 45 } //01 00 
		$a_01_7 = {50 52 4f 43 45 53 53 5f 54 45 52 4d 49 4e 41 54 45 } //01 00 
		$a_01_8 = {49 4d 50 45 52 53 4f 4e 41 54 45 } //01 00 
		$a_01_9 = {50 52 4f 43 45 53 53 5f 56 4d 5f 57 52 49 54 45 } //01 00 
		$a_01_10 = {53 59 4e 43 48 52 4f 4e 49 5a 45 } //01 00 
		$a_01_11 = {52 45 41 44 5f 43 4f 4e 54 52 4f 4c } //01 00 
		$a_01_12 = {50 72 6f 63 65 73 73 55 73 65 72 4d 6f 64 65 49 4f 50 4c } //01 00 
		$a_01_13 = {53 45 54 5f 54 48 52 45 41 44 5f 54 4f 4b 45 4e } //01 00 
		$a_01_14 = {50 52 4f 43 45 53 53 5f 51 55 45 52 59 5f 4c 49 4d 49 54 45 44 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00 
		$a_01_15 = {53 59 53 54 45 4d 5f 4b 45 52 4e 45 4c 5f 44 45 42 55 47 47 45 52 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00 
		$a_01_16 = {50 52 4f 43 45 53 53 5f 53 45 54 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00 
		$a_01_17 = {50 52 4f 43 45 53 53 5f 51 55 45 52 59 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e } //01 00 
		$a_01_18 = {44 49 52 45 43 54 5f 49 4d 50 45 52 53 4f 4e 41 54 49 4f 4e } //01 00 
		$a_01_19 = {50 52 4f 43 45 53 53 5f 56 4d 5f 4f 50 45 52 41 54 49 4f 4e } //01 00 
		$a_01_20 = {49 54 45 5f 4f 57 4e 45 52 } //01 00 
		$a_01_21 = {50 52 4f 43 45 53 53 49 4e 46 4f 43 4c 41 53 53 } //01 00 
		$a_01_22 = {53 59 53 54 45 4d 5f 49 4e 46 4f 52 4d 41 54 49 4f 4e 5f 43 4c 41 53 53 } //01 00 
		$a_01_23 = {50 52 4f 43 45 53 53 5f 41 4c 4c 5f 41 43 43 45 53 53 } //01 00 
		$a_01_24 = {50 52 4f 43 45 53 53 5f 43 52 45 41 54 45 5f 50 52 4f 43 45 53 53 } //01 00 
		$a_01_25 = {47 45 54 5f 43 4f 4e 54 45 58 54 } //01 00 
		$a_01_26 = {53 45 54 5f 43 4f 4e 54 45 58 54 } //1e 00 
		$a_01_27 = {49 00 4e 00 4a 00 45 00 43 00 54 00 5f 00 48 00 45 00 52 00 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_5{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 21 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_1 = {4f 75 74 70 75 74 44 65 62 75 67 53 74 72 69 6e 67 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_3 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00 
		$a_01_4 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_5 = {4e 74 51 75 65 72 79 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //01 00 
		$a_01_6 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //01 00 
		$a_01_7 = {47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_8 = {53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_9 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_10 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_11 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_12 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_01_13 = {52 65 67 69 73 74 72 79 4b 65 79 50 65 72 6d 69 73 73 69 6f 6e 43 68 65 63 6b } //01 00 
		$a_01_14 = {67 65 74 5f 50 72 6f 63 65 73 73 4e 61 6d 65 } //01 00 
		$a_01_15 = {67 65 74 5f 43 75 72 72 65 6e 74 54 68 72 65 61 64 } //01 00 
		$a_01_16 = {67 65 74 5f 49 73 41 74 74 61 63 68 65 64 } //01 00 
		$a_01_17 = {49 73 4c 6f 67 67 69 6e 67 } //01 00 
		$a_01_18 = {41 70 70 44 6f 6d 61 69 6e } //01 00 
		$a_01_19 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_20 = {47 65 74 50 72 6f 63 65 73 73 42 79 49 64 } //01 00 
		$a_01_21 = {43 72 65 61 74 65 53 75 62 4b 65 79 } //01 00 
		$a_01_22 = {53 65 74 56 61 6c 75 65 } //01 00 
		$a_01_23 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //01 00 
		$a_01_24 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //01 00 
		$a_01_25 = {73 65 74 5f 55 73 65 53 68 65 6c 6c 45 78 65 63 75 74 65 } //01 00 
		$a_01_26 = {73 65 74 5f 52 65 64 69 72 65 63 74 53 74 61 6e 64 61 72 64 4f 75 74 70 75 74 } //01 00 
		$a_01_27 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //01 00 
		$a_01_28 = {73 65 74 5f 53 74 61 72 74 49 6e 66 6f } //01 00 
		$a_01_29 = {67 65 74 5f 53 74 61 6e 64 61 72 64 4f 75 74 70 75 74 } //01 00 
		$a_01_30 = {52 65 61 64 4c 69 6e 65 } //01 00 
		$a_01_31 = {67 65 74 5f 45 6e 64 4f 66 53 74 72 65 61 6d } //01 00 
		$a_01_32 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_6{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 21 00 00 01 00 "
		
	strings :
		$a_01_0 = {3c 4d 6f 64 75 6c 65 3e } //01 00 
		$a_01_1 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_2 = {56 69 72 74 75 61 6c 50 72 6f 74 65 63 74 } //01 00 
		$a_01_3 = {43 68 65 63 6b 52 65 6d 6f 74 65 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00 
		$a_01_4 = {4e 74 51 75 65 72 79 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //01 00 
		$a_01_5 = {53 79 73 74 65 6d 2e 54 68 72 65 61 64 69 6e 67 } //01 00 
		$a_01_6 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //01 00 
		$a_01_7 = {57 6f 77 36 34 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_8 = {57 6f 77 36 34 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //01 00 
		$a_01_9 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_10 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00 
		$a_01_11 = {4e 74 55 6e 6d 61 70 56 69 65 77 4f 66 53 65 63 74 69 6f 6e } //01 00 
		$a_01_12 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00 
		$a_01_13 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00 
		$a_01_14 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00 
		$a_01_15 = {67 65 74 5f 50 72 6f 63 65 73 73 4e 61 6d 65 } //01 00 
		$a_01_16 = {50 61 72 61 6d 65 74 65 72 69 7a 65 64 54 68 72 65 61 64 53 74 61 72 74 } //01 00 
		$a_01_17 = {73 65 74 5f 49 73 42 61 63 6b 67 72 6f 75 6e 64 } //01 00 
		$a_01_18 = {49 73 4c 6f 67 67 69 6e 67 } //01 00 
		$a_01_19 = {47 65 74 43 75 72 72 65 6e 74 50 72 6f 63 65 73 73 } //01 00 
		$a_01_20 = {67 65 74 5f 53 69 7a 65 } //01 00 
		$a_01_21 = {67 65 74 5f 49 73 41 74 74 61 63 68 65 64 } //01 00 
		$a_01_22 = {67 65 74 5f 43 75 72 72 65 6e 74 54 68 72 65 61 64 } //01 00 
		$a_01_23 = {67 65 74 5f 49 73 41 6c 69 76 65 } //01 00 
		$a_01_24 = {41 70 70 44 6f 6d 61 69 6e } //01 00 
		$a_01_25 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_26 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_27 = {50 72 6f 63 65 73 73 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_28 = {57 65 62 43 6c 69 65 6e 74 } //01 00 
		$a_01_29 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00 
		$a_01_30 = {67 65 74 5f 45 6e 74 72 79 50 6f 69 6e 74 } //01 00 
		$a_01_31 = {47 65 74 52 75 6e 74 69 6d 65 44 69 72 65 63 74 6f 72 79 } //01 00 
		$a_01_32 = {4b 65 79 4e 6f 74 46 6f 75 6e 64 45 78 63 65 70 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_7{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa5 00 ffffffa5 00 18 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 31 00 30 00 30 00 30 00 39 00 2d 00 31 00 31 00 31 00 31 00 32 00 7d 00 } //01 00 
		$a_01_1 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //01 00 
		$a_01_2 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //01 00 
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //01 00 
		$a_01_4 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //01 00 
		$a_01_5 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //01 00 
		$a_01_6 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //01 00 
		$a_01_7 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //0a 00 
		$a_01_8 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //0a 00 
		$a_01_9 = {41 70 70 44 6f 6d 61 69 6e } //0a 00 
		$a_01_10 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //0a 00 
		$a_01_11 = {41 63 74 69 76 61 74 6f 72 } //0a 00 
		$a_01_12 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //0a 00 
		$a_01_13 = {43 72 65 61 74 65 45 6e 63 72 79 70 74 6f 72 } //0a 00 
		$a_01_14 = {50 72 6f 63 65 73 73 } //0a 00 
		$a_01_15 = {47 65 74 50 72 6f 63 41 64 64 72 65 73 73 } //0a 00 
		$a_01_16 = {57 6f 77 36 34 47 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //0a 00 
		$a_01_17 = {57 6f 77 36 34 53 65 74 54 68 72 65 61 64 43 6f 6e 74 65 78 74 } //0a 00 
		$a_01_18 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //0a 00 
		$a_01_19 = {73 65 74 5f 4b 65 79 } //0a 00 
		$a_01_20 = {53 79 73 74 65 6d 2e 53 65 63 75 72 69 74 79 2e 43 72 79 70 74 6f 67 72 61 70 68 79 } //0a 00 
		$a_01_21 = {67 65 74 5f 41 73 73 65 6d 62 6c 79 } //0a 00 
		$a_01_22 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00 
		$a_01_23 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_RemLoader_MTB_8{
	meta:
		description = "Trojan:BAT/RemLoader!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffff83 00 ffffff83 00 11 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 43 00 6f 00 72 00 65 00 2c 00 20 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 33 00 2e 00 35 00 2e 00 30 00 2e 00 30 00 2c 00 20 00 43 00 75 00 6c 00 74 00 75 00 72 00 65 00 3d 00 6e 00 65 00 75 00 74 00 72 00 61 00 6c 00 2c 00 20 00 50 00 75 00 62 00 6c 00 69 00 63 00 4b 00 65 00 79 00 54 00 6f 00 6b 00 65 00 6e 00 3d 00 62 00 37 00 37 00 61 00 35 00 63 00 35 00 36 00 31 00 39 00 33 00 34 00 65 00 30 00 38 00 39 00 } //0a 00 
		$a_01_1 = {53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2e 00 43 00 72 00 79 00 70 00 74 00 6f 00 67 00 72 00 61 00 70 00 68 00 79 00 2e 00 41 00 65 00 73 00 43 00 72 00 79 00 70 00 74 00 6f 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //0a 00 
		$a_01_2 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 31 00 30 00 30 00 30 00 39 00 2d 00 31 00 31 00 31 00 31 00 32 00 7d 00 } //0a 00 
		$a_01_3 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 35 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 30 00 7d 00 } //0a 00 
		$a_01_4 = {47 00 65 00 74 00 44 00 65 00 6c 00 65 00 67 00 61 00 74 00 65 00 46 00 6f 00 72 00 46 00 75 00 6e 00 63 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 69 00 6e 00 74 00 65 00 72 00 } //0a 00 
		$a_01_5 = {66 00 69 00 6c 00 65 00 3a 00 2f 00 2f 00 2f 00 } //0a 00 
		$a_01_6 = {4c 00 6f 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //0a 00 
		$a_01_7 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //0a 00 
		$a_01_8 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 32 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //0a 00 
		$a_01_9 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //0a 00 
		$a_01_10 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 33 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //0a 00 
		$a_01_11 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 31 00 7d 00 } //0a 00 
		$a_01_12 = {7b 00 31 00 31 00 31 00 31 00 31 00 2d 00 32 00 32 00 32 00 32 00 32 00 2d 00 34 00 30 00 30 00 30 00 31 00 2d 00 30 00 30 00 30 00 30 00 32 00 7d 00 } //01 00 
		$a_01_13 = {4a 00 75 00 70 00 69 00 74 00 65 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_14 = {41 00 70 00 68 00 72 00 6f 00 64 00 69 00 74 00 65 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_15 = {46 00 69 00 78 00 65 00 64 00 50 00 6f 00 69 00 6e 00 74 00 79 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_16 = {46 69 78 65 64 50 6f 69 6e 74 79 2e 64 6c 6c } //00 00 
	condition:
		any of ($a_*)
 
}