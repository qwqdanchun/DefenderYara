
rule Trojan_BAT_FormBook_AAZG_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AAZG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {0a 05 03 02 8e 69 6f 90 01 01 00 00 0a 0a 2b 00 06 2a 90 00 } //01 00 
		$a_01_1 = {76 00 73 00 4c 00 68 00 4c 00 68 00 4a 00 42 00 55 00 43 00 69 00 76 00 77 00 4d 00 77 00 45 00 55 00 4d 00 54 00 78 00 45 00 42 00 41 00 76 00 54 00 43 00 55 00 51 00 4a 00 68 00 76 00 43 00 44 00 79 00 77 00 5a 00 72 00 70 00 55 00 66 00 68 00 66 00 } //01 00  vsLhLhJBUCivwMwEUMTxEBAvTCUQJhvCDywZrpUfhf
		$a_01_2 = {23 00 23 00 43 00 23 00 23 00 72 00 23 00 23 00 65 00 23 00 23 00 61 00 23 00 23 00 74 00 23 00 23 00 65 00 23 00 23 00 49 00 23 00 23 00 6e 00 23 00 23 00 73 00 23 00 23 00 74 00 23 00 23 00 61 00 23 00 23 00 6e 00 23 00 23 00 63 00 23 00 23 00 65 00 23 00 23 00 } //00 00  ##C##r##e##a##t##e##I##n##s##t##a##n##c##e##
	condition:
		any of ($a_*)
 
}