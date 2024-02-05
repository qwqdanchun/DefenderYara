
rule Trojan_Win32_Droidpak_B{
	meta:
		description = "Trojan:Win32/Droidpak.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 72 61 69 6e 69 6e 67 41 70 6b 43 6f 6e 66 69 67 5c 00 } //01 00 
		$a_01_1 = {44 45 56 49 43 45 3a 31 00 00 00 00 69 63 6f 6e 66 69 67 2e 74 78 74 00 } //01 00 
		$a_01_2 = {77 72 69 74 65 20 64 6f 77 6e 6c 6f 61 64 20 66 69 6c 65 20 73 75 63 63 65 73 73 00 } //01 00 
		$a_01_3 = {2a 2e 61 70 6b 00 00 00 00 61 64 62 2e 65 78 65 00 65 6e 64 2e 2e 00 } //00 00 
	condition:
		any of ($a_*)
 
}