
rule Trojan_BAT_NjRat_NEDL_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEDL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0a 16 0b 2b 53 06 07 9a 0c 08 6f 90 01 01 00 00 0a 0d 16 13 04 2b 38 09 11 04 9a 13 05 11 05 6f 90 01 01 00 00 0a 72 90 01 01 00 00 70 03 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 2c 13 08 6f 90 01 01 00 00 0a 11 05 90 00 } //02 00 
		$a_01_1 = {43 6c 69 65 6e 74 2e 65 78 65 } //02 00  Client.exe
		$a_01_2 = {54 00 6c 00 6c 00 42 00 54 00 69 00 42 00 44 00 51 00 56 00 51 00 3d 00 } //02 00  TllBTiBDQVQ=
		$a_01_3 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //02 00  WScript.Shell
		$a_01_4 = {6e 00 6f 00 74 00 65 00 70 00 61 00 64 00 2e 00 6c 00 6e 00 6b 00 } //02 00  notepad.lnk
		$a_01_5 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 } //00 00  powershell.exe
	condition:
		any of ($a_*)
 
}