
rule Trojan_AndroidOS_InfoStealer_B{
	meta:
		description = "Trojan:AndroidOS/InfoStealer.B,SIGNATURE_TYPE_DEXHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {73 65 6e 74 4d 69 63 52 65 63 6f 72 64 69 6e 67 } //01 00 
		$a_00_1 = {73 65 6e 74 46 72 6f 6e 74 43 61 6d 65 72 61 49 6d 61 67 65 } //01 00 
		$a_01_2 = {67 65 74 41 6c 6c 55 73 65 72 49 6e 66 6f } //01 00 
		$a_00_3 = {72 65 6d 61 69 6e 69 6e 67 57 68 61 74 73 41 70 70 49 6d 61 67 65 73 46 69 6c 65 73 } //01 00 
		$a_01_4 = {67 65 74 41 6c 6c 53 4d 53 } //00 00 
		$a_00_5 = {5d 04 00 } //00 35 
	condition:
		any of ($a_*)
 
}