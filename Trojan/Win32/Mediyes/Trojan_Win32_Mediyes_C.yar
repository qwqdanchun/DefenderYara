
rule Trojan_Win32_Mediyes_C{
	meta:
		description = "Trojan:Win32/Mediyes.C,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {26 00 73 00 79 00 73 00 3d 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 2b 00 25 00 64 00 2e 00 25 00 64 00 } //01 00 
		$a_00_1 = {26 00 73 00 79 00 73 00 3d 00 75 00 6e 00 6b 00 6e 00 6f 00 77 00 6e 00 } //01 00 
		$a_01_2 = {85 c0 74 08 83 c7 01 83 ff 0a 75 e3 85 f6 74 16 } //02 00 
		$a_01_3 = {eb 02 8b c5 8a 54 38 ff 30 14 3b 83 c7 01 3b 7e 14 72 ca } //00 00 
	condition:
		any of ($a_*)
 
}