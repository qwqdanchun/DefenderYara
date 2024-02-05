
rule Trojan_BAT_Poullight_SA_MSR{
	meta:
		description = "Trojan:BAT/Poullight.SA!MSR,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {42 00 72 00 6f 00 77 00 73 00 65 00 72 00 73 00 5c 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 73 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_1 = {63 00 6f 00 70 00 79 00 62 00 6f 00 61 00 72 00 64 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {53 00 63 00 72 00 65 00 65 00 6e 00 53 00 68 00 6f 00 74 00 2e 00 70 00 6e 00 67 00 } //01 00 
		$a_01_3 = {57 00 65 00 62 00 43 00 61 00 6d 00 2e 00 6a 00 70 00 67 00 } //01 00 
		$a_01_4 = {47 00 6f 00 6f 00 67 00 6c 00 65 00 5c 00 43 00 68 00 72 00 6f 00 6d 00 65 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_01_5 = {54 00 6f 00 72 00 63 00 68 00 5c 00 55 00 73 00 65 00 72 00 20 00 44 00 61 00 74 00 61 00 } //01 00 
		$a_01_6 = {50 00 6f 00 75 00 6c 00 6c 00 69 00 67 00 68 00 74 00 } //01 00 
		$a_01_7 = {53 00 74 00 65 00 61 00 6c 00 65 00 72 00 20 00 62 00 79 00 } //01 00 
		$a_01_8 = {6d 00 6f 00 6e 00 65 00 72 00 6f 00 2d 00 63 00 6f 00 72 00 65 00 } //01 00 
		$a_01_9 = {42 00 69 00 74 00 63 00 6f 00 69 00 6e 00 2d 00 51 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}