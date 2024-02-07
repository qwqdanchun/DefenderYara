
rule Trojan_Win32_Dino_A_dha{
	meta:
		description = "Trojan:Win32/Dino.A!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {0f be db c1 c6 07 83 c2 01 33 f3 8a 1a 84 db } //01 00 
		$a_01_1 = {25 00 73 00 20 00 69 00 65 00 20 00 25 00 64 00 20 00 64 00 61 00 79 00 73 00 20 00 25 00 64 00 20 00 68 00 6f 00 75 00 72 00 73 00 20 00 72 00 65 00 6d 00 61 00 69 00 6e 00 20 00 62 00 65 00 66 00 6f 00 72 00 65 00 20 00 75 00 6e 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 } //01 00  %s ie %d days %d hours remain before uninstall
		$a_01_2 = {4c 00 6f 00 67 00 69 00 6e 00 2f 00 44 00 6f 00 6d 00 61 00 69 00 6e 00 20 00 28 00 6f 00 77 00 6e 00 65 00 72 00 29 00 3a 00 20 00 25 00 73 00 2f 00 25 00 73 00 20 00 28 00 25 00 73 00 29 00 } //01 00  Login/Domain (owner): %s/%s (%s)
		$a_01_3 = {53 65 72 76 69 63 65 4d 61 69 6e } //01 00  ServiceMain
		$a_01_4 = {50 73 6d 49 73 41 4e 69 63 65 4d 30 64 75 31 65 57 69 74 68 30 53 75 67 61 72 49 6e 73 69 64 65 } //00 00  PsmIsANiceM0du1eWith0SugarInside
		$a_00_5 = {5d 04 00 00 } //8a 44 
	condition:
		any of ($a_*)
 
}