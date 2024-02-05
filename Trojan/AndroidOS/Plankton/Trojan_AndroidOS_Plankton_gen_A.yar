
rule Trojan_AndroidOS_Plankton_gen_A{
	meta:
		description = "Trojan:AndroidOS/Plankton.gen!A,SIGNATURE_TYPE_DEXHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_00_0 = {61 6e 64 72 6f 69 64 2e 69 6e 74 65 6e 74 2e 62 72 6f 77 73 65 72 2e 53 45 54 5f 48 4f 4d 45 50 41 47 45 00 } //01 00 
		$a_03_1 = {12 49 12 38 12 27 12 16 12 05 22 00 90 01 01 00 1a 01 90 01 01 03 1a 02 90 01 02 1a 03 90 01 02 70 53 90 01 02 10 25 69 00 90 01 02 22 00 90 01 02 1a 01 90 01 02 1a 02 90 01 02 1a 03 90 01 02 70 53 90 01 02 10 26 69 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}