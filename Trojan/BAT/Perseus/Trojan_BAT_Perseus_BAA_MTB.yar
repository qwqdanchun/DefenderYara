
rule Trojan_BAT_Perseus_BAA_MTB{
	meta:
		description = "Trojan:BAT/Perseus.BAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 07 00 00 02 00 "
		
	strings :
		$a_03_0 = {09 08 11 04 8f 90 01 01 00 00 01 72 87 0e 00 70 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 26 11 04 17 58 13 04 11 04 08 8e 69 32 da 90 00 } //01 00 
		$a_01_1 = {6a 00 69 00 64 00 31 00 2d 00 33 00 58 00 73 00 71 00 78 00 43 00 56 00 33 00 49 00 59 00 4b 00 4f 00 62 00 77 00 40 00 6a 00 65 00 74 00 70 00 61 00 63 00 6b 00 2e 00 78 00 70 00 69 00 } //01 00  jid1-3XsqxCV3IYKObw@jetpack.xpi
		$a_01_2 = {73 00 74 00 61 00 74 00 69 00 63 00 2f 00 43 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  static/Cin.exe
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00  DownloadFile
		$a_01_4 = {53 6c 65 65 70 } //01 00  Sleep
		$a_01_5 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_6 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 49 00 43 00 4e 00 53 00 5c 00 42 00 54 00 } //00 00  Software\ICNS\BT
	condition:
		any of ($a_*)
 
}