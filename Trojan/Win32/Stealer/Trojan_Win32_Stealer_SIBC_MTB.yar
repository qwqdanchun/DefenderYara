
rule Trojan_Win32_Stealer_SIBC_MTB{
	meta:
		description = "Trojan:Win32/Stealer.SIBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {4d 65 67 61 20 54 72 61 6e 73 6c 61 74 6f 72 } //01 00  Mega Translator
		$a_03_1 = {ba 01 00 00 00 a1 90 01 04 8b 38 ff 57 90 01 01 8b 85 90 01 04 8b 16 0f b6 7c 10 ff a1 90 01 04 e8 90 01 04 ba 90 01 04 2b d0 52 a1 90 01 04 e8 90 01 04 5a 92 8b ca 99 f7 f9 03 fa 8b d7 8d 85 90 01 04 e8 90 01 04 8b 95 90 1b 08 b8 90 01 04 e8 90 01 04 ff 06 ff 4d 90 01 01 75 90 00 } //01 00 
		$a_03_2 = {0f b7 70 06 4e 85 f6 0f 8c 90 01 04 46 33 db 90 02 10 29 d8 8d 04 18 8d 04 9b 8b 55 90 01 01 8b 7c c2 08 90 02 10 29 d8 8d 04 18 8d 04 9b 8b 55 90 1b 02 8b 44 c2 10 89 45 90 01 01 90 02 10 29 d8 8d 04 18 6a 04 68 00 10 00 00 57 8d 04 9b 8b 55 90 1b 02 8b 44 c2 0c 03 45 e4 50 e8 90 01 04 89 45 90 01 01 90 02 10 29 d8 8d 04 18 8d 04 9b 8b 55 90 1b 02 8b 44 c2 14 03 45 b0 8b 55 90 1b 09 8b 4d 90 1b 05 e8 90 01 04 43 4e 0f 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}