
rule Worm_Win32_Vobfus_gen_D{
	meta:
		description = "Worm:Win32/Vobfus.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 16 00 00 01 00 "
		
	strings :
		$a_03_0 = {f5 6b 00 00 00 0b 90 01 01 00 04 00 31 90 01 02 f5 65 00 00 00 0b 90 01 01 00 04 00 31 90 01 02 f5 72 00 00 00 90 00 } //01 00 
		$a_03_1 = {f4 02 eb 6b 90 01 01 ff eb fb cf e8 c4 90 02 0a f5 00 00 00 00 90 01 01 1c 90 00 } //01 00 
		$a_03_2 = {f4 02 eb 6b 90 01 01 ff eb fb cf e8 c4 e4 70 90 01 01 ff 90 01 02 6b 90 01 01 ff f4 00 cb 1c 90 00 } //01 00 
		$a_01_3 = {f4 02 eb 6b 72 ff eb fb cf e8 c4 fb fe 23 4c ff 50 71 48 ff 2f 4c ff 00 0e 6c 48 ff f5 00 00 00 00 cc } //01 00 
		$a_03_4 = {f4 02 eb 6b 74 ff eb fb cf e8 c4 fd 69 90 01 02 fc 46 71 90 01 02 00 0e 6c 90 01 02 f5 00 00 00 00 cc 1c 90 00 } //01 00 
		$a_03_5 = {f5 70 00 00 00 04 90 01 02 0a 90 01 04 04 90 01 02 fb ef 34 ff f5 6c 00 00 00 0b 90 01 01 00 04 90 01 02 0c ff fb ef fc fe f5 61 00 00 00 04 90 01 02 0a 90 01 04 04 90 01 02 fb ef dc fe f5 79 90 00 } //01 00 
		$a_03_6 = {c1 e7 04 60 ff 9d 90 09 04 00 a9 90 00 } //01 00 
		$a_03_7 = {4a ec fd c9 90 01 02 6c 58 ff ec 39 04 90 01 01 ff 0a 90 01 04 f3 00 01 eb fd 90 00 } //01 00 
		$a_03_8 = {f5 53 00 00 00 0b 90 01 01 00 04 00 46 40 ff f5 63 00 00 00 04 50 ff 0a 90 01 04 04 50 ff fb ef 30 ff f5 72 00 00 00 0b 90 01 01 00 04 00 46 20 ff fb ef 10 ff f5 69 00 00 90 00 } //01 00 
		$a_01_9 = {fd 16 10 00 4c ff fb 27 3c ff fb c4 2c ff fc f6 6c ff } //01 00 
		$a_03_10 = {f5 19 02 00 00 90 03 04 06 c7 1c 90 08 e4 e7 c7 1c 90 08 00 02 f5 00 80 00 00 c7 1c 90 00 } //01 00 
		$a_03_11 = {b3 7f 0c 00 eb ab fb e6 e5 90 09 04 00 eb 6e 90 01 01 ff 90 00 } //01 00 
		$a_01_12 = {eb b3 fb e6 7f 0c 00 eb ab e5 } //01 00 
		$a_03_13 = {e7 aa f5 00 01 00 00 c2 90 09 07 00 4a c2 6c 90 01 01 ff fc 90 90 90 00 } //01 00 
		$a_01_14 = {4a c2 6c 4c ff fc 90 e7 aa 6b 42 ff e7 c2 } //01 00 
		$a_03_15 = {fe fd fc 52 1c 90 09 08 00 1b 90 01 01 00 f5 00 00 00 00 90 00 } //01 00 
		$a_03_16 = {f4 58 fc 0d 90 02 0a f4 5b fc 0d 90 08 01 80 f4 50 fc 0d 90 08 02 30 f3 c3 00 fc 0d 90 00 } //01 00 
		$a_03_17 = {f4 58 fc 0d 0a 90 01 06 1b 90 02 ff f4 5b fc 0d 0a 90 02 0a f4 50 fc 0d 0a 90 08 03 50 f3 c3 00 fc 0d 90 00 } //01 00 
		$a_03_18 = {fd e7 08 00 94 00 1a 90 01 02 00 07 0a 90 01 01 00 00 00 00 27 04 78 ff 04 90 01 02 05 90 01 01 00 24 90 01 01 00 0d 14 00 90 01 01 00 08 90 01 02 0d 58 00 90 01 01 00 3e 78 ff fd e7 08 00 f0 00 1a 90 01 02 00 36 94 08 00 f0 00 1b 90 01 01 00 1b 90 00 } //01 00 
		$a_00_19 = {1b 31 00 2a 23 0c ff 1b 0c 00 2a 23 08 ff 1b 16 00 2a 23 04 ff 1b 12 00 2a 23 00 ff 1b 39 00 2a 23 fc fe 1b 3a 00 2a 23 f8 fe 1b 3b 00 2a 23 f4 fe 1b 0e 00 2a 23 f0 fe 1b 3c 00 } //9c ff 
		$a_01_20 = {5c 00 5c 00 4d 00 41 00 50 00 4c 00 45 00 57 00 4f 00 4f 00 44 00 2c 00 5c 00 5c 00 4d 00 57 00 4f 00 4f 00 44 00 } //9c ff  \\MAPLEWOOD,\\MWOOD
		$a_01_21 = {5c 00 44 00 79 00 6e 00 61 00 54 00 6f 00 75 00 63 00 68 00 } //00 00  \DynaTouch
	condition:
		any of ($a_*)
 
}