
rule Trojan_Win32_Koobface_gen_O{
	meta:
		description = "Trojan:Win32/Koobface.gen!O,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {42 83 c1 04 83 fa 03 72 eb 85 c0 74 07 03 04 b5 } //02 00 
		$a_03_1 = {6a 7c 56 89 01 ff 15 90 01 04 8b f0 83 c4 0c 3b f3 74 90 01 01 46 90 00 } //01 00 
		$a_01_2 = {3f 61 63 74 69 6f 6e 3d 62 69 74 6c 79 } //00 00 
	condition:
		any of ($a_*)
 
}