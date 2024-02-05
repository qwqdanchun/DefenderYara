
rule Trojan_WinNT_Adwind_G{
	meta:
		description = "Trojan:WinNT/Adwind.G,SIGNATURE_TYPE_JAVAHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 4c 6f 61 64 53 74 75 62 44 65 63 72 79 70 74 65 64 90 02 80 0b 69 73 44 69 72 65 63 74 6f 72 79 90 02 20 05 77 72 69 74 65 90 02 60 07 72 65 70 6c 61 63 65 90 02 f0 2f 48 61 73 68 4d 61 70 3b 90 02 60 0b 44 65 63 72 79 70 74 53 74 75 62 90 02 40 69 69 69 41 4c 4c 41 54 4f 52 49 78 44 45 4d 4f 78 69 69 69 90 00 } //01 00 
		$a_03_1 = {0c 4c 6f 61 64 50 61 73 73 77 6f 72 64 90 08 ff 02 90 04 04 06 41 2d 5a 61 2d 7a 41 4c 4c 41 54 4f 52 49 78 44 45 4d 4f 78 90 05 40 06 41 2d 5a 61 2d 7a 90 1b 01 90 02 40 90 1b 01 90 02 40 90 04 08 02 69 49 90 00 } //01 00 
		$a_03_2 = {11 6a 41 2a 4c 21 02 36 59 30 4f 6b 4c 21 5a 2c 43 21 90 02 ff 6a 61 76 61 2f 6c 61 6e 67 2f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}