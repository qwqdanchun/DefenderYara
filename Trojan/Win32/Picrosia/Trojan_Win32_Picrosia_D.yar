
rule Trojan_Win32_Picrosia_D{
	meta:
		description = "Trojan:Win32/Picrosia.D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b c1 83 e8 20 0f b7 d7 8b ca 33 d2 f7 f1 66 f7 ef 66 05 ef 00 66 25 00 ff 66 83 c0 30 66 89 43 ea 83 c3 20 4e 0f 85 2d ff ff ff } //1
		$a_03_1 = {55 00 53 00 45 00 52 00 4e 00 41 00 4d 00 45 00 [0-12] 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 58 00 50 00 } //1
		$a_03_2 = {69 00 74 00 6d 00 [31 32 33] 00 [0-06] 65 00 78 00 65 } //1
		$a_03_3 = {69 00 74 00 6d 00 [31 32 33] 00 [0-06] 6d 00 70 00 34 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}