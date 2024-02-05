
rule Trojan_Win32_Servlice_A{
	meta:
		description = "Trojan:Win32/Servlice.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_00_0 = {57 69 6e 64 6f 77 73 20 4d 65 73 73 61 67 65 20 53 65 72 76 6c 63 65 00 } //01 00 
		$a_03_1 = {33 c0 8a 88 90 01 04 30 0c 37 40 83 f8 07 72 f1 83 3d 90 01 04 00 74 03 f6 14 37 90 00 } //01 00 
		$a_00_2 = {78 30 72 62 30 74 00 } //01 00 
		$a_00_3 = {6e 65 74 73 68 20 66 69 72 65 77 61 6c 6c 20 61 64 64 20 61 6c 6c 6f 77 65 64 70 72 6f 67 72 61 6d 20 31 2e 65 78 65 20 31 20 45 4e 41 42 4c 45 00 } //00 00 
		$a_00_4 = {87 10 00 } //00 3b 
	condition:
		any of ($a_*)
 
}