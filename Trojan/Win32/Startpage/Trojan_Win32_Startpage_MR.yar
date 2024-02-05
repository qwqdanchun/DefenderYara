
rule Trojan_Win32_Startpage_MR{
	meta:
		description = "Trojan:Win32/Startpage.MR,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 08 80 f9 ff 75 0e 80 78 01 25 75 08 8b 40 02 8b 00 c2 90 01 01 00 80 f9 e9 90 00 } //01 00 
		$a_03_1 = {8b 44 24 04 8b 54 24 08 2b d0 83 e9 05 83 ea 05 90 02 01 c6 00 e9 89 50 01 90 00 } //01 00 
		$a_00_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 39 00 36 00 38 00 38 00 2e 00 6c 00 61 00 2f 00 3f 00 } //01 00 
		$a_00_3 = {33 00 36 00 30 00 73 00 65 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}