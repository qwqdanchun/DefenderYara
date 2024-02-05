
rule Trojan_AndroidOS_RuFraud_A{
	meta:
		description = "Trojan:AndroidOS/RuFraud.A,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {39 31 2e 32 31 33 2e 31 37 35 2e 31 34 38 2f 61 70 70 } //01 00 
		$a_01_1 = {44 6f 77 6e 6c 6f 61 64 69 6e 67 20 66 69 6c 65 2e 2e 2e } //01 00 
		$a_01_2 = {45 32 37 33 46 45 44 38 34 31 35 46 37 42 31 44 38 43 46 45 41 43 38 30 41 39 36 43 46 46 34 36 } //01 00 
		$a_01_3 = {52 75 6c 65 41 63 74 69 76 69 74 79 24 64 6f 77 6e 6c 6f 61 64 44 61 74 61 } //00 00 
	condition:
		any of ($a_*)
 
}