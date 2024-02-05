
rule Trojan_Win32_Wirond_A{
	meta:
		description = "Trojan:Win32/Wirond.A,SIGNATURE_TYPE_PEHSTR,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {c7 44 24 24 53 00 65 00 c7 44 24 28 72 00 76 00 c7 44 24 2c 69 00 63 00 c7 44 24 30 65 00 00 00 } //01 00 
		$a_01_1 = {c7 44 24 14 53 00 52 00 c7 44 24 18 41 00 41 00 c7 44 24 1c 31 00 00 00 ff d0 } //01 00 
		$a_01_2 = {c7 45 e0 77 00 69 00 c7 45 e4 6e 00 77 00 c7 45 e8 6f 00 72 00 c7 45 ec 64 00 30 00 c7 45 f0 31 00 36 00 } //01 00 
		$a_01_3 = {c7 45 e0 6f 00 72 00 c7 45 e4 64 00 30 00 c7 45 e8 31 00 36 00 c7 45 ec 2e 00 65 00 c7 45 f0 78 00 65 00 } //00 00 
		$a_01_4 = {00 67 } //16 00 
	condition:
		any of ($a_*)
 
}