
rule Trojan_Win32_Surpwall_A{
	meta:
		description = "Trojan:Win32/Surpwall.A,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 20 42 40 00 64 ff 35 00 00 00 00 8b 44 24 10 89 6c 24 10 8d 6c 24 10 2b e0 53 56 57 a1 04 40 42 00 31 45 fc 33 c5 50 89 65 e8 ff 75 f8 8b 45 fc c7 45 fc fe ff ff ff 89 45 f8 8d 45 f0 64 a3 00 00 00 00 c3 } //01 00 
		$a_01_1 = {8b 0d 0c 4e 42 00 3b d8 75 04 3b ca 74 12 0f b7 c5 99 2b c3 1b d1 2b c6 1b d7 8b f0 8b fa eb 09 8b d6 6b d2 55 8b eb 2b ea 0f b7 c5 83 f8 13 74 39 83 f8 7c 74 26 } //00 00 
	condition:
		any of ($a_*)
 
}