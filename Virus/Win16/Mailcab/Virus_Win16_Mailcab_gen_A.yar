
rule Virus_Win16_Mailcab_gen_A{
	meta:
		description = "Virus:Win16/Mailcab.gen!A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 49 6e 73 65 72 74 4c 69 6e 65 73 20 36 2c 20 22 43 61 6c 6c 20 44 6f 5f 57 68 61 74 22 } //01 00  .InsertLines 6, "Call Do_What"
		$a_00_1 = {49 66 20 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 50 61 74 68 20 3c 3e 20 41 70 70 6c 69 63 61 74 69 6f 6e 2e 53 74 61 72 74 75 70 50 61 74 68 20 54 68 65 6e 0d 0a 20 20 52 65 73 74 6f 72 65 41 66 74 65 72 4f 70 65 6e 0d 0a 20 20 43 61 6c 6c 20 4f 70 65 6e 44 6f 6f 72 0d 0a 20 20 43 61 6c 6c 20 4d 69 63 72 6f 73 6f 66 74 68 6f 62 62 79 } //01 00 
		$a_00_2 = {41 63 74 69 76 65 43 65 6c 6c 2e 46 6f 72 6d 75 6c 61 52 31 43 31 20 3d 20 22 3d 41 4c 45 52 54 28 22 22 ef bf bd ef bf bd ef bf bd c3 ba ea a3 ac ef bf bd d8 b1 ef bf bd 20 22 20 26 20 43 68 72 28 31 30 29 20 26 20 4e 6f 77 20 26 20 43 68 72 28 31 30 29 20 26 20 22 50 6c 65 61 73 65 20 45 6e 61 62 6c 65 20 4d 61 63 72 6f 21 22 22 2c 33 29 22 } //00 00 
	condition:
		any of ($a_*)
 
}