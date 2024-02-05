
rule Trojan_BAT_Captavot_A{
	meta:
		description = "Trojan:BAT/Captavot.A,SIGNATURE_TYPE_PEHSTR_EXT,3f 00 3f 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 68 6f 73 74 20 43 6c 69 65 6e 74 } //01 00 
		$a_01_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4c 00 69 00 62 00 72 00 61 00 72 00 79 00 } //01 00 
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //0a 00 
		$a_01_3 = {44 65 61 74 68 42 79 43 61 70 74 63 68 61 } //0a 00 
		$a_01_4 = {50 6f 6c 6c 50 61 79 6c 6f 61 64 } //0a 00 
		$a_01_5 = {44 62 63 50 61 73 73 77 6f 72 64 } //0a 00 
		$a_01_6 = {3a 00 4e 00 4f 00 54 00 49 00 46 00 59 00 5f 00 4f 00 57 00 4e 00 45 00 52 00 3a 00 43 00 6f 00 75 00 6c 00 64 00 20 00 6e 00 6f 00 74 00 20 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 20 00 6f 00 72 00 20 00 63 00 72 00 65 00 61 00 74 00 65 00 20 00 74 00 68 00 65 00 20 00 6e 00 65 00 77 00 20 00 65 00 78 00 65 00 63 00 75 00 74 00 61 00 62 00 6c 00 65 00 } //0a 00 
		$a_01_7 = {3a 00 4e 00 4f 00 54 00 49 00 46 00 59 00 5f 00 4f 00 57 00 4e 00 45 00 52 00 3a 00 56 00 6f 00 74 00 65 00 20 00 63 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 64 00 20 00 6f 00 6e 00 } //0a 00 
		$a_01_8 = {43 00 41 00 50 00 54 00 43 00 48 00 41 00 20 00 77 00 61 00 73 00 20 00 72 00 65 00 6a 00 65 00 63 00 74 00 65 00 64 00 20 00 64 00 75 00 65 00 20 00 74 00 6f 00 20 00 73 00 65 00 72 00 76 00 69 00 63 00 65 00 20 00 6f 00 76 00 65 00 72 00 6c 00 6f 00 61 00 64 00 } //00 00 
		$a_00_9 = {87 10 00 00 dd dd 97 6c ee 65 49 50 a6 bb f7 0e b0 a5 00 00 5d 04 00 00 a3 14 03 80 5c 22 00 00 a4 14 03 80 00 00 01 00 06 00 0c 00 87 01 43 61 6c 69 65 72 6f 74 2e 41 00 00 01 40 } //05 82 
	condition:
		any of ($a_*)
 
}