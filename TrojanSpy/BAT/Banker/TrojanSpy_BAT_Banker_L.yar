
rule TrojanSpy_BAT_Banker_L{
	meta:
		description = "TrojanSpy:BAT/Banker.L,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {13 04 11 04 6f ?? ?? ?? ?? 13 06 11 06 73 ?? ?? ?? ?? 13 05 11 05 6f ?? ?? ?? ?? 0d 09 72 ?? ?? ?? ?? 16 28 ?? ?? ?? ?? 16 fe 01 7e ?? ?? ?? ?? 72 ?? ?? ?? ?? 28 ?? ?? ?? ?? 28 ?? ?? ?? ?? 16 fe 01 5f 2c } //1
		$a_00_1 = {75 00 70 00 6c 00 6f 00 61 00 64 00 5f 00 61 00 72 00 71 00 75 00 69 00 76 00 6f 00 73 00 2f 00 73 00 2e 00 70 00 68 00 70 00 } //1 upload_arquivos/s.php
		$a_00_2 = {5b 00 42 00 79 00 20 00 4e 00 31 00 67 00 68 00 37 00 77 00 30 00 6c 00 66 00 5d 00 } //1 [By N1gh7w0lf]
		$a_02_3 = {61 00 76 00 73 00 69 00 6d 00 [0-04] 69 00 6e 00 66 00 65 00 63 00 74 00 65 00 64 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}