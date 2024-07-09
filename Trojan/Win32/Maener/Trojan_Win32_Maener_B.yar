
rule Trojan_Win32_Maener_B{
	meta:
		description = "Trojan:Win32/Maener.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {52 61 75 6d 2d [0-05] 77 69 74 68 [0-05] 4d 65 } //1
		$a_01_1 = {74 6f 6f 6c 73 2f 72 65 67 77 72 69 74 65 2e 72 61 75 6d 5f 65 6e 63 72 79 70 74 65 64 } //1 tools/regwrite.raum_encrypted
		$a_01_2 = {6d 69 6e 69 6e 67 5f 69 6e 66 6f 00 75 70 64 61 74 65 5f 69 6e 66 6f } //1
		$a_03_3 = {36 34 62 69 74 [0-05] 33 32 62 69 74 } //1
		$a_03_4 = {53 74 6f 70 70 65 72 2d 6d 75 74 65 78 [0-05] 50 47 68 30 62 57 77 3d [0-05] 5c 62 69 6e } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}