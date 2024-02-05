
rule Trojan_Win32_Hocomrac_A{
	meta:
		description = "Trojan:Win32/Hocomrac.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 07 00 00 03 00 "
		
	strings :
		$a_01_0 = {60 83 7d 18 03 74 14 83 7d 18 04 74 0e 83 7d 18 02 74 08 83 7d 18 05 74 02 eb 65 } //02 00 
		$a_01_1 = {99 ac 8a c8 3c 0f 74 0f 66 81 7e ff cd 20 75 0a 46 ad } //02 00 
		$a_01_2 = {83 e8 05 03 5d f8 c7 03 e9 00 00 00 43 89 03 } //01 00 
		$a_01_3 = {2d 43 68 6f 63 6f 63 72 65 61 6d 7d 00 } //01 00 
		$a_01_4 = {24 24 63 6f 6e 66 69 67 00 } //01 00 
		$a_01_5 = {5c 73 76 68 6f 73 74 2e 64 6c 6c 00 } //01 00 
		$a_01_6 = {5c 73 76 68 6f 73 74 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}