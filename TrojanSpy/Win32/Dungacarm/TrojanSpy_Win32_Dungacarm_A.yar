
rule TrojanSpy_Win32_Dungacarm_A{
	meta:
		description = "TrojanSpy:Win32/Dungacarm.A,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {62 00 6f 00 74 00 5f 00 90 02 04 5c 00 63 00 61 00 63 00 61 00 5f 00 62 00 6f 00 74 00 5f 00 90 00 } //05 00 
		$a_01_1 = {63 00 61 00 72 00 61 00 6d 00 61 00 6e 00 64 00 75 00 6e 00 67 00 61 00 } //05 00  caramandunga
		$a_01_2 = {63 00 61 00 6b 00 69 00 74 00 61 00 72 00 6c 00 7a 00 2e 00 75 00 73 00 2f 00 31 00 2f 00 63 00 6f 00 6e 00 74 00 61 00 64 00 6f 00 72 00 2e 00 70 00 68 00 70 00 } //05 00  cakitarlz.us/1/contador.php
		$a_01_3 = {65 00 73 00 70 00 65 00 72 00 61 00 6d 00 65 00 72 00 6c 00 7a 00 2e 00 75 00 73 00 2f 00 31 00 2f 00 61 00 62 00 2e 00 70 00 68 00 70 00 } //05 00  esperamerlz.us/1/ab.php
		$a_01_4 = {76 00 65 00 79 00 64 00 69 00 6c 00 65 00 6f 00 6b 00 2e 00 63 00 6f 00 2e 00 75 00 6b 00 2f 00 31 00 2f 00 61 00 62 00 2e 00 70 00 68 00 70 00 } //05 00  veydileok.co.uk/1/ab.php
		$a_01_5 = {5c 00 75 00 70 00 67 00 72 00 61 00 74 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //00 00  \upgrates.exe
		$a_00_6 = {80 10 00 00 c9 } //42 fb 
	condition:
		any of ($a_*)
 
}