
rule Trojan_BAT_SpyNoon_SP_MTB{
	meta:
		description = "Trojan:BAT/SpyNoon.SP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 53 00 67 00 39 00 51 00 35 00 37 00 6b 00 46 00 50 00 43 00 4d 00 62 00 6b 00 76 00 6a 00 6a 00 45 00 49 00 57 00 72 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_1 = {50 00 39 00 5a 00 47 00 4f 00 6c 00 56 00 69 00 4a 00 48 00 71 00 76 00 38 00 63 00 74 00 64 00 70 00 43 00 36 00 77 00 77 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_2 = {53 00 59 00 62 00 67 00 78 00 4a 00 56 00 41 00 31 00 6f 00 70 00 33 00 63 00 32 00 6e 00 4b 00 69 00 67 00 4e 00 45 00 59 00 41 00 3d 00 3d 00 } //01 00 
		$a_01_3 = {76 00 4e 00 4b 00 48 00 71 00 2f 00 44 00 59 00 36 00 39 00 4f 00 4d 00 68 00 68 00 55 00 6d 00 54 00 43 00 6b 00 44 00 46 00 77 00 3d 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}