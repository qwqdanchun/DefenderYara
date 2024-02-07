
rule Worm_Win32_Heoyon_A{
	meta:
		description = "Worm:Win32/Heoyon.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0c 00 0a 00 00 05 00 "
		
	strings :
		$a_01_0 = {31 1f 83 c7 04 e2 f9 5f b8 ff ff ff ff 47 3b 07 75 fb 83 c7 04 ff e7 } //05 00 
		$a_01_1 = {33 c9 33 c0 8a 04 39 3c 00 74 09 8a 04 30 88 04 39 41 eb f0 } //01 00 
		$a_01_2 = {b8 ef cd ab 89 c1 e9 02 31 07 83 c7 04 e2 f9 } //01 00 
		$a_01_3 = {c1 e9 02 b8 89 ab cd ef 31 07 83 c7 04 e2 f9 } //01 00 
		$a_01_4 = {5c 77 69 6e 33 32 69 6e 69 2e 65 78 65 00 } //01 00 
		$a_01_5 = {49 00 6e 00 69 00 74 00 69 00 61 00 6c 00 69 00 7a 00 65 00 20 00 57 00 69 00 6e 00 33 00 32 00 } //01 00  Initialize Win32
		$a_01_6 = {5c 73 79 73 74 69 6d 65 2e 65 78 65 00 } //01 00 
		$a_01_7 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 57 33 32 49 5c 55 70 64 61 74 65 } //01 00  SOFTWARE\Microsoft\Windows\W32I\Update
		$a_01_8 = {5c 6e 65 74 6c 6f 67 2e 64 61 74 00 } //01 00 
		$a_01_9 = {6f 70 65 6e 66 6c 61 73 68 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}