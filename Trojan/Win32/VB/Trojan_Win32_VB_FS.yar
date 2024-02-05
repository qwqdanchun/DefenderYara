
rule Trojan_Win32_VB_FS{
	meta:
		description = "Trojan:Win32/VB.FS,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1e 00 05 00 00 0a 00 "
		
	strings :
		$a_00_0 = {41 00 2a 00 5c 00 41 00 43 00 3a 00 5c 00 44 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 73 00 20 00 61 00 6e 00 64 00 20 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 5c 00 63 00 34 00 72 00 6e 00 33 00 76 00 69 00 6c 00 } //0a 00 
		$a_00_1 = {59 00 6f 00 75 00 20 00 67 00 6f 00 74 00 20 00 70 00 77 00 6e 00 33 00 64 00 20 00 4c 00 61 00 6d 00 33 00 72 00 21 00 } //0a 00 
		$a_02_2 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 90 02 20 2e 00 63 00 6f 00 6d 00 90 00 } //01 00 
		$a_00_3 = {56 00 69 00 72 00 75 00 73 00 20 00 57 00 72 00 69 00 74 00 74 00 65 00 6e 00 20 00 62 00 79 00 3a 00 20 00 78 00 79 00 72 00 30 00 78 00 20 00 2d 00 20 00 61 00 2e 00 6b 00 2e 00 61 00 20 00 63 00 34 00 72 00 6e 00 33 00 76 00 69 00 6c 00 } //01 00 
		$a_00_4 = {59 00 6f 00 75 00 20 00 46 00 75 00 63 00 6b 00 69 00 6e 00 67 00 20 00 4d 00 6f 00 72 00 6f 00 6e 00 21 00 } //00 00 
	condition:
		any of ($a_*)
 
}