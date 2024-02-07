
rule Trojan_Win32_Vefisi_gen_dll{
	meta:
		description = "Trojan:Win32/Vefisi.gen.dll!A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {3f 69 64 3d 25 73 26 74 69 6d 65 3d 25 73 } //01 00  ?id=%s&time=%s
		$a_01_1 = {3f 69 64 3d 25 73 26 43 6f 75 6e 74 3d 25 64 } //01 00  ?id=%s&Count=%d
		$a_01_2 = {3f 69 64 3d 25 73 26 63 61 62 3d 25 73 } //01 00  ?id=%s&cab=%s
		$a_01_3 = {3f 69 64 3d 25 73 26 74 3d 25 73 26 6d 61 63 3d 25 73 } //01 00  ?id=%s&t=%s&mac=%s
		$a_01_4 = {70 6e 67 3f 69 64 3d 25 73 26 74 3d 25 73 } //01 00  png?id=%s&t=%s
		$a_01_5 = {57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 00 00 25 73 5c 25 73 2e 6c 6e } //01 00 
		$a_01_6 = {5c 4d 69 63 72 6f 73 6f 66 74 00 00 25 30 34 64 } //01 00 
		$a_01_7 = {5c 4d 69 63 72 6f 73 6f 66 74 00 25 30 34 64 } //01 00 
		$a_01_8 = {25 73 5c 6c 6f 67 2e 69 6e 69 00 00 25 73 5c } //01 00 
		$a_01_9 = {6c 6f 67 2e 69 6e 69 00 56 65 72 73 69 6f 6e } //01 00 
		$a_01_10 = {5b 56 65 72 73 69 6f 6e 5d 0a 00 } //00 00 
	condition:
		any of ($a_*)
 
}