
rule Trojan_BAT_Kilim_B{
	meta:
		description = "Trojan:BAT/Kilim.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {46 6f 72 6d 31 5f 4c 6f 61 64 } //01 00  Form1_Load
		$a_00_1 = {72 65 63 61 6c 6c 69 6e 67 73 79 73 74 65 6d } //01 00  recallingsystem
		$a_00_2 = {62 00 61 00 63 00 6b 00 67 00 72 00 6f 00 75 00 6e 00 64 00 2e 00 6a 00 73 00 } //01 00  background.js
		$a_00_3 = {6d 00 61 00 6e 00 69 00 66 00 65 00 73 00 74 00 2e 00 6a 00 73 00 6f 00 6e 00 } //02 00  manifest.json
		$a_00_4 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 41 00 64 00 6f 00 62 00 65 00 46 00 6c 00 61 00 73 00 68 00 50 00 6c 00 61 00 79 00 65 00 72 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //02 00  \System32\AdobeFlashPlayer\svchost.exe
		$a_03_5 = {13 0e 11 0e 8e 69 16 fe 02 16 fe 01 13 11 11 11 2d 28 00 16 13 0f 2b 13 00 11 0e 11 0f 9a 6f 90 01 02 00 0a 00 00 11 0f 17 58 13 0f 11 0f 11 0e 8e 69 fe 04 13 11 11 11 2d df 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}