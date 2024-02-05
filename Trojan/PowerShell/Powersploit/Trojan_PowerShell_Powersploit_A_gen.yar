
rule Trojan_PowerShell_Powersploit_A_gen{
	meta:
		description = "Trojan:PowerShell/Powersploit.A!gen,SIGNATURE_TYPE_CMDHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {69 00 66 00 28 00 5b 00 49 00 6e 00 74 00 50 00 74 00 72 00 5d 00 3a 00 3a 00 53 00 69 00 7a 00 65 00 20 00 2d 00 65 00 71 00 20 00 34 00 29 00 7b 00 24 00 62 00 3d 00 27 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 27 00 7d 00 65 00 6c 00 73 00 65 00 7b 00 24 00 62 00 3d 00 24 00 65 00 6e 00 76 00 3a 00 77 00 69 00 6e 00 64 00 69 00 72 00 2b 00 27 00 5c 00 73 00 79 00 73 00 77 00 6f 00 77 00 36 00 34 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 50 00 6f 00 77 00 65 00 72 00 53 00 68 00 65 00 6c 00 6c 00 5c 00 76 00 31 00 2e 00 30 00 5c 00 70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 27 00 7d 00 3b 00 } //01 00 
		$a_00_1 = {24 00 73 00 3d 00 4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 44 00 69 00 61 00 67 00 6e 00 6f 00 73 00 74 00 69 00 63 00 73 00 2e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 53 00 74 00 61 00 72 00 74 00 49 00 6e 00 66 00 6f 00 3b 00 24 00 73 00 2e 00 46 00 69 00 6c 00 65 00 4e 00 61 00 6d 00 65 00 3d 00 24 00 62 00 3b 00 24 00 73 00 2e 00 41 00 72 00 67 00 75 00 6d 00 65 00 6e 00 74 00 73 00 3d 00 27 00 } //01 00 
		$a_00_2 = {2d 00 6e 00 6f 00 70 00 20 00 2d 00 77 00 20 00 68 00 69 00 64 00 64 00 65 00 6e 00 20 00 2d 00 63 00 20 00 } //01 00 
		$a_01_3 = {4e 00 65 00 77 00 2d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 20 00 49 00 4f 00 2e 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 53 00 74 00 72 00 65 00 61 00 6d 00 28 00 2c 00 5b 00 43 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 28 00 27 00 27 00 48 00 34 00 73 00 49 00 41 00 } //01 00 
		$a_00_4 = {2c 00 5b 00 49 00 4f 00 2e 00 43 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 2e 00 43 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 4d 00 6f 00 64 00 65 00 5d 00 3a 00 3a 00 44 00 65 00 63 00 6f 00 6d 00 70 00 72 00 65 00 73 00 73 00 29 00 29 00 29 00 2e 00 52 00 65 00 61 00 64 00 54 00 6f 00 45 00 6e 00 64 00 28 00 29 00 } //01 00 
		$a_00_5 = {27 00 3b 00 24 00 73 00 2e 00 55 00 73 00 65 00 53 00 68 00 65 00 6c 00 6c 00 45 00 78 00 65 00 63 00 75 00 74 00 65 00 3d 00 24 00 66 00 61 00 6c 00 73 00 65 00 3b 00 24 00 73 00 2e 00 52 00 65 00 64 00 69 00 72 00 65 00 63 00 74 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 4f 00 75 00 74 00 70 00 75 00 74 00 3d 00 24 00 74 00 72 00 75 00 65 00 3b 00 24 00 73 00 2e 00 57 00 69 00 6e 00 64 00 6f 00 77 00 53 00 74 00 79 00 6c 00 65 00 3d 00 27 00 48 00 69 00 64 00 64 00 65 00 6e 00 27 00 3b 00 } //01 00 
		$a_00_6 = {24 00 73 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 4e 00 6f 00 57 00 69 00 6e 00 64 00 6f 00 77 00 3d 00 24 00 74 00 72 00 75 00 65 00 3b 00 24 00 70 00 3d 00 5b 00 53 00 79 00 73 00 74 00 65 00 6d 00 2e 00 44 00 69 00 61 00 67 00 6e 00 6f 00 73 00 74 00 69 00 63 00 73 00 2e 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 5d 00 3a 00 3a 00 53 00 74 00 61 00 72 00 74 00 28 00 24 00 73 00 29 00 3b 00 } //00 00 
	condition:
		any of ($a_*)
 
}