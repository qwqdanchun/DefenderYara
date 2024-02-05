
rule Trojan_Win32_Riberow_A{
	meta:
		description = "Trojan:Win32/Riberow.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {7e 1c 8b c6 99 f7 f9 8b 44 24 18 8a 14 02 8a 04 1e 32 d0 80 f2 96 88 14 1e 46 3b f5 7c e4 } //01 00 
		$a_01_1 = {7e 17 8b 54 24 14 8a 44 24 18 2b f2 8b fd 8a 0c 16 32 c8 88 0a 42 4f 75 f5 } //01 00 
		$a_03_2 = {6a 01 52 ff 15 90 01 02 40 00 8b 35 90 01 02 40 00 68 90 01 03 00 ff d6 85 c0 74 f5 8b 85 30 06 00 00 bf 60 f2 41 00 85 c0 75 05 90 00 } //01 00 
		$a_01_3 = {69 63 6f 6e 70 6f 70 2e 64 6c 6c 00 43 68 65 63 6b 43 6f 6e 6e 65 63 74 69 6f 6e 41 6e 64 47 65 74 49 50 00 53 77 69 6e 64 6c 65 57 65 62 42 72 6f 77 73 65 72 00 55 73 65 54 68 69 73 43 6f 64 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}