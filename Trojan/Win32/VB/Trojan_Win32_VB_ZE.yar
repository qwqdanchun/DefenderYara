
rule Trojan_Win32_VB_ZE{
	meta:
		description = "Trojan:Win32/VB.ZE,SIGNATURE_TYPE_PEHSTR_EXT,29 00 28 00 0a 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5c 00 4d 00 6f 00 6d 00 5c 00 4b 00 6e 00 61 00 6d 00 65 00 6d 00 6f 00 6d 00 2e 00 76 00 62 00 70 00 } //0a 00 
		$a_02_1 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 90 02 10 70 00 6f 00 70 00 90 00 } //05 00 
		$a_00_2 = {2f 00 43 00 6f 00 6e 00 66 00 69 00 67 00 2f 00 70 00 72 00 6f 00 67 00 72 00 61 00 6d 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 61 00 73 00 70 00 } //05 00 
		$a_00_3 = {4b 00 6e 00 61 00 6d 00 65 00 6d 00 6f 00 6d 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_00_4 = {4b 00 6e 00 61 00 6d 00 65 00 70 00 72 00 6f 00 63 00 2e 00 65 00 78 00 65 00 } //03 00 
		$a_00_5 = {37 00 38 00 45 00 31 00 42 00 44 00 44 00 31 00 2d 00 39 00 39 00 34 00 31 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 37 00 35 00 36 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 43 00 30 00 30 00 39 00 30 00 38 00 } //02 00 
		$a_00_6 = {73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 72 00 75 00 6e 00 } //01 00 
		$a_00_7 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 67 00 6f 00 6c 00 64 00 65 00 6e 00 74 00 65 00 63 00 68 00 2e 00 63 00 6f 00 2e 00 6b 00 72 00 } //01 00 
		$a_00_8 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 68 00 65 00 62 00 6f 00 67 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 63 00 } //01 00 
		$a_00_9 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 69 00 63 00 72 00 6f 00 6e 00 61 00 6d 00 65 00 2e 00 63 00 6f 00 2e 00 6b 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}