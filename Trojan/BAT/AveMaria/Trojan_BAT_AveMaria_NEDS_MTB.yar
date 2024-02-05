
rule Trojan_BAT_AveMaria_NEDS_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEDS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 04 00 "
		
	strings :
		$a_01_0 = {62 64 39 37 39 32 38 61 2d 37 36 31 65 2d 34 38 33 33 2d 39 35 61 34 2d 66 33 33 39 63 63 36 35 62 39 36 34 } //04 00 
		$a_01_1 = {41 6c 65 78 61 6e 64 65 72 20 52 6f 73 68 61 6c } //04 00 
		$a_01_2 = {66 38 51 30 52 6a 43 6f 34 32 4a 73 78 33 53 35 59 61 50 } //01 00 
		$a_01_3 = {43 6f 6d 6d 61 6e 64 20 6c 69 6e 65 20 52 41 52 } //01 00 
		$a_01_4 = {53 79 73 74 65 6d 2e 57 69 6e 64 6f 77 73 2e 46 6f 72 6d 73 2e 41 75 74 6f 6d 61 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}