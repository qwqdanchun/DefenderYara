
rule Trojan_BAT_StormKitty_NE_MTB{
	meta:
		description = "Trojan:BAT/StormKitty.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 61 6e 64 73 6b 69 70 20 59 61 72 64 20 43 61 72 65 } //04 00 
		$a_01_1 = {46 35 36 39 43 36 45 44 30 42 32 42 31 37 34 31 41 31 34 45 32 45 39 43 43 } //04 00 
		$a_01_2 = {4b 44 69 6b 4d 58 65 77 43 49 } //01 00 
		$a_01_3 = {43 61 72 64 20 50 75 6e 63 68 65 72 } //01 00 
		$a_01_4 = {62 37 37 61 35 63 35 36 31 39 33 34 65 30 38 39 } //00 00 
	condition:
		any of ($a_*)
 
}