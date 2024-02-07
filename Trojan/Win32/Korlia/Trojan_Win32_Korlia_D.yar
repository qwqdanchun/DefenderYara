
rule Trojan_Win32_Korlia_D{
	meta:
		description = "Trojan:Win32/Korlia.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {f2 ae f7 d1 49 74 22 8a 8a 90 01 04 bf 90 1b 00 32 cb 33 c0 88 8a 90 1b 00 83 c9 ff 42 f2 ae f7 d1 49 3b d1 72 de 90 00 } //01 00 
		$a_01_1 = {00 62 69 73 6f 6e 61 6c 00 } //01 00 
		$a_03_2 = {63 3a 5c 77 69 6e 64 6f 77 73 5c 74 61 73 6b 73 5c 65 72 72 90 02 07 00 43 4f 4e 4e 45 43 54 20 25 73 3a 25 64 20 48 54 54 50 2f 31 2e 31 0d 0a 90 00 } //01 00 
		$a_01_3 = {00 77 6b 6b 6f 25 30 30 } //01 00  眀歫╯〰
		$a_01_4 = {73 6f 63 6b 73 3d 00 00 67 6f 70 68 65 72 3d 00 68 74 74 70 73 3d 00 00 68 74 74 70 3d 00 00 00 66 74 70 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}