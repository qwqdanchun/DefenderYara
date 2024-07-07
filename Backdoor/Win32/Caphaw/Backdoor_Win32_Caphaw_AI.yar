
rule Backdoor_Win32_Caphaw_AI{
	meta:
		description = "Backdoor:Win32/Caphaw.AI,SIGNATURE_TYPE_PEHSTR_EXT,65 00 65 00 1c 00 00 "
		
	strings :
		$a_03_0 = {db 44 24 08 7d 06 dc 05 90 01 04 d9 fe e8 90 01 02 00 00 03 04 24 89 04 24 8b 54 24 04 42 89 54 24 04 81 7c 24 04 90 01 04 72 90 00 } //100
		$a_03_1 = {db 44 24 08 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa ff 90 02 4f 8b 90 01 01 24 90 03 01 01 41 42 89 90 01 01 24 81 3c 24 90 01 04 90 03 02 01 0f 82 72 90 00 } //100
		$a_03_2 = {8b 54 24 04 d9 fe 85 d2 db 44 24 04 7d 06 dc 05 90 02 0f 89 44 24 04 8b 04 24 40 89 04 24 81 3c 24 90 01 04 72 90 00 } //100
		$a_03_3 = {db 44 24 08 7d 06 dc 05 90 02 08 d9 fe 90 02 2f 89 44 24 04 8b 04 24 40 89 04 24 81 3c 24 90 01 04 0f 82 90 00 } //100
		$a_03_4 = {db 44 24 04 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa fe 90 02 0f 89 44 24 04 8b 14 24 42 89 14 24 81 3c 24 90 01 04 72 90 00 } //100
		$a_03_5 = {db 44 24 08 d9 90 03 01 01 fa ff 90 02 1f 89 54 24 08 8b 54 24 04 42 89 54 24 04 81 7c 24 04 90 01 04 72 90 00 } //100
		$a_03_6 = {db 44 24 04 85 c9 8b f8 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa fe 90 02 2f 8b 4c 24 08 dc 3d 90 01 04 85 c9 db 44 24 08 7d 06 dc 05 90 02 1f 8b 54 24 04 42 89 54 24 04 81 7c 24 04 90 01 04 90 03 01 02 72 0f 82 90 00 } //100
		$a_03_7 = {db 44 24 04 85 90 02 03 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa fe 90 02 4f 8b 90 01 01 24 04 90 03 01 01 41 42 89 90 01 01 24 04 81 7c 24 04 90 01 04 0f 82 90 00 } //100
		$a_03_8 = {db 04 24 85 c0 7d 06 d8 05 90 01 04 dc 0d 90 01 04 8b 4c 24 04 85 c9 dc 0d 90 01 04 db 44 24 04 7d 06 dc 05 90 01 04 de c1 e8 90 01 04 89 44 24 04 8b 14 24 42 89 14 24 81 3c 24 90 01 04 72 90 00 } //100
		$a_03_9 = {db 04 24 85 c0 7d 06 dc 05 90 01 04 d9 fe 90 02 2f 8b 14 24 42 89 14 24 81 3c 24 90 01 04 72 90 00 } //100
		$a_03_10 = {db 44 24 04 90 02 08 85 d2 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa fe 90 02 1f 8b 4c 24 04 41 89 4c 24 04 81 7c 24 04 90 01 04 72 90 00 } //100
		$a_03_11 = {db 44 24 08 90 02 08 85 c9 7d 06 dc 05 90 01 04 d9 90 03 01 01 fa ff 90 02 4f 8b 4c 24 04 41 89 4c 24 04 81 7c 24 04 90 01 04 72 90 00 } //100
		$a_03_12 = {db 44 24 0c d9 ff dc 0d 90 02 2f 8b 4c 24 04 41 89 4c 24 04 81 7c 24 04 90 01 04 90 03 01 02 72 0f 82 90 00 } //100
		$a_03_13 = {db 44 24 14 d9 fa dc 05 90 01 04 dc 6c 24 08 90 02 0f 8b 44 24 04 40 89 44 24 04 81 7c 24 04 90 01 04 72 90 00 } //100
		$a_03_14 = {db 44 24 08 d9 fe db 04 24 7d 06 dc 05 90 02 4f 8b 04 24 40 89 04 24 81 3c 24 90 01 04 72 90 00 } //100
		$a_03_15 = {db 44 24 1c 8b e8 7d 06 dc 05 90 01 04 d9 fe 90 02 2f 2b e8 66 89 2c 3a 46 83 c7 02 3b f3 72 90 00 } //100
		$a_03_16 = {db 44 24 08 d9 fa e8 90 01 04 99 90 02 0f 89 54 24 04 8b 04 24 40 89 04 24 81 3c 24 90 01 04 72 90 00 } //100
		$a_03_17 = {db 44 24 18 d9 fa 90 02 2f 66 8b 0e 48 0b e8 6b ed 13 66 2b cd 66 89 0c 37 83 c6 02 4b 75 90 00 } //100
		$a_01_18 = {8b 43 3c 8b 4c 18 54 8b d1 } //1
		$a_03_19 = {8b 46 3c 8b 4c 90 01 01 54 8b d1 90 00 } //1
		$a_03_20 = {8b 4e 3c 8b 4c 90 01 01 54 8b d1 90 00 } //1
		$a_03_21 = {8b 4b 3c 8b 4c 90 01 01 54 90 02 05 8b d1 90 00 } //1
		$a_03_22 = {8b 53 3c 8b 4c 90 01 01 54 8b c1 90 00 } //1
		$a_01_23 = {8b 55 3c 8b 4c 2a 54 8b c1 } //1
		$a_01_24 = {8b 4d 3c 8b 4c 29 54 8b d1 } //1
		$a_01_25 = {8b 45 3c 8b 4c 28 54 8b d1 } //1
		$a_01_26 = {99 41 f7 f9 66 8b 06 83 c6 02 6b d2 13 66 2b c2 4b 66 89 44 37 fe 75 c6 } //1
		$a_03_27 = {8b 56 3c 8b 4c 90 01 01 54 8b c1 90 00 } //1
	condition:
		((#a_03_0  & 1)*100+(#a_03_1  & 1)*100+(#a_03_2  & 1)*100+(#a_03_3  & 1)*100+(#a_03_4  & 1)*100+(#a_03_5  & 1)*100+(#a_03_6  & 1)*100+(#a_03_7  & 1)*100+(#a_03_8  & 1)*100+(#a_03_9  & 1)*100+(#a_03_10  & 1)*100+(#a_03_11  & 1)*100+(#a_03_12  & 1)*100+(#a_03_13  & 1)*100+(#a_03_14  & 1)*100+(#a_03_15  & 1)*100+(#a_03_16  & 1)*100+(#a_03_17  & 1)*100+(#a_01_18  & 1)*1+(#a_03_19  & 1)*1+(#a_03_20  & 1)*1+(#a_03_21  & 1)*1+(#a_03_22  & 1)*1+(#a_01_23  & 1)*1+(#a_01_24  & 1)*1+(#a_01_25  & 1)*1+(#a_01_26  & 1)*1+(#a_03_27  & 1)*1) >=101
 
}