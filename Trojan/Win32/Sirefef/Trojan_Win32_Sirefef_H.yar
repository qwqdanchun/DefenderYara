
rule Trojan_Win32_Sirefef_H{
	meta:
		description = "Trojan:Win32/Sirefef.H,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 41 00 43 00 50 00 49 00 23 00 50 00 4e 00 50 00 30 00 33 00 30 00 33 00 23 00 32 00 26 00 64 00 61 00 31 00 61 00 33 00 66 00 66 00 26 00 30 00 5c 00 55 00 5c 00 24 00 25 00 30 00 38 00 78 00 } //01 00 
		$a_00_1 = {5a 77 51 75 65 75 65 41 70 63 54 68 72 65 61 64 } //01 00 
		$a_00_2 = {5a 77 54 65 73 74 41 6c 65 72 74 } //01 00 
		$a_03_3 = {50 50 68 00 00 40 00 6a 05 50 50 50 54 68 80 02 40 00 68 00 00 10 00 54 ff 15 90 01 04 ff 15 90 01 04 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Sirefef_H_2{
	meta:
		description = "Trojan:Win32/Sirefef.H,SIGNATURE_TYPE_ARHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {5c 00 41 00 43 00 50 00 49 00 23 00 50 00 4e 00 50 00 30 00 33 00 30 00 33 00 23 00 32 00 26 00 64 00 61 00 31 00 61 00 33 00 66 00 66 00 26 00 30 00 5c 00 55 00 5c 00 24 00 25 00 30 00 38 00 78 00 } //01 00 
		$a_00_1 = {5a 77 51 75 65 75 65 41 70 63 54 68 72 65 61 64 } //01 00 
		$a_00_2 = {5a 77 54 65 73 74 41 6c 65 72 74 } //01 00 
		$a_03_3 = {50 50 68 00 00 40 00 6a 05 50 50 50 54 68 80 02 40 00 68 00 00 10 00 54 ff 15 90 01 04 ff 15 90 01 04 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}