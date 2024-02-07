
rule PWS_Win32_Emptybase_A{
	meta:
		description = "PWS:Win32/Emptybase.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {89 44 24 10 75 e9 38 18 74 07 88 18 40 89 44 24 10 6a 04 68 90 01 02 00 10 57 ff 15 90 01 02 00 10 85 c0 75 03 83 c7 04 90 00 } //01 00 
		$a_01_1 = {49 45 53 63 72 47 72 61 62 62 65 72 00 } //01 00 
		$a_01_2 = {49 45 4d 6f 64 00 } //01 00  䕉潍d
		$a_01_3 = {49 6d 61 67 65 22 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 73 63 72 65 65 6e 2e 6c 7a 77 22 } //01 00  Image"; filename="screen.lzw"
		$a_01_4 = {67 65 74 5f 75 72 6c 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}