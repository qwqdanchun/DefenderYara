
rule Trojan_WinNT_Bancos_G{
	meta:
		description = "Trojan:WinNT/Bancos.G,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {89 46 50 8b 46 60 c6 46 20 00 c7 46 08 04 04 00 00 83 e8 24 c6 00 06 89 78 14 8b 4d fc 89 48 18 89 58 04 c7 40 08 0d 00 00 00 8b 4d fc 89 48 0c 8b 46 60 } //01 00 
		$a_01_1 = {5c 00 41 00 52 00 51 00 55 00 49 00 56 00 7e 00 31 00 5c 00 47 00 62 00 50 00 6c 00 75 00 67 00 69 00 6e 00 5c 00 67 00 62 00 } //01 00  \ARQUIV~1\GbPlugin\gb
		$a_01_2 = {5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 67 00 62 00 70 00 6b 00 6d 00 2e 00 73 00 79 00 73 00 } //00 00  \WINDOWS\system32\drivers\gbpkm.sys
	condition:
		any of ($a_*)
 
}