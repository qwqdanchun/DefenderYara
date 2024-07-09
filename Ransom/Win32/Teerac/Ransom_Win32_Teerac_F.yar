
rule Ransom_Win32_Teerac_F{
	meta:
		description = "Ransom:Win32/Teerac.F,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 2a 00 00 "
		
	strings :
		$a_00_0 = {65 79 75 69 6f 61 } //2 eyuioa
		$a_00_1 = {71 77 72 74 70 73 64 66 67 68 6a 6b 6c 7a 78 63 76 62 6e 6d } //2 qwrtpsdfghjklzxcvbnm
		$a_00_2 = {72 61 63 6b 2d 63 6f 72 65 2e 62 69 6e } //3 rack-core.bin
		$a_00_3 = {6c 00 65 00 70 00 6f 00 64 00 69 00 63 00 6b 00 2e 00 72 00 75 00 } //2 lepodick.ru
		$a_00_4 = {74 00 6f 00 70 00 69 00 63 00 2e 00 70 00 68 00 70 00 } //2 topic.php
		$a_00_5 = {2e 00 65 00 6e 00 63 00 72 00 79 00 70 00 74 00 65 00 64 00 } //1 .encrypted
		$a_03_6 = {66 83 3c 46 2e 74 0a 48 85 c0 7f f4 5f 33 c0 5e c3 8d 7c 46 02 85 ff 74 f3 68 ?? ?? ?? ?? 57 e8 } //3
		$a_01_7 = {32 04 0a 41 88 44 39 ff 3b 0e 72 c7 5b c6 04 39 00 } //1
		$a_01_8 = {32 04 0a 41 66 0f be d0 66 89 54 4f fe 3b 0e 72 c2 33 c0 5b 66 89 04 4f } //1
		$a_03_9 = {8a 14 08 80 f2 ?? 88 14 03 40 3b 86 ?? ?? ?? ?? 72 e8 } //1
		$a_03_10 = {8a 14 01 80 f2 ?? 88 14 07 40 3b 86 ?? ?? ?? ?? 72 e8 } //1
		$a_03_11 = {8a 0c 06 30 08 8b 4c 24 ?? 42 40 3b d1 72 f1 } //1
		$a_03_12 = {8b 14 06 33 11 8b 28 89 29 89 14 03 8b 54 24 ?? 83 c1 04 03 d1 83 c0 04 3b 57 04 7c e3 } //1
		$a_01_13 = {8b 14 28 31 14 06 83 c0 04 3b 47 04 7c f2 } //1
		$a_03_14 = {8b 54 24 10 2b d5 8b b4 07 ?? 00 00 00 8d 0c 28 33 34 0a 83 c0 04 89 31 3b 47 04 7c e9 } //1
		$a_03_15 = {8b 47 08 8a 8c 07 ?? 00 00 00 8b 44 24 ?? 32 08 40 88 4d 00 ff 47 08 45 89 44 24 ?? 4b 85 db 0f 85 } //1
		$a_01_16 = {6a 01 68 22 73 87 5e 6a 01 } //1
		$a_01_17 = {6a 01 68 43 02 7a d2 6a 01 } //1
		$a_01_18 = {6a 01 68 48 91 99 ab 6a 01 } //1
		$a_01_19 = {6a 01 68 f5 6f e3 00 6a 05 } //1
		$a_01_20 = {6a 01 68 f8 2d 5f 7f 6a 01 } //1
		$a_01_21 = {6a 02 68 2a 87 29 5a 6a 01 } //1
		$a_01_22 = {6a 02 68 d4 2a a3 d4 6a 01 } //1
		$a_01_23 = {6a 03 68 0b 7a b5 88 6a 04 } //1
		$a_01_24 = {6a 03 68 d5 fd e2 63 6a 01 } //1
		$a_01_25 = {6a 04 68 57 ee 68 56 6a 01 } //1
		$a_01_26 = {6a 04 68 59 d8 65 91 6a 05 } //1
		$a_01_27 = {6a 04 68 6f b3 8f 8b 6a 05 } //1
		$a_01_28 = {6a 04 68 a4 25 fa 39 6a 05 } //1
		$a_01_29 = {6a 04 68 cf 55 7e 13 6a 05 } //1
		$a_01_30 = {6a 04 68 dc 46 b3 15 6a 01 } //1
		$a_01_31 = {6a 05 68 57 36 73 42 6a 00 } //1
		$a_01_32 = {6a 05 68 6d e5 c5 a5 6a 00 } //1
		$a_01_33 = {6a 05 68 83 b2 bb 44 6a 05 } //1
		$a_01_34 = {6a 05 68 f4 dc 7f a9 6a 05 } //1
		$a_01_35 = {6a 05 68 fc 01 f4 1a 6a 05 } //1
		$a_01_36 = {6a 06 68 87 0e be e8 6a 01 } //1
		$a_01_37 = {6a 07 68 15 42 0e 96 6a 01 } //1
		$a_01_38 = {6a 08 68 1c 81 2b 09 6a 05 } //1
		$a_01_39 = {6a 08 68 94 28 82 5c 6a 05 } //1
		$a_01_40 = {6a 09 68 26 d5 82 cd 6a 00 } //1
		$a_01_41 = {6a 09 68 d7 4a 51 2e 6a 00 } //1
	condition:
		((#a_00_0  & 1)*2+(#a_00_1  & 1)*2+(#a_00_2  & 1)*3+(#a_00_3  & 1)*2+(#a_00_4  & 1)*2+(#a_00_5  & 1)*1+(#a_03_6  & 1)*3+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_01_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1+(#a_01_16  & 1)*1+(#a_01_17  & 1)*1+(#a_01_18  & 1)*1+(#a_01_19  & 1)*1+(#a_01_20  & 1)*1+(#a_01_21  & 1)*1+(#a_01_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_01_27  & 1)*1+(#a_01_28  & 1)*1+(#a_01_29  & 1)*1+(#a_01_30  & 1)*1+(#a_01_31  & 1)*1+(#a_01_32  & 1)*1+(#a_01_33  & 1)*1+(#a_01_34  & 1)*1+(#a_01_35  & 1)*1+(#a_01_36  & 1)*1+(#a_01_37  & 1)*1+(#a_01_38  & 1)*1+(#a_01_39  & 1)*1+(#a_01_40  & 1)*1+(#a_01_41  & 1)*1) >=10
 
}