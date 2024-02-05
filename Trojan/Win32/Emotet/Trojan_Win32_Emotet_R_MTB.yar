
rule Trojan_Win32_Emotet_R_MTB{
	meta:
		description = "Trojan:Win32/Emotet.R!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 55 4f 45 57 49 5a 55 46 45 } //02 00 
		$a_00_1 = {53 00 49 00 43 00 55 00 48 00 48 00 54 00 4a 00 49 00 4e 00 } //02 00 
		$a_00_2 = {43 00 67 00 79 00 4f 00 77 00 73 00 75 00 68 00 62 00 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Emotet_R_MTB_2{
	meta:
		description = "Trojan:Win32/Emotet.R!MTB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6a 00 6a 40 68 00 30 00 00 56 6a 00 55 ff d7 8b 54 24 10 8b f8 56 52 57 ff d3 8d 44 24 28 6a 26 50 56 57 ff 54 24 34 83 c4 1c ff d7 5f 5e 5d 33 c0 5b 83 c4 34 c3 } //01 00 
		$a_01_1 = {8b 74 24 14 6a 00 6a 00 8b f8 8b 44 24 24 56 6a 00 6a 01 50 53 ff d7 85 c0 75 } //01 00 
		$a_01_2 = {43 72 79 70 74 53 74 72 69 6e 67 54 6f 42 69 6e 61 72 79 41 } //01 00 
		$a_01_3 = {50 61 62 6c 6f 20 53 6f 66 74 77 61 72 65 20 53 6f 6c 75 74 69 6f 6e 73 } //01 00 
		$a_01_4 = {43 43 6c 6f 75 64 73 43 74 72 6c 20 45 78 61 6d 70 6c 65 } //00 00 
	condition:
		any of ($a_*)
 
}