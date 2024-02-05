
rule Trojan_Win32_EmotetCrypt_RK_MTB{
	meta:
		description = "Trojan:Win32/EmotetCrypt.RK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 68 61 72 32 41 63 74 69 76 61 74 65 54 72 61 6e 4e 65 78 74 43 68 61 72 32 55 70 70 65 72 } //01 00 
		$a_00_1 = {3a 00 00 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //01 00 
		$a_00_2 = {41 00 55 00 54 00 4f 00 4e 00 45 00 58 00 54 00 46 00 4c 00 45 00 58 00 49 00 4e 00 50 00 55 00 54 00 28 00 } //01 00 
		$a_01_3 = {01 49 4e 44 4f 57 53 5c 73 79 73 74 65 6d 33 32 5c 63 6d 64 2e 65 78 65 } //05 00 
		$a_01_4 = {bb 01 00 00 00 33 ff b9 df 25 01 00 50 3b f9 7f } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_EmotetCrypt_RK_MTB_2{
	meta:
		description = "Trojan:Win32/EmotetCrypt.RK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 0c 00 00 01 00 "
		
	strings :
		$a_00_0 = {75 00 73 00 65 00 72 00 61 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 65 00 64 00 69 00 74 00 } //01 00 
		$a_00_1 = {4b 00 2a 00 5c 00 41 00 44 00 3a 00 5c 00 6b 00 61 00 72 00 61 00 6f 00 6b 00 65 00 5c 00 4b 00 61 00 72 00 61 00 6f 00 6b 00 65 00 32 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_00_2 = {42 00 72 00 6f 00 77 00 73 00 65 00 20 00 66 00 6f 00 72 00 20 00 6b 00 61 00 72 00 20 00 66 00 69 00 6c 00 65 00 73 00 } //01 00 
		$a_01_3 = {4e 48 73 32 4e 48 73 44 4e 48 73 58 4e 48 73 6a 4e 48 73 7e 4e 48 73 } //01 00 
		$a_01_4 = {4f 48 73 28 4f 48 73 3c 4f 48 73 4e 4f 48 73 62 4f 48 73 74 4f 48 73 } //01 00 
		$a_01_5 = {50 48 73 20 50 48 73 32 50 48 73 46 50 48 73 58 50 48 73 6c 50 48 73 7e 50 48 73 } //01 00 
		$a_01_6 = {51 48 73 2a 51 48 73 3c 51 48 73 50 51 48 73 62 51 48 73 76 51 48 73 } //01 00 
		$a_01_7 = {52 48 73 20 52 48 73 34 52 48 73 46 52 48 73 5a 52 48 73 6c 52 48 73 } //01 00 
		$a_01_8 = {53 48 73 2a 53 48 73 3e 53 48 73 50 53 48 73 64 53 48 73 76 53 48 73 } //01 00 
		$a_01_9 = {54 48 73 22 54 48 73 34 54 48 73 48 54 48 73 5a 54 48 73 6e 54 48 73 } //01 00 
		$a_01_10 = {55 48 73 2c 55 48 73 3e 55 48 73 52 55 48 73 64 55 48 73 78 55 48 73 } //05 00 
		$a_00_11 = {3a 00 00 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}