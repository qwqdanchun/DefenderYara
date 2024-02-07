
rule PWS_Win32_Zbot_gen_AO{
	meta:
		description = "PWS:Win32/Zbot.gen!AO,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 22 25 73 22 0d 0a 69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 64 00 00 62 00 61 00 74 00 00 00 40 65 63 68 6f 20 6f 66 66 0d 0a 25 73 0d 0a 64 65 6c 20 2f 46 20 22 25 73 22 0d 0a 00 00 00 00 2f 00 63 00 20 00 22 00 } //01 00 
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 67 6f 6f 67 6c 65 2e 63 6f 6d 2f 77 65 62 68 70 } //01 00  http://www.google.com/webhp
		$a_01_2 = {61 00 76 00 61 00 73 00 74 00 21 00 } //01 00  avast!
		$a_01_3 = {4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 } //02 00  Kaspersky
		$a_03_4 = {75 70 64 61 74 65 2e 65 78 65 90 02 10 00 63 6f 6e 66 69 67 2e 62 69 6e 00 90 00 } //01 00 
		$a_01_5 = {25 42 4f 54 49 44 25 00 25 42 4f 54 4e 45 54 25 00 } //01 00 
		$a_01_6 = {47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 25 00 30 00 38 00 58 00 00 00 } //02 00 
		$a_01_7 = {25 42 4f 54 4e 41 4d 45 25 00 } //01 00  䈥呏䅎䕍%
		$a_01_8 = {3f 61 63 74 69 6f 6e 3d 63 66 67 } //01 00  ?action=cfg
		$a_01_9 = {25 30 38 58 25 30 34 58 25 30 34 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 25 30 32 58 } //02 00  %08X%04X%04X%02X%02X%02X%02X%02X
		$a_01_10 = {0f b7 04 4a 83 f8 30 72 05 83 f8 39 76 13 83 f8 41 72 05 83 f8 5a 76 09 83 c0 9f 66 83 f8 19 77 d3 41 3b 4c 24 04 7c d8 b0 01 } //02 00 
		$a_00_11 = {8b d8 39 7c 24 14 75 11 68 ac 18 40 00 83 c8 ff e8 fa eb 01 00 89 44 24 14 8d 74 24 38 e8 83 5c 00 00 a1 80 2e 43 00 ff 74 24 14 89 7c 24 20 89 7c 24 1c 8d 74 24 1c 8d 7c 24 20 89 44 24 44 89 5c 24 4c c7 44 24 64 00 d0 12 00 c7 44 24 60 03 00 00 00 } //02 00 
		$a_01_12 = {8b 78 04 0f b6 18 0f b7 ca 66 0f be 3c 0f 66 33 fb 66 33 fa bb ff 00 00 00 66 23 fb 42 66 89 3c 4e 66 3b 50 02 72 d9 } //01 00 
		$a_03_13 = {a9 e0 01 00 00 0f 84 90 01 01 00 00 00 a8 20 74 90 01 01 8d 85 90 01 02 ff ff 90 02 01 e8 90 01 02 ff ff f7 85 90 01 02 ff ff 00 90 00 } //01 00 
		$a_03_14 = {a9 e0 01 00 00 0f 84 90 01 01 00 00 00 a8 20 74 90 01 01 8d 90 01 03 ff ff e8 90 01 02 ff ff f6 85 90 01 02 ff ff 90 00 } //01 00 
		$a_03_15 = {a9 e0 01 00 00 0f 84 90 01 01 00 00 00 a8 20 74 90 01 01 8d b5 90 01 02 ff ff e8 90 01 02 ff ff f7 45 90 01 02 00 10 00 90 00 } //01 00 
		$a_03_16 = {69 f6 60 ea 00 00 68 90 01 02 00 00 69 ff 60 ea 00 00 6a 00 8d 44 24 90 01 01 c1 eb 10 50 69 db 60 ea 00 00 e8 90 00 } //01 00 
		$a_03_17 = {c1 ee 10 69 db 60 ea 00 00 69 f6 60 ea 00 00 ff 15 90 01 04 32 c0 8d 7c 24 10 b9 90 01 01 02 00 00 f3 aa 90 00 } //01 00 
		$a_03_18 = {80 78 01 d8 75 20 8b 90 01 01 04 03 c8 eb 15 80 38 ff 75 0f 80 78 01 fe 75 09 81 78 02 3f 10 00 00 74 90 00 } //01 00 
		$a_03_19 = {b8 09 08 00 02 39 45 90 01 01 77 90 01 01 80 7d 08 01 0f 85 90 01 01 00 00 00 39 45 90 01 01 0f 82 90 01 01 00 00 00 68 00 00 00 10 68 22 4e 00 00 90 00 } //00 00 
		$a_00_20 = {5d 04 00 00 35 } //04 03 
	condition:
		any of ($a_*)
 
}