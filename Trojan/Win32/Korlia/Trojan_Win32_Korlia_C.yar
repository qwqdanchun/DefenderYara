
rule Trojan_Win32_Korlia_C{
	meta:
		description = "Trojan:Win32/Korlia.C,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {f2 ae f7 d1 49 74 22 8a 82 90 01 04 bf 90 1b 00 32 c3 83 c9 ff 88 82 90 1b 00 33 c0 42 f2 ae f7 d1 49 3b d1 72 de 90 00 } //01 00 
		$a_01_1 = {00 62 69 73 6f 6e 61 6c 00 } //01 00 
		$a_01_2 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 74 61 73 6b 73 5c 65 72 72 2e 69 6e 69 00 00 00 00 43 4f 4e 4e 45 43 54 20 25 73 3a 25 64 20 48 54 54 50 2f 31 2e 31 0d 0a } //01 00 
		$a_01_3 = {00 77 6b 6b 6f 25 30 30 } //01 00  眀歫╯〰
		$a_01_4 = {2f 61 2e 61 73 70 3f 69 64 3d 25 73 25 73 00 74 65 6d 70 73 2e 69 6e 69 00 } //00 00 
	condition:
		any of ($a_*)
 
}