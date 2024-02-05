
rule Trojan_Win32_KeyLogger_PAA_MTB{
	meta:
		description = "Trojan:Win32/KeyLogger.PAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffae 01 ffffffae 01 23 00 00 1e 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 43 6f 6e 6e 65 63 74 41 } //1e 00 
		$a_01_1 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //1e 00 
		$a_01_2 = {47 65 74 41 73 79 6e 63 4b 65 79 53 74 61 74 65 } //1e 00 
		$a_01_3 = {47 65 74 57 69 6e 64 6f 77 54 65 78 74 41 } //1e 00 
		$a_01_4 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //1e 00 
		$a_01_5 = {63 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //1e 00 
		$a_01_6 = {6b 65 79 62 64 5f 65 76 65 6e 74 } //1e 00 
		$a_01_7 = {2f 00 75 00 70 00 6c 00 6f 00 61 00 64 00 2e 00 70 00 68 00 70 00 } //1e 00 
		$a_01_8 = {2f 00 63 00 6f 00 70 00 79 00 2e 00 70 00 68 00 70 00 } //1e 00 
		$a_01_9 = {50 6f 73 74 46 69 6c 65 } //1e 00 
		$a_01_10 = {74 5f 73 61 76 65 } //1e 00 
		$a_01_11 = {74 5f 67 72 61 62 } //1e 00 
		$a_01_12 = {74 5f 63 6d 64 } //1e 00 
		$a_01_13 = {74 5f 6b 65 79 } //01 00 
		$a_01_14 = {5b 00 20 00 50 00 61 00 67 00 65 00 44 00 6f 00 77 00 6e 00 20 00 5d 00 } //01 00 
		$a_01_15 = {5b 00 20 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 20 00 5d 00 } //01 00 
		$a_01_16 = {5b 00 20 00 53 00 45 00 4c 00 45 00 43 00 54 00 20 00 5d 00 } //01 00 
		$a_01_17 = {5b 00 20 00 50 00 61 00 67 00 65 00 55 00 70 00 20 00 5d 00 } //01 00 
		$a_01_18 = {5b 00 20 00 50 00 41 00 55 00 53 00 45 00 20 00 5d 00 } //01 00 
		$a_01_19 = {5b 00 20 00 50 00 52 00 49 00 4e 00 54 00 20 00 5d 00 } //01 00 
		$a_01_20 = {5b 00 20 00 52 00 49 00 47 00 48 00 54 00 20 00 5d 00 } //01 00 
		$a_01_21 = {5b 00 20 00 43 00 41 00 50 00 53 00 20 00 5d 00 } //01 00 
		$a_01_22 = {5b 00 20 00 43 00 54 00 52 00 4c 00 20 00 5d 00 } //01 00 
		$a_01_23 = {5b 00 20 00 43 00 41 00 4e 00 43 00 20 00 5d 00 } //01 00 
		$a_01_24 = {5b 00 20 00 48 00 4f 00 4d 00 45 00 20 00 5d 00 } //01 00 
		$a_01_25 = {5b 00 20 00 4c 00 45 00 46 00 54 00 20 00 5d 00 } //01 00 
		$a_01_26 = {5b 00 20 00 44 00 4f 00 57 00 4e 00 20 00 5d 00 } //01 00 
		$a_01_27 = {5b 00 20 00 48 00 45 00 4c 00 50 00 20 00 5d 00 } //01 00 
		$a_01_28 = {5b 00 20 00 54 00 41 00 42 00 20 00 5d 00 } //01 00 
		$a_01_29 = {5b 00 20 00 41 00 4c 00 54 00 20 00 5d 00 } //01 00 
		$a_01_30 = {5b 00 20 00 45 00 53 00 43 00 20 00 5d 00 } //01 00 
		$a_01_31 = {5b 00 20 00 45 00 4e 00 44 00 20 00 5d 00 } //01 00 
		$a_01_32 = {5b 00 20 00 49 00 4e 00 53 00 20 00 5d 00 } //01 00 
		$a_01_33 = {5b 00 20 00 44 00 45 00 4c 00 20 00 5d 00 } //01 00 
		$a_01_34 = {5b 00 20 00 55 00 50 00 20 00 5d 00 } //00 00 
	condition:
		any of ($a_*)
 
}