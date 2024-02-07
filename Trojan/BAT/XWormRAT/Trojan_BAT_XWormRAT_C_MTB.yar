
rule Trojan_BAT_XWormRAT_C_MTB{
	meta:
		description = "Trojan:BAT/XWormRAT.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,12 00 12 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 00 72 00 6f 00 6f 00 74 00 5c 00 53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 43 00 65 00 6e 00 74 00 65 00 72 00 32 00 } //02 00  \root\SecurityCenter2
		$a_01_1 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //02 00  Select * from AntivirusProduct
		$a_01_2 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 73 00 20 00 2f 00 74 00 20 00 30 00 } //02 00  shutdown.exe /f /s /t 0
		$a_01_3 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2f 00 66 00 20 00 2f 00 72 00 20 00 2f 00 74 00 20 00 30 00 } //02 00  shutdown.exe /f /r /t 0
		$a_01_4 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 2e 00 65 00 78 00 65 00 20 00 2d 00 4c 00 } //02 00  shutdown.exe -L
		$a_01_5 = {2d 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 50 00 6f 00 6c 00 69 00 63 00 79 00 20 00 42 00 79 00 70 00 61 00 73 00 73 00 20 00 2d 00 46 00 69 00 6c 00 65 00 } //02 00  -ExecutionPolicy Bypass -File
		$a_01_6 = {5c 00 62 00 28 00 62 00 63 00 31 00 7c 00 5b 00 31 00 33 00 5d 00 29 00 5b 00 61 00 2d 00 7a 00 41 00 2d 00 48 00 4a 00 2d 00 4e 00 50 00 2d 00 5a 00 30 00 2d 00 39 00 5d 00 7b 00 32 00 36 00 2c 00 34 00 35 00 7d 00 5c 00 62 00 } //02 00  \b(bc1|[13])[a-zA-HJ-NP-Z0-9]{26,45}\b
		$a_01_7 = {54 00 5b 00 41 00 2d 00 5a 00 61 00 2d 00 7a 00 31 00 2d 00 39 00 5d 00 7b 00 33 00 33 00 7d 00 } //02 00  T[A-Za-z1-9]{33}
		$a_01_8 = {5c 00 62 00 28 00 30 00 78 00 29 00 5b 00 61 00 2d 00 7a 00 41 00 2d 00 48 00 4a 00 2d 00 4e 00 50 00 2d 00 5a 00 30 00 2d 00 39 00 5d 00 7b 00 34 00 30 00 2c 00 34 00 35 00 7d 00 5c 00 62 00 } //00 00  \b(0x)[a-zA-HJ-NP-Z0-9]{40,45}\b
	condition:
		any of ($a_*)
 
}