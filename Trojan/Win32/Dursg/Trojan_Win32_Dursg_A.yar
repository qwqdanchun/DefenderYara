
rule Trojan_Win32_Dursg_A{
	meta:
		description = "Trojan:Win32/Dursg.A,SIGNATURE_TYPE_PEHSTR,1f 00 1f 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 79 00 61 00 6e 00 64 00 73 00 65 00 61 00 72 00 63 00 68 00 00 00 } //01 00 
		$a_01_1 = {00 00 6e 00 69 00 68 00 65 00 72 00 61 00 64 00 6f 00 6d 00 65 00 6e 00 2e 00 63 00 6f 00 6d 00 00 00 } //01 00 
		$a_01_2 = {39 00 44 00 43 00 44 00 2d 00 37 00 32 00 38 00 32 00 41 00 32 00 44 00 30 00 37 00 38 00 36 00 32 00 } //0a 00  9DCD-7282A2D07862
		$a_01_3 = {47 6c 6f 62 61 6c 5c 4d 69 6c 61 5f 74 65 72 6d } //0a 00  Global\Mila_term
		$a_01_4 = {25 53 26 76 65 72 3d 25 53 26 75 69 64 3d 25 53 } //0a 00  %S&ver=%S&uid=%S
		$a_01_5 = {5c 4d 69 63 72 6f 73 6f 66 74 5c 56 53 55 } //00 00  \Microsoft\VSU
	condition:
		any of ($a_*)
 
}