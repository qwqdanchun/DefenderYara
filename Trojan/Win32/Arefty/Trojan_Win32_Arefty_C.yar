
rule Trojan_Win32_Arefty_C{
	meta:
		description = "Trojan:Win32/Arefty.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {75 1a b8 41 00 00 00 66 89 84 24 90 01 01 00 00 00 b8 42 00 00 00 66 89 84 24 90 01 01 00 00 00 8b 35 90 01 04 8d 84 24 90 01 01 00 00 00 50 6a 00 6a 00 6a 00 ff d6 90 00 } //01 00 
		$a_01_1 = {81 39 2e 72 65 6c 75 08 66 81 79 04 6f 63 74 0d 42 83 c1 28 3b d7 72 e8 e9 } //01 00 
		$a_03_2 = {83 c0 0a 6a 3b 50 e8 90 01 02 00 00 83 c4 0c 8d 84 24 90 01 02 00 00 6a 5c 50 90 00 } //01 00 
		$a_80_3 = {61 76 70 75 69 2e 65 78 65 } //avpui.exe  01 00 
		$a_80_4 = {77 6d 69 61 73 2e 65 78 65 } //wmias.exe  01 00 
		$a_80_5 = {5c 5c 2e 5c 4a 3a } //\\.\J:  00 00 
	condition:
		any of ($a_*)
 
}