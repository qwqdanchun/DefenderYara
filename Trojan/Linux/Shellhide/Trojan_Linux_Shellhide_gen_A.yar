
rule Trojan_Linux_Shellhide_gen_A{
	meta:
		description = "Trojan:Linux/Shellhide.gen!A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 75 62 20 41 75 74 6f 5f 4f 70 65 6e 28 29 } //01 00 
		$a_02_1 = {53 68 65 6c 6c 28 43 68 72 6f 6d 65 90 02 02 2c 20 76 62 48 69 64 65 29 90 00 } //01 00 
		$a_00_2 = {45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 } //00 00 
	condition:
		any of ($a_*)
 
}