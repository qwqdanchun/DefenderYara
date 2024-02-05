
rule Trojan_Win32_Startpage_HE{
	meta:
		description = "Trojan:Win32/Startpage.HE,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {83 fa 01 75 07 68 90 01 04 eb 1d 83 fa 03 75 07 68 90 01 04 eb 11 83 fa 04 75 07 68 90 01 04 eb 05 90 00 } //01 00 
		$a_00_1 = {67 63 6d 63 79 2e 64 6c 6c 00 } //01 00 
		$a_00_2 = {6c 65 78 70 6c 6f 72 65 72 2e 69 6e 69 } //02 00 
		$a_01_3 = {8b 4d 1c 41 8b c1 89 4d 1c 83 f8 18 73 31 68 e8 03 00 00 6a 40 } //00 00 
	condition:
		any of ($a_*)
 
}