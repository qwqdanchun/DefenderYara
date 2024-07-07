
rule TrojanSpy_Win32_Banker_VCV{
	meta:
		description = "TrojanSpy:Win32/Banker.VCV,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 08 00 00 "
		
	strings :
		$a_01_0 = {43 00 4f 00 44 00 49 00 47 00 4f 00 54 00 4b 00 3a 00 2e 00 2e 00 2e 00 2e 00 2e 00 2e 00 3a 00 20 00 } //1 CODIGOTK:......: 
		$a_01_1 = {6e 00 61 00 69 00 72 00 65 00 70 00 78 00 45 00 20 00 61 00 73 00 61 00 72 00 65 00 53 00 } //1 nairepxE asareS
		$a_01_2 = {6f 00 73 00 73 00 65 00 63 00 61 00 20 00 6f 00 20 00 6f 00 64 00 6e 00 61 00 69 00 63 00 69 00 6e 00 69 00 20 00 2c 00 65 00 64 00 72 00 61 00 75 00 67 00 41 00 } //1 osseca o odnaicini ,edraugA
		$a_01_3 = {6f 00 63 00 6e 00 61 00 62 00 20 00 6d 00 75 00 20 00 65 00 75 00 71 00 20 00 73 00 69 00 61 00 6d 00 20 00 65 00 64 00 65 00 70 00 20 00 61 00 64 00 69 00 76 00 20 00 41 00 } //1 ocnab mu euq siam edep adiv A
		$a_01_4 = {6b 00 63 00 61 00 6c 00 42 00 20 00 64 00 72 00 61 00 43 00 72 00 65 00 74 00 73 00 61 00 4d 00 } //1 kcalB draCretsaM
		$a_01_5 = {43 00 69 00 74 00 69 00 62 00 61 00 6e 00 6b 00 } //1 Citibank
		$a_01_6 = {30 00 36 00 33 00 20 00 6f 00 76 00 69 00 56 00 } //1 063 oviV
		$a_01_7 = {2e 00 77 00 77 00 77 00 2f 00 2f 00 3a 00 70 00 74 00 74 00 68 00 } //1 .www//:ptth
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=7
 
}