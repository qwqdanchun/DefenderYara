
rule Trojan_Win32_BHO_BA{
	meta:
		description = "Trojan:Win32/BHO.BA,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {37 44 37 31 34 45 34 35 2d 35 43 45 32 2d 34 37 34 33 2d 41 36 43 33 2d 32 46 46 46 45 39 46 32 44 46 30 37 } //01 00 
		$a_02_1 = {49 6e 73 74 61 6c 6c 48 6f 6f 6b 90 02 04 6d 69 6c 65 6d 61 6c 6c 2e 64 6c 6c 90 00 } //01 00 
		$a_00_2 = {72 65 77 61 72 64 2f 6d 79 6d 69 6c 65 2f 6d 79 6d 69 6c 65 30 31 2f 75 70 64 61 74 65 5f 64 6c 6c 2e 70 68 70 } //01 00 
		$a_00_3 = {63 6c 73 69 64 5f 6d 79 6d 69 6c 65 5f 30 31 2e 78 6d 6c } //00 00 
	condition:
		any of ($a_*)
 
}