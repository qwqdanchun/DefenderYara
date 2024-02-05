
rule TrojanSpy_Win32_Bancos_AJD{
	meta:
		description = "TrojanSpy:Win32/Bancos.AJD,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4b 37 39 6c 54 63 62 61 50 4e 38 7a 4b 72 35 43 4a 71 6e 35 48 34 38 6b 43 4a 6a 47 4f 4e 44 70 54 73 7a 6f 50 33 72 70 52 63 57 6e 43 33 38 6d 43 70 30 78 4b 36 4c 6f 53 73 62 70 54 32 31 4a 50 4d 44 72 53 63 62 71 55 49 31 39 52 63 50 6c 46 4c 48 6f 54 4d 4b 78 4c 4e 44 62 53 59 31 39 48 33 72 75 55 36 38 70 55 37 57 78 49 4d 76 66 54 36 62 58 52 32 31 33 4f 4e 48 58 52 36 7a 64 46 4e 58 75 4f 5a 44 75 55 33 6a 34 4f 4e 48 58 38 35 44 6c 54 4e 39 5a 50 4a 71 6f 43 4a 4f 6b 43 5a 47 72 42 5a 34 76 43 6f 75 6f 43 4a 30 00 } //01 00 
		$a_01_1 = {49 4e 53 45 52 54 20 49 4e 54 4f 20 54 41 42 45 4c 41 32 33 20 28 4e 4d 31 2c 20 4e 4d 32 2c 20 53 44 29 20 56 41 4c 55 45 53 20 28 27 00 00 00 } //01 00 
		$a_00_2 = {20 24 20 2a 5f 4e 4f 56 4f 5f } //01 00 
		$a_01_3 = {8b 45 f0 c1 e0 06 03 d8 89 5d f0 83 c7 06 83 ff 08 7c 48 83 ef 08 8b cf 8b 5d f0 d3 eb 8b cf b8 01 00 00 00 d3 e0 50 8b 45 f0 5a 8b ca 99 f7 f9 89 55 f0 81 e3 ff 00 00 80 79 08 4b 81 cb 00 ff } //00 00 
	condition:
		any of ($a_*)
 
}