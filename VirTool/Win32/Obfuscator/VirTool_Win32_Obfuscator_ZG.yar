
rule VirTool_Win32_Obfuscator_ZG{
	meta:
		description = "VirTool:Win32/Obfuscator.ZG,SIGNATURE_TYPE_PEHSTR_EXT,32 00 02 00 14 00 00 "
		
	strings :
		$a_03_0 = {be 01 00 00 00 bb 90 01 02 00 00 b8 90 01 04 e8 90 01 04 8b 15 90 01 04 0f b6 54 32 ff 33 d3 88 54 30 ff 4b 85 db 75 e0 46 90 00 } //1
		$a_03_1 = {be 01 00 00 00 bb 01 00 00 00 b8 90 01 04 e8 90 01 04 8b 15 90 1b 00 0f b6 54 32 ff 33 d3 88 54 30 ff 43 81 fb 90 01 02 00 00 75 dc 46 81 fe 90 00 } //1
		$a_03_2 = {bb 01 00 00 00 b8 90 01 04 e8 90 01 04 8b 15 90 01 04 0f b6 54 32 ff 33 d3 88 54 30 ff 43 81 fb 90 01 02 00 00 75 dc 4e 85 f6 75 90 09 05 00 be 90 00 } //1
		$a_03_3 = {bb 01 00 00 00 8b 45 fc 8a 44 18 ff e8 90 01 04 33 c7 50 8d 45 fc e8 90 01 04 5a 88 54 18 ff 43 4e 75 e0 90 00 } //1
		$a_03_4 = {0f b6 54 32 ff 33 d7 88 54 30 ff 47 81 ff 90 01 02 00 00 75 dc 4e 85 f6 75 d2 90 09 1a 00 be 90 01 04 bf 01 00 00 00 b8 90 01 04 e8 90 01 04 8b 15 90 00 } //1
		$a_03_5 = {30 18 4b 85 db 75 f9 40 4e 75 f0 90 09 0f 00 be 90 01 04 b8 90 01 04 bb 90 00 } //1
		$a_03_6 = {30 18 43 81 fb 90 01 02 00 00 75 f5 40 4e 75 ec 90 09 0f 00 be 90 01 04 b8 90 01 04 bb 01 00 00 00 90 00 } //1
		$a_03_7 = {db 75 ea 8d 05 90 09 18 00 bb 90 01 04 b8 90 01 04 8b cb ba 90 01 02 00 00 e8 90 01 04 4b 85 90 00 } //1
		$a_03_8 = {8b d7 30 10 47 81 ff 90 01 02 00 00 75 f3 40 4e 75 ea 90 09 0f 00 be 90 01 04 b8 90 01 04 bf 01 00 00 00 90 00 } //1
		$a_03_9 = {8b 40 18 89 45 fc c6 45 90 01 01 47 c6 45 90 01 01 50 c6 45 90 01 01 41 33 c0 90 00 } //1
		$a_03_10 = {40 89 45 f4 c6 45 90 01 01 50 c6 45 90 01 01 47 c6 45 90 01 01 41 33 c0 90 00 } //1
		$a_03_11 = {56 57 c6 45 90 01 01 41 c6 45 90 01 01 50 c6 45 90 01 01 47 33 c0 90 00 } //1
		$a_03_12 = {48 83 f8 00 72 90 09 12 00 c6 45 90 01 01 47 c6 45 90 01 01 41 c6 45 90 01 01 50 8b 45 90 01 01 8b 40 90 00 } //1
		$a_03_13 = {33 c0 40 8b 4d 90 01 01 03 c8 8b d9 4b 8a 1b 3a 5d 90 01 01 75 f0 8a 19 3a 5d 90 01 01 75 e9 8b d9 43 8a 1b 3a 5d 90 09 0c 00 c6 45 90 01 01 42 c6 45 90 01 01 21 c6 45 90 01 01 33 90 00 } //1
		$a_03_14 = {58 89 45 f8 c6 45 90 01 01 54 c6 45 90 01 01 5e 33 c0 40 8b 55 f8 03 d0 8b ca 49 8a 09 3a 4d 90 01 01 75 f0 8a 0a 3a 4d 90 01 01 75 e9 90 00 } //1
		$a_03_15 = {8d 42 01 8b 4d 90 01 01 03 41 08 8d 04 80 33 c9 8a 0c 17 33 c1 48 88 04 17 42 4b 75 e5 90 00 } //1
		$a_03_16 = {8a 0f 3a 4d 90 01 01 75 90 01 01 8a 4f 03 3a 4d 90 01 01 75 90 01 01 8a 4f 07 3a 4d 90 01 01 75 90 00 } //1
		$a_03_17 = {8a 1f 3a 5d 90 01 01 75 90 01 01 8a 5f 03 3a 5d 90 01 01 75 90 01 01 8a 4f 07 3a 4d 90 01 01 75 90 00 } //1
		$a_03_18 = {8a 19 3a 5d 90 01 01 75 3b 8a 59 03 3a 5d 90 01 01 75 33 8a 49 07 3a 4d 90 01 01 75 2b 90 00 } //1
		$a_03_19 = {e8 00 00 00 00 58 89 45 90 01 01 c6 45 90 01 01 5e 42 8b 45 90 01 01 03 c2 8b c8 49 8a 09 3a 4d 90 01 01 75 f0 8a 08 3a 4d 90 01 01 75 e9 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1+(#a_03_16  & 1)*1+(#a_03_17  & 1)*1+(#a_03_18  & 1)*1+(#a_03_19  & 1)*1) >=2
 
}