
rule Trojan_BAT_SpyNoon_RPE_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.RPE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 31 00 34 00 38 00 31 00 } //01 00 
		$a_01_1 = {6d 00 65 00 64 00 69 00 61 00 66 00 69 00 72 00 65 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_2 = {45 00 4e 00 43 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_3 = {45 00 6e 00 74 00 72 00 79 00 50 00 6f 00 69 00 6e 00 74 00 } //01 00 
		$a_01_4 = {49 00 6e 00 76 00 6f 00 6b 00 65 00 } //01 00 
		$a_01_5 = {72 00 6f 00 6f 00 74 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_6 = {31 00 41 00 30 00 35 00 37 00 31 00 37 00 31 00 32 00 41 00 32 00 46 00 33 00 30 00 33 00 34 00 31 00 31 00 31 00 35 00 31 00 41 00 31 00 36 00 32 00 43 00 30 00 41 00 30 00 32 00 33 00 32 00 32 00 41 00 32 00 46 00 32 00 42 00 37 00 46 00 } //00 00 
	condition:
		any of ($a_*)
 
}