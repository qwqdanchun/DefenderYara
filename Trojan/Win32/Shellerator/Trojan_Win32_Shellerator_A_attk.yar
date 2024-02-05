
rule Trojan_Win32_Shellerator_A_attk{
	meta:
		description = "Trojan:Win32/Shellerator.A!attk,SIGNATURE_TYPE_CMDHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {6c 00 61 00 6d 00 62 00 64 00 61 00 90 02 24 63 00 6f 00 6e 00 74 00 65 00 78 00 74 00 6c 00 69 00 62 00 3a 00 20 00 5b 00 5b 00 5b 00 5b 00 5b 00 5b 00 5b 00 28 00 73 00 2e 00 63 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 90 02 3c 73 00 32 00 70 00 5f 00 74 00 68 00 72 00 65 00 61 00 64 00 2e 00 73 00 74 00 61 00 72 00 74 00 28 00 29 00 2c 00 20 00 5b 00 5b 00 28 00 70 00 32 00 73 00 5f 00 74 00 68 00 72 00 65 00 61 00 64 00 2e 00 73 00 74 00 61 00 72 00 74 00 90 00 } //01 00 
		$a_00_1 = {73 00 75 00 62 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 50 00 6f 00 70 00 65 00 6e 00 28 00 5b 00 27 00 5c 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 27 00 5d 00 2c 00 20 00 73 00 74 00 64 00 6f 00 75 00 74 00 3d 00 73 00 75 00 62 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 50 00 49 00 50 00 45 00 2c 00 20 00 73 00 74 00 64 00 65 00 72 00 72 00 3d 00 73 00 75 00 62 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 53 00 54 00 44 00 4f 00 55 00 54 00 } //01 00 
		$a_02_2 = {73 00 74 00 64 00 69 00 6e 00 3d 00 73 00 75 00 62 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 50 00 49 00 50 00 45 00 90 02 46 73 00 6f 00 63 00 6b 00 65 00 74 00 2e 00 73 00 6f 00 63 00 6b 00 65 00 74 00 28 00 73 00 6f 00 63 00 6b 00 65 00 74 00 2e 00 41 00 46 00 5f 00 49 00 4e 00 45 00 54 00 2c 00 20 00 73 00 6f 00 63 00 6b 00 65 00 74 00 2e 00 53 00 4f 00 43 00 4b 00 5f 00 53 00 54 00 52 00 45 00 41 00 4d 00 29 00 90 00 } //01 00 
		$a_02_3 = {74 00 68 00 69 00 73 00 28 00 29 00 29 00 20 00 66 00 6f 00 72 00 90 02 40 72 00 65 00 63 00 76 00 28 00 31 00 30 00 32 00 34 00 29 00 29 00 5d 00 5d 00 5b 00 30 00 5d 00 20 00 69 00 66 00 20 00 54 00 72 00 75 00 65 00 20 00 65 00 6c 00 73 00 65 00 20 00 5f 00 5f 00 61 00 66 00 74 00 65 00 72 00 28 00 29 00 29 00 28 00 29 00 29 00 28 00 6c 00 61 00 6d 00 62 00 64 00 61 00 3a 00 20 00 4e 00 6f 00 6e 00 65 00 29 00 20 00 66 00 6f 00 72 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}