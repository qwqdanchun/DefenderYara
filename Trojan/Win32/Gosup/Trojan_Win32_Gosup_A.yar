
rule Trojan_Win32_Gosup_A{
	meta:
		description = "Trojan:Win32/Gosup.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {2c 72 75 6e 00 90 0a 25 00 72 75 6e 64 6c 6c 33 32 20 22 90 00 } //01 00 
		$a_01_1 = {32 d1 81 e2 ff 00 00 00 8b f2 85 f6 75 08 8b f0 81 e6 ff 00 00 00 8b c7 } //01 00 
		$a_03_2 = {6e 6e 65 77 2e 64 6c 6c 90 01 0a 39 38 37 36 35 90 00 } //01 00 
		$a_03_3 = {5c 4d 6f 7a 69 6c 6c 61 5c 46 69 72 65 66 6f 78 5c 90 01 0b 50 72 6f 66 69 6c 65 73 2e 69 6e 69 00 00 00 00 00 00 00 00 50 61 74 68 00 00 00 00 50 72 6f 66 69 6c 65 30 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}