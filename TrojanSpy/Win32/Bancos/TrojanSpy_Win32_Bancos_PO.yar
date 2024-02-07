
rule TrojanSpy_Win32_Bancos_PO{
	meta:
		description = "TrojanSpy:Win32/Bancos.PO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {67 00 6f 00 6b 00 61 00 72 00 74 00 73 00 72 00 75 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 69 00 6d 00 61 00 67 00 65 00 73 00 2f 00 62 00 61 00 6e 00 67 00 2e 00 70 00 68 00 70 00 } //01 00  gokartsrus.com/images/bang.php
		$a_01_1 = {70 00 72 00 61 00 71 00 75 00 65 00 6d 00 3d 00 64 00 6c 00 6b 00 6f 00 77 00 6e 00 7a 00 38 00 40 00 67 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00  praquem=dlkownz8@gmail.com
		$a_01_2 = {4f 00 20 00 73 00 69 00 74 00 65 00 20 00 22 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 62 00 72 00 61 00 64 00 65 00 73 00 63 00 6f 00 2e 00 63 00 6f 00 6d 00 2e 00 62 00 72 00 22 00 20 00 64 00 69 00 7a 00 3a 00 } //01 00  O site "http://www.bradesco.com.br" diz:
		$a_01_3 = {8b 55 f4 8b 06 8b 08 ff 51 38 8d 45 ec 50 8b 83 f8 05 00 00 8b 0e } //00 00 
	condition:
		any of ($a_*)
 
}