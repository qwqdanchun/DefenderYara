
rule Trojan_BAT_Hiutex_gen_A{
	meta:
		description = "Trojan:BAT/Hiutex.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {56 00 61 00 6c 00 75 00 65 00 66 00 61 00 6b 00 65 00 45 00 72 00 72 00 6f 00 72 00 54 00 69 00 74 00 6c 00 65 00 } //01 00  ValuefakeErrorTitle
		$a_01_1 = {56 00 61 00 6c 00 75 00 65 00 66 00 61 00 6b 00 65 00 45 00 72 00 72 00 6f 00 72 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 } //01 00  ValuefakeErrorMessage
		$a_01_2 = {42 00 4f 00 54 00 20 00 42 00 49 00 4e 00 } //01 00  BOT BIN
		$a_01_3 = {73 00 6f 00 63 00 6b 00 73 00 35 00 2e 00 70 00 68 00 70 00 } //01 00  socks5.php
		$a_01_4 = {26 62 6f 74 76 65 72 3d } //01 00  &botver=
		$a_01_5 = {26 63 6f 75 6e 74 72 79 3d } //01 00  &country=
		$a_01_6 = {26 77 69 6e 76 65 72 3d } //01 00  &winver=
		$a_01_7 = {77 69 6e 33 32 5f 6c 6f 67 69 63 61 6c 64 69 73 6b 2e 64 65 76 69 63 65 69 64 3d 22 00 } //00 00 
	condition:
		any of ($a_*)
 
}