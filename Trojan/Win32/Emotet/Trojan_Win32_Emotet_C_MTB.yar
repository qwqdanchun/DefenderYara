
rule Trojan_Win32_Emotet_C_MTB{
	meta:
		description = "Trojan:Win32/Emotet.C!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 0b 00 00 "
		
	strings :
		$a_00_0 = {55 8b ec 53 8b 5d 10 56 33 f6 85 db 74 2d 57 8b 7d 08 8b cf 8d 51 02 66 8b 01 83 c1 02 66 85 c0 75 f5 2b ca 8b c6 d1 f9 33 d2 f7 f1 8b 4d 0c 8a 04 57 30 04 0e 46 3b f3 75 d8 5f 5e 5b 5d c3 } //1
		$a_02_1 = {55 8b ec 56 33 f6 39 75 10 74 25 53 8b 5d 08 57 8b 7d 0c 53 e8 90 01 02 00 00 59 8b c8 33 d2 8b c6 f7 f1 8a 04 53 30 04 3e 46 3b 75 10 75 e5 5f 5b 5e 5d c3 90 00 } //1
		$a_02_2 = {56 33 f6 39 74 24 10 74 22 57 8b 44 24 10 6a 90 01 01 33 d2 5f 8d 0c 06 8b c6 f7 f7 8b 44 24 0c 8a 04 50 30 01 46 3b 74 24 14 75 e0 5f 5e c3 90 00 } //1
		$a_02_3 = {00 00 83 c4 08 8b c8 e8 90 01 02 00 00 8b 45 fc 33 d2 b9 90 01 01 00 00 00 f7 f1 8b 45 0c 03 45 fc 8b 4d 08 8a 00 32 04 51 8b 4d 0c 03 4d fc 88 01 e9 90 01 02 ff ff 8b e5 5d c3 90 00 } //1
		$a_02_4 = {8b 45 0c 8b 4d fc ff 75 08 8d 1c 01 e8 90 01 02 00 00 59 33 d2 8b c8 8b 45 fc f7 f1 8b 45 08 8a 04 50 30 03 ff 45 fc 8b 45 fc 3b 45 10 75 90 01 01 5e 5b 5f c9 c3 90 00 } //1
		$a_00_5 = {6a 00 ff d6 8b c5 8d 50 02 8d 49 00 66 8b 08 83 c0 02 66 85 c9 75 f5 2b c2 d1 f8 8b c8 8b c7 33 d2 f7 f1 83 c7 01 8a 44 55 00 30 44 1f ff 3b 7c 24 1c 0f 85 74 ff ff ff 5e 5d 5b 5f c3 } //1
		$a_02_6 = {ff d6 8b 44 24 18 8b 4c 24 14 8d 1c 28 e8 90 01 02 ff ff 8b c8 33 d2 8b c5 f7 f1 8b 44 24 14 8a 04 50 30 03 45 81 fd 90 01 04 75 90 01 01 5f 5e 5d 5b c3 90 00 } //1
		$a_02_7 = {8b 45 0c 8b 4d fc ff 75 08 8d 1c 01 e8 90 01 02 ff ff 8b c8 8b 45 fc 33 d2 f7 f1 8b 45 08 8a 04 50 30 03 ff 45 fc 8b 45 fc 3b 45 10 75 90 01 01 5e 5b 5f c9 c3 90 00 } //1
		$a_02_8 = {6a 00 6a 00 ff 15 90 01 03 00 8b 55 08 52 e8 90 01 02 00 00 83 c4 04 8b c8 8b 45 fc 33 d2 f7 f1 8b 45 08 0f b7 0c 50 8b 55 0c 03 55 fc 0f b6 02 33 c1 8b 4d 0c 03 4d fc 88 01 e9 90 01 02 ff ff 8b e5 5d c3 90 00 } //1
		$a_02_9 = {57 33 ff 39 7c 24 10 74 29 53 8b 5c 24 0c 56 8b 44 24 14 53 8d 34 07 e8 90 01 04 8b c8 8b c7 33 d2 f7 f1 8a 04 53 30 06 47 3b 7c 24 18 75 df 5e 5b 5f c3 90 00 } //1
		$a_02_10 = {ff d7 8b 45 0c 8b 4d fc ff 75 08 8d 1c 01 e8 90 01 04 8b c8 8b 45 fc 33 d2 f7 f1 8b 45 08 8a 04 50 30 03 ff 45 fc 8b 45 fc 3b 45 10 0f 85 90 01 02 ff ff 5f 5b 5e c9 c3 90 00 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_02_6  & 1)*1+(#a_02_7  & 1)*1+(#a_02_8  & 1)*1+(#a_02_9  & 1)*1+(#a_02_10  & 1)*1) >=1
 
}