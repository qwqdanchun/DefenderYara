
rule Trojan_BAT_VanillaRat_CXJK_MTB{
	meta:
		description = "Trojan:BAT/VanillaRat.CXJK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 44 65 62 75 67 5c 56 61 6e 69 6c 6c 61 52 61 74 2e 70 64 62 } //01 00  \Debug\VanillaRat.pdb
		$a_01_1 = {52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00  Remote Shell
		$a_01_2 = {50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 20 00 56 00 69 00 65 00 77 00 65 00 72 00 } //01 00  Password Viewer
		$a_01_3 = {41 00 75 00 64 00 69 00 6f 00 20 00 52 00 65 00 63 00 6f 00 72 00 64 00 65 00 72 00 } //01 00  Audio Recorder
		$a_01_4 = {4b 00 65 00 79 00 6c 00 6f 00 67 00 67 00 65 00 72 00 } //01 00  Keylogger
		$a_01_5 = {52 00 65 00 6d 00 6f 00 74 00 65 00 20 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 20 00 56 00 69 00 65 00 77 00 65 00 72 00 } //01 00  Remote Desktop Viewer
		$a_01_6 = {62 00 74 00 6e 00 52 00 65 00 73 00 74 00 61 00 72 00 74 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00  btnRestartShell
		$a_01_7 = {56 00 61 00 6e 00 69 00 6c 00 6c 00 61 00 52 00 61 00 74 00 } //00 00  VanillaRat
	condition:
		any of ($a_*)
 
}