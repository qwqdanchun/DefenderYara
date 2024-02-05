
rule Trojan_BAT_AsyncRat_NEAB_MTB{
	meta:
		description = "Trojan:BAT/AsyncRat.NEAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {00 09 11 05 09 6f 18 00 00 0a 1e 5b 6f 16 00 00 0a 6f 19 00 00 0a 00 09 17 6f 1a 00 00 0a 00 08 09 6f 1b 00 00 0a 17 } //05 00 
		$a_01_1 = {00 11 06 02 16 02 8e 69 6f 1d 00 00 0a 00 11 06 6f 1e 00 00 0a 00 00 de 14 } //05 00 
		$a_01_2 = {51 00 7a 00 70 00 63 00 56 00 32 00 6c 00 75 00 5a 00 47 00 39 00 33 00 63 00 31 00 78 00 4e 00 61 00 57 00 4e 00 79 00 62 00 33 00 4e 00 76 00 5a 00 6e 00 51 00 75 00 54 00 6b 00 56 00 55 00 58 00 45 00 5a 00 79 00 59 00 57 00 31 00 6c 00 64 00 32 00 39 00 79 00 61 00 31 00 78 00 32 00 4e 00 43 00 34 00 77 00 4c 00 6a 00 4d 00 77 00 4d 00 7a 00 45 00 35 00 58 00 46 00 4a 00 6c 00 5a 00 30 00 46 00 7a 00 62 00 53 00 35 00 6c 00 65 00 47 00 55 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}