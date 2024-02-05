
rule Trojan_Win32_Hilasy_B{
	meta:
		description = "Trojan:Win32/Hilasy.B,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 61 00 73 00 79 00 6e 00 63 00 6c 00 61 00 79 00 65 00 72 00 62 00 6f 00 75 00 6e 00 64 00 61 00 72 00 79 00 64 00 6e 00 00 00 } //01 00 
		$a_03_1 = {3b c1 77 0f 51 89 47 90 01 01 56 83 c7 90 01 01 57 ff 15 90 01 04 8b 45 90 01 01 ff b0 90 01 02 00 00 ff 15 90 01 04 53 ff 15 90 01 04 6a 02 90 09 05 00 b9 00 90 90 01 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}