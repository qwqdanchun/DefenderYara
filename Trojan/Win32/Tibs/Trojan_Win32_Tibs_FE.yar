
rule Trojan_Win32_Tibs_FE{
	meta:
		description = "Trojan:Win32/Tibs.FE,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {66 81 f9 3e 04 } //01 00 
		$a_01_1 = {c1 ca 18 c1 c2 08 } //01 00 
		$a_03_2 = {8d 6c 20 00 83 ed 02 90 03 01 03 e9 83 c5 fd 90 00 } //01 00 
		$a_03_3 = {8d 6c 20 00 83 c5 fe 90 03 01 03 e9 83 c5 fd 90 00 } //01 00 
		$a_03_4 = {83 c5 fe 83 c5 fd 90 03 01 03 e9 66 09 ed 90 00 } //01 00 
		$a_03_5 = {83 ed 02 83 c5 fd 90 03 01 03 e9 66 09 ed 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}