
rule Trojan_BAT_BitRat_MK_MTB{
	meta:
		description = "Trojan:BAT/BitRat.MK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 04 00 00 0a 00 "
		
	strings :
		$a_81_0 = {74 61 73 6b 70 65 72 66 6f 72 6d 65 72 2e 73 72 63 } //0a 00 
		$a_81_1 = {73 65 6c 65 63 74 20 4d 41 43 41 64 64 72 65 73 73 2c 20 49 50 45 6e 61 62 6c 65 64 20 66 72 6f 6d 20 57 69 6e 33 32 5f 4e 65 74 77 6f 72 6b 41 64 61 70 74 65 72 43 6f 6e 66 69 67 75 72 61 74 69 6f 6e } //01 00 
		$a_81_2 = {37 30 30 30 37 32 30 30 36 39 30 30 36 44 30 30 36 31 30 30 37 32 30 30 37 39 30 30 35 46 30 30 36 44 30 30 36 31 30 30 36 39 30 30 36 45 30 30 32 45 30 30 37 30 30 30 36 38 30 30 37 30 30 30 } //01 00 
		$a_81_3 = {37 33 30 30 36 35 30 30 36 33 30 30 36 46 30 30 36 45 30 30 36 34 30 30 36 31 30 30 37 32 30 30 37 39 30 30 32 45 30 30 37 30 30 30 36 38 30 30 37 30 30 30 } //00 00 
	condition:
		any of ($a_*)
 
}