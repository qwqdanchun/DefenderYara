
rule Trojan_Win32_Startpage_AEN{
	meta:
		description = "Trojan:Win32/Startpage.AEN,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {5c 49 6e 74 65 72 6e 61 74 90 02 04 45 78 70 6c 6f 72 65 72 2e 6f 67 63 22 20 90 03 02 02 2b 68 2b 72 90 00 } //01 00 
		$a_02_1 = {7b 30 41 46 41 43 45 44 31 2d 45 38 32 38 2d 31 31 44 31 2d 39 31 38 37 2d 42 35 33 32 46 31 45 39 35 37 35 44 7d 00 90 01 22 90 02 0f 5c 44 65 73 6b 74 6f 70 2e 69 6e 69 00 90 01 22 90 02 0f 5c 74 61 72 67 65 74 2e 6c 6e 6b 00 68 74 74 70 3a 2f 2f 90 00 } //01 00 
		$a_00_2 = {5c 55 6e 69 6e 73 74 61 6c 6c 5c 33 36 30 b0 b2 c8 ab ce c0 ca bf 00 44 69 73 70 6c 61 79 56 65 72 73 69 6f 6e 00 } //00 00 
	condition:
		any of ($a_*)
 
}