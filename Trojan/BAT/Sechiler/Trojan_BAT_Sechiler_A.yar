
rule Trojan_BAT_Sechiler_A{
	meta:
		description = "Trojan:BAT/Sechiler.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {5c 73 65 63 75 72 69 74 79 5f 73 63 61 6e 5c 6f 62 6a 5c 78 38 36 5c 44 65 62 75 67 5c 73 65 63 75 72 90 03 01 03 65 69 74 79 5f 73 63 61 6e 2e 70 64 62 90 00 } //01 00 
		$a_03_1 = {5b 00 42 00 69 00 74 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 5d 00 90 02 20 5b 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 5d 00 90 02 50 5b 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 20 00 45 00 73 00 73 00 65 00 6e 00 74 00 69 00 61 00 6c 00 73 00 5d 00 90 00 } //00 00 
		$a_00_2 = {5d } //04 00  ]
	condition:
		any of ($a_*)
 
}