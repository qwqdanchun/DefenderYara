
rule Trojan_Win32_Mafiat{
	meta:
		description = "Trojan:Win32/Mafiat,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {53 56 57 89 c3 89 d6 8b 79 fc 8b 56 fc 01 fa f7 c2 00 00 00 c0 75 52 39 ce 74 41 e8 90 01 04 89 f0 8b 4e fc 6a 00 66 83 7e f6 02 74 0f 89 c2 89 e0 e8 90 01 04 8b 04 24 8b 48 fc 8b 13 d1 e7 01 fa d1 e1 e8 90 01 04 89 e0 8b 10 85 d2 74 05 e8 90 01 04 58 90 00 } //01 00 
		$a_02_1 = {8b d8 80 7b 28 00 75 08 8b 43 20 89 04 24 eb 2f 8b cc 8b d6 8b c3 8b 28 ff 95 90 01 04 84 c0 74 1d 0f b6 43 29 2c 01 72 26 fe c8 74 02 eb 0f 8b 15 64 bb 41 00 33 c9 8b c3 90 00 } //01 00 
		$a_00_2 = {6b 00 6b 00 69 00 6c 00 6c 00 20 00 2d 00 66 00 20 00 2d 00 69 00 6d 00 20 00 66 00 69 00 } //01 00  kkill -f -im fi
		$a_00_3 = {64 00 65 00 6c 00 20 00 2a 00 2e 00 62 00 } //01 00  del *.b
		$a_00_4 = {74 00 20 00 28 00 67 00 6f 00 74 00 6f 00 20 00 6c 00 } //01 00  t (goto l
		$a_00_5 = {64 00 20 00 4d 00 6f 00 7a 00 69 00 6c 00 6c 00 } //00 00  d Mozill
	condition:
		any of ($a_*)
 
}