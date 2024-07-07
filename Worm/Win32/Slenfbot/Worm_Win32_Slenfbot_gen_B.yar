
rule Worm_Win32_Slenfbot_gen_B{
	meta:
		description = "Worm:Win32/Slenfbot.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,10 00 0d 00 16 00 00 "
		
	strings :
		$a_00_0 = {69 70 63 6f 6e 66 69 67 20 2f 66 6c 75 73 68 64 6e 73 } //1 ipconfig /flushdns
		$a_00_1 = {74 53 6b 4d 61 69 6e 46 6f 72 6d 2e 55 6e 69 63 6f 64 65 43 6c 61 73 73 } //1 tSkMainForm.UnicodeClass
		$a_00_2 = {50 75 54 54 59 } //1 PuTTY
		$a_00_3 = {54 46 72 6d 4d 61 69 6e } //1 TFrmMain
		$a_00_4 = {59 61 68 6f 6f 42 75 64 64 79 4d 61 69 6e } //1 YahooBuddyMain
		$a_00_5 = {4d 53 42 4c 57 69 6e 64 6f 77 43 6c 61 73 73 } //1 MSBLWindowClass
		$a_00_6 = {5f 4f 73 63 61 72 5f 53 74 61 74 75 73 4e 6f 74 69 66 79 } //1 _Oscar_StatusNotify
		$a_00_7 = {5f 5f 6f 78 46 72 61 6d 65 2e 63 6c 61 73 73 5f 5f } //1 __oxFrame.class__
		$a_00_8 = {69 6d 41 70 70 53 79 73 74 65 6d 54 72 61 79 48 61 6e 64 6c 65 72 } //1 imAppSystemTrayHandler
		$a_00_9 = {69 72 63 2e 72 65 63 6f 6e 6e 65 63 74 } //1 irc.reconnect
		$a_00_10 = {25 73 5c 74 65 6d 70 25 69 25 69 25 69 25 69 2e 62 61 74 } //1 %s\temp%i%i%i%i.bat
		$a_00_11 = {6a 09 5b 99 8b cb f7 f9 52 e8 } //1
		$a_03_12 = {6a 04 50 6a 07 68 00 08 00 00 90 09 1b 00 90 02 04 6a 24 90 03 01 02 99 33 d2 59 f7 90 03 01 01 f9 f1 46 83 fe 0a 8a 90 03 05 07 44 15 90 01 01 84 15 90 01 02 ff ff 88 44 35 90 01 01 72 90 01 01 8d 45 90 00 } //10
		$a_03_13 = {33 f6 5a 8b 44 24 90 01 01 bf 00 01 00 00 8a 84 30 90 01 04 32 c2 88 04 0e 8d 42 01 99 f7 ff 46 83 fe 90 01 01 7c df 90 00 } //6
		$a_01_14 = {88 01 8b 45 fc 40 89 45 fc 8b 45 fc 99 b9 00 01 00 00 f7 f9 89 55 fc eb } //6
		$a_03_15 = {8b 45 f8 83 c0 01 89 45 f8 83 7d f8 90 01 01 7d 90 01 01 8b 4d 08 03 4d f8 0f be 91 90 01 04 33 55 fc 8b 45 f4 03 45 f8 88 10 90 00 } //6
		$a_03_16 = {6a 24 59 f7 f1 8b 45 90 01 01 8a 4c 15 90 01 01 88 4c 05 90 01 01 eb 90 01 01 6a 04 8d 45 90 01 01 50 6a 07 68 00 08 00 00 ff 90 00 } //10
		$a_03_17 = {b9 24 00 00 00 f7 f1 46 83 fe 0a 8a 54 14 90 01 01 88 54 34 90 01 01 72 90 01 01 8d 44 24 90 01 01 6a 04 50 6a 07 68 00 08 00 00 ff 15 90 00 } //10
		$a_03_18 = {f7 f1 46 83 fe 0a 8a 04 1a 88 44 35 90 01 01 72 90 01 01 8d 45 90 01 01 6a 04 50 6a 07 68 00 08 00 00 ff 15 90 00 } //10
		$a_03_19 = {6a 00 6a 01 6a 00 6a 11 ff 90 03 04 01 15 90 01 04 d6 6a 00 6a 00 6a 00 6a 56 ff 90 03 04 01 15 90 01 04 d3 50 ff 90 03 04 01 15 90 01 04 d6 6a 00 6a 03 6a 2d 6a 11 ff 90 03 04 01 15 90 01 04 d6 6a 00 6a 00 6a 00 6a 0d ff 90 03 01 01 15 d6 90 00 } //6
		$a_03_20 = {56 6a 01 56 6a 11 ff d3 56 56 56 6a 56 ff 15 90 01 04 50 ff d3 56 6a 03 6a 2d 6a 11 ff d3 56 56 56 6a 0d ff d3 90 00 } //6
		$a_03_21 = {3d b7 00 00 00 75 90 03 02 03 07 56 08 6a 00 ff 15 90 01 04 8d 45 90 01 01 50 8d 45 90 01 01 50 8d 45 90 01 01 50 e8 90 01 04 83 c4 0c 83 7d 90 01 01 05 75 25 83 7d 90 01 01 01 75 1f 8d 4d 90 01 01 e8 90 01 04 ff 15 90 00 } //10
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_03_12  & 1)*10+(#a_03_13  & 1)*6+(#a_01_14  & 1)*6+(#a_03_15  & 1)*6+(#a_03_16  & 1)*10+(#a_03_17  & 1)*10+(#a_03_18  & 1)*10+(#a_03_19  & 1)*6+(#a_03_20  & 1)*6+(#a_03_21  & 1)*10) >=13
 
}