
rule Trojan_Win32_Droidpak_A{
	meta:
		description = "Trojan:Win32/Droidpak.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {00 5c 43 72 61 69 6e 69 6e 67 41 70 6b 43 6f 6e 66 69 67 5c 41 56 2d 63 64 6b 2e 61 70 6b 00 00 } //01 00 
		$a_00_1 = {00 44 45 56 49 43 45 3a 31 00 00 00 00 69 63 6f 6e 66 69 67 2e 74 78 74 00 } //01 00 
		$a_03_2 = {69 6e 73 74 61 6c 6c 20 25 73 00 00 00 90 02 0f 2e 61 70 6b 90 02 04 61 64 62 2e 65 78 65 00 62 65 67 69 6e 20 66 69 6e 64 20 62 7a 20 70 61 74 68 90 00 } //00 00 
		$a_00_3 = {5d } //04 00 
	condition:
		any of ($a_*)
 
}