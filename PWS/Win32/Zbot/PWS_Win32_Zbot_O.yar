
rule PWS_Win32_Zbot_O{
	meta:
		description = "PWS:Win32/Zbot.O,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {4d 5a 00 00 0b 02 00 01 62 74 6e 32 90 01 34 5e 7d 66 7d 28 40 19 8b 4b 8b 5b 8a 4d 8f 45 8a 4f 57 35 9c 3b 60 2d 9b 2d 67 24 a6 2c 5e 7d 66 90 07 0c 01 2e 73 74 79 6c 71 7a 00 90 01 1f e0 2e 6e 6d 6a 00 90 01 23 2e 70 73 78 69 74 00 90 01 20 c0 2e 64 73 6e 00 90 07 17 02 71 11 18 00 d2 c4 18 00 5f dc 17 ff 16 c4 cc 99 83 17 28 56 94 53 4d e4 70 97 32 2c 71 6f 18 74 71 b9 1b fd 70 20 97 00 d8 41 8a 00 d3 49 eb 11 6b 0b f6 99 75 50 17 aa 82 ec e5 ef 83 40 13 7f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}