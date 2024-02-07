
rule Trojan_Win64_BazarLoader_D_MTB{
	meta:
		description = "Trojan:Win64/BazarLoader.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,15 00 15 00 07 00 00 05 00 "
		
	strings :
		$a_01_0 = {43 61 6e 6e 6f 74 20 72 65 61 64 20 72 65 6d 6f 74 65 20 50 45 42 3a 20 25 6c 75 } //05 00  Cannot read remote PEB: %lu
		$a_01_1 = {50 00 72 00 6f 00 63 00 65 00 73 00 73 00 20 00 44 00 6f 00 70 00 70 00 65 00 6c 00 67 00 61 00 6e 00 67 00 69 00 6e 00 67 00 20 00 74 00 65 00 73 00 74 00 21 00 } //05 00  Process Doppelganging test!
		$a_01_2 = {43 6f 6f 6b 69 65 3a 20 67 72 6f 75 70 3d 66 69 76 65 } //05 00  Cookie: group=five
		$a_01_3 = {25 73 2e 62 61 7a 61 72 } //01 00  %s.bazar
		$a_01_4 = {68 74 74 70 73 3a 2f 2f 31 38 35 2e 36 35 2e 32 30 32 2e 36 32 2f } //01 00  https://185.65.202.62/
		$a_01_5 = {68 74 74 70 73 3a 2f 2f 31 38 35 2e 32 33 34 2e 37 32 2e 32 33 30 2f } //01 00  https://185.234.72.230/
		$a_01_6 = {68 74 74 70 73 3a 2f 2f 31 34 36 2e 31 38 35 2e 32 31 39 2e 31 30 31 2f } //00 00  https://146.185.219.101/
	condition:
		any of ($a_*)
 
}