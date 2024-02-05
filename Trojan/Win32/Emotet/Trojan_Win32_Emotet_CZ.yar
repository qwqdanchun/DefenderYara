
rule Trojan_Win32_Emotet_CZ{
	meta:
		description = "Trojan:Win32/Emotet.CZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 68 00 72 00 6f 00 6d 00 65 00 33 00 37 00 61 00 46 00 69 00 72 00 65 00 66 00 6f 00 78 00 00 00 61 00 73 00 4f 00 6e 00 4d 00 66 00 6f 00 72 00 77 00 61 00 72 00 64 } //01 00 
		$a_01_1 = {54 45 53 54 41 50 50 2e 45 58 45 00 6b 00 73 00 39 00 34 00 33 00 6d 00 73 00 77 00 61 00 73 00 64 00 66 00 00 00 39 32 33 6a 73 64 39 73 } //01 00 
		$a_01_2 = {46 00 69 00 6c 00 65 00 44 00 65 00 73 00 63 00 72 00 69 00 70 00 74 00 69 00 6f 00 6e 00 00 00 00 00 56 00 56 00 42 00 42 00 42 00 63 00 6b } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_CZ_2{
	meta:
		description = "Trojan:Win32/Emotet.CZ,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {65 00 48 00 57 00 52 00 48 00 47 00 42 00 77 00 72 00 6e 00 65 00 45 00 52 00 62 00 52 00 45 00 42 00 4e 00 57 00 52 00 } //01 00 
		$a_01_1 = {41 00 64 00 61 00 70 00 74 00 65 00 64 00 20 00 66 00 72 00 6f 00 6d 00 20 00 50 00 75 00 54 00 54 00 59 00 20 00 70 00 6c 00 69 00 6e 00 6b 00 20 00 28 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 63 00 68 00 69 00 61 00 72 00 6b 00 2e 00 67 00 72 00 65 00 65 00 6e 00 65 00 6e 00 64 00 2e 00 6f 00 72 00 67 00 2e 00 75 00 6b 00 2f 00 } //01 00 
		$a_01_2 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 43 00 } //01 00 
		$a_01_3 = {54 00 6f 00 72 00 74 00 6f 00 69 00 73 00 65 00 50 00 6c 00 69 00 6e 00 6b 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {65 00 73 00 76 00 6e 00 2e 00 6e 00 65 00 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}