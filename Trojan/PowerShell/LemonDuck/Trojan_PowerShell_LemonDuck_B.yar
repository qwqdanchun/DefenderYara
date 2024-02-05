
rule Trojan_PowerShell_LemonDuck_B{
	meta:
		description = "Trojan:PowerShell/LemonDuck.B,SIGNATURE_TYPE_CMDHSTR_EXT,08 00 08 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 20 00 2d 00 77 00 } //01 00 
		$a_00_1 = {68 00 69 00 64 00 64 00 65 00 6e 00 } //01 00 
		$a_00_2 = {5b 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 54 00 65 00 78 00 74 00 2e 00 45 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 41 00 53 00 43 00 49 00 49 00 2e 00 47 00 65 00 74 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //03 00 
		$a_02_3 = {2e 00 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 44 00 61 00 74 00 61 00 28 00 27 00 68 00 74 00 74 00 70 00 90 02 30 2f 00 61 00 2e 00 6a 00 73 00 70 00 3f 00 90 00 } //01 00 
		$a_00_4 = {24 00 65 00 6e 00 76 00 3a 00 43 00 4f 00 4d 00 50 00 55 00 54 00 45 00 52 00 4e 00 41 00 4d 00 45 00 2c 00 24 00 65 00 6e 00 76 00 3a 00 55 00 53 00 45 00 52 00 4e 00 41 00 4d 00 45 00 } //01 00 
		$a_00_5 = {28 00 67 00 65 00 74 00 2d 00 77 00 6d 00 69 00 6f 00 62 00 6a 00 65 00 63 00 74 00 20 00 57 00 69 00 6e 00 33 00 32 00 5f 00 43 00 6f 00 6d 00 70 00 75 00 74 00 65 00 72 00 53 00 79 00 73 00 74 00 65 00 6d 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 29 00 2e 00 55 00 55 00 49 00 44 00 } //01 00 
		$a_00_6 = {28 00 72 00 61 00 6e 00 64 00 6f 00 6d 00 29 00 29 00 2d 00 6a 00 6f 00 69 00 6e 00 27 00 2a 00 27 00 29 00 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}