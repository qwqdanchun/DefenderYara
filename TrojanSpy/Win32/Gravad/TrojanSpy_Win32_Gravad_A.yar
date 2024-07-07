
rule TrojanSpy_Win32_Gravad_A{
	meta:
		description = "TrojanSpy:Win32/Gravad.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {5c 00 43 00 61 00 70 00 74 00 75 00 72 00 61 00 20 00 41 00 56 00 49 00 5f 00 6f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 5c 00 4d 00 65 00 43 00 6f 00 6e 00 74 00 65 00 5f 00 67 00 72 00 61 00 76 00 61 00 64 00 6f 00 72 00 } //1 \Captura AVI_original\MeConte_gravador
		$a_01_1 = {65 00 73 00 70 00 65 00 72 00 61 00 6e 00 64 00 6f 00 20 00 63 00 6f 00 6e 00 66 00 69 00 72 00 6d 00 61 00 e7 00 e3 00 6f 00 20 00 64 00 65 00 20 00 70 00 61 00 67 00 61 00 6d 00 65 00 6e 00 74 00 6f 00 00 00 } //1
		$a_01_2 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 62 00 63 00 6b 00 2e 00 65 00 78 00 65 00 00 00 } //1
		$a_00_3 = {6b 65 79 6c 6f 67 67 65 72 00 00 00 4d 6f 64 75 6c 65 31 00 63 44 69 62 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}