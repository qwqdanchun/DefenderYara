
rule Trojan_Win32_Brontok_A{
	meta:
		description = "Trojan:Win32/Brontok.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 53 49 20 53 45 4b 41 52 41 4e 47 } //01 00 
		$a_01_1 = {41 50 41 20 4b 41 42 41 52 20 53 45 4d 55 41 4e 59 41 20 4c 41 4d 20 4b 45 4e 41 4c } //01 00 
		$a_01_2 = {44 65 6e 67 61 6e 20 68 6f 72 6d 61 74 20 6b 65 70 61 64 61 20 62 61 70 61 6b 2f 69 62 75 2f 73 61 75 64 61 72 61 20 79 61 6e 67 20 73 61 79 61 20 68 6f 72 6d 61 74 69 20 64 69 20 6b 6f 6d 70 75 74 65 72 20 69 6e 69 2e } //05 00 
		$a_00_3 = {6a 00 c7 45 e0 04 00 02 80 c7 45 d8 0a 00 00 00 89 75 b0 c7 45 a8 08 40 00 00 ff 15 94 11 40 00 } //00 00 
		$a_00_4 = {5d 04 00 00 65 69 } //03 80 
	condition:
		any of ($a_*)
 
}