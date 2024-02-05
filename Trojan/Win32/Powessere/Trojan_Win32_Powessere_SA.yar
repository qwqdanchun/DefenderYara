
rule Trojan_Win32_Powessere_SA{
	meta:
		description = "Trojan:Win32/Powessere.SA,SIGNATURE_TYPE_CMDHSTR_EXT,ffffff9f 01 ffffff9f 01 08 00 00 64 00 "
		
	strings :
		$a_00_0 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //64 00 
		$a_00_1 = {5b 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 74 00 65 00 78 00 74 00 2e 00 65 00 6e 00 63 00 6f 00 64 00 69 00 6e 00 67 00 5d 00 3a 00 3a 00 61 00 73 00 63 00 69 00 69 00 2e 00 67 00 65 00 74 00 73 00 74 00 72 00 69 00 6e 00 67 00 } //64 00 
		$a_02_2 = {68 00 6b 00 90 02 04 3a 00 5c 00 73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 90 02 20 29 00 2e 00 90 02 20 29 00 90 00 } //64 00 
		$a_00_3 = {5b 00 73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 63 00 6f 00 6e 00 76 00 65 00 72 00 74 00 5d 00 3a 00 3a 00 66 00 72 00 6f 00 6d 00 62 00 61 00 73 00 65 00 36 00 34 00 73 00 74 00 72 00 69 00 6e 00 67 00 } //0a 00 
		$a_00_4 = {69 00 65 00 78 00 } //0a 00 
		$a_00_5 = {69 00 6e 00 76 00 6f 00 6b 00 65 00 2d 00 65 00 78 00 70 00 72 00 65 00 73 00 73 00 69 00 6f 00 6e 00 } //05 00 
		$a_00_6 = {67 00 65 00 74 00 2d 00 69 00 74 00 65 00 6d 00 70 00 72 00 6f 00 70 00 65 00 72 00 74 00 79 00 20 00 } //05 00 
		$a_00_7 = {67 00 70 00 20 00 } //00 00 
	condition:
		any of ($a_*)
 
}