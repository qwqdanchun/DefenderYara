
rule Trojan_BAT_Holmium_SA_dha{
	meta:
		description = "Trojan:BAT/Holmium.SA!dha,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {42 00 61 00 73 00 65 00 62 00 61 00 6c 00 6c 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_1 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 76 00 31 00 2e 00 30 00 5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 31 00 39 00 33 00 2e 00 33 00 37 00 2e 00 32 00 31 00 32 00 2e 00 32 00 36 00 2f 00 } //01 00 
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 55 00 6e 00 69 00 76 00 65 00 72 00 73 00 61 00 6c 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 50 00 6c 00 61 00 74 00 66 00 6f 00 72 00 6d 00 5c 00 52 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 65 00 64 00 } //02 00 
		$a_01_4 = {24 33 33 36 65 64 61 63 39 2d 32 33 38 35 2d 34 64 39 32 2d 39 31 36 63 2d 66 37 37 61 33 62 39 39 35 63 36 62 } //00 00 
		$a_00_5 = {5d 04 00 } //00 a0 
	condition:
		any of ($a_*)
 
}