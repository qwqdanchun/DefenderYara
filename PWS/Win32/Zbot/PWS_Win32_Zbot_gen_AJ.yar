
rule PWS_Win32_Zbot_gen_AJ{
	meta:
		description = "PWS:Win32/Zbot.gen!AJ,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 10 00 00 "
		
	strings :
		$a_01_0 = {25 42 4f 54 49 44 25 } //10 %BOTID%
		$a_01_1 = {25 42 4f 54 4e 45 54 25 } //10 %BOTNET%
		$a_01_2 = {68 74 74 70 3a 2f 2f 31 32 37 2e 30 2e 30 2e 31 3a 25 75 2f } //1 http://127.0.0.1:%u/
		$a_01_3 = {25 43 4f 4d 4d 41 4e 44 53 45 52 56 45 52 25 } //1 %COMMANDSERVER%
		$a_01_4 = {25 30 32 78 25 30 32 78 2e 63 6f 6d 2f 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 2f 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 2e 70 68 70 } //2 %02x%02x.com/%02x%02x%02x%02x/%02x%02x%02x%02x.php
		$a_01_5 = {76 61 6c 75 65 5f 25 73 5f 25 73 } //10 value_%s_%s
		$a_01_6 = {3a 64 0d 0a 64 65 6c 20 22 25 73 22 0d 0a 69 66 20 65 78 69 73 74 20 22 25 73 22 20 67 6f 74 6f 20 64 00 } //10
		$a_01_7 = {25 42 43 2d 2a 2d 2a 2d 2a 2d 2a 25 } //10 %BC-*-*-*-*%
		$a_01_8 = {25 56 49 44 45 4f 25 00 48 54 54 50 2f 31 2e 31 } //2 嘥䑉佅%呈偔ㄯㄮ
		$a_03_9 = {a9 e0 01 00 00 0f 84 90 01 01 00 00 00 a8 20 74 90 01 01 8d 85 90 01 02 ff ff 90 02 01 e8 90 01 02 ff ff f7 85 90 01 02 ff ff 00 90 00 } //1
		$a_03_10 = {a9 e0 01 00 00 0f 84 90 01 01 00 00 00 a8 20 74 90 01 01 8d 90 01 03 ff ff e8 90 01 02 ff ff f6 85 90 01 02 ff ff 90 00 } //1
		$a_03_11 = {a9 e0 01 00 00 0f 84 90 01 01 00 00 00 a8 20 74 90 01 01 8d b5 90 01 02 ff ff e8 90 01 02 ff ff f7 45 90 01 02 00 10 00 90 00 } //1
		$a_03_12 = {69 f6 60 ea 00 00 68 90 01 02 00 00 69 ff 60 ea 00 00 6a 00 8d 44 24 90 01 01 c1 eb 10 50 69 db 60 ea 00 00 e8 90 00 } //1
		$a_03_13 = {c1 ee 10 69 db 60 ea 00 00 69 f6 60 ea 00 00 ff 15 90 01 04 32 c0 8d 7c 24 10 b9 90 01 01 02 00 00 f3 aa 90 00 } //1
		$a_03_14 = {80 78 01 d8 75 20 8b 90 01 01 04 03 c8 eb 15 80 38 ff 75 0f 80 78 01 fe 75 09 81 78 02 3f 10 00 00 74 90 00 } //1
		$a_03_15 = {b8 09 08 00 02 39 45 90 01 01 77 90 01 01 80 7d 08 01 0f 85 90 01 01 00 00 00 39 45 90 01 01 0f 82 90 01 01 00 00 00 68 00 00 00 10 68 22 4e 00 00 90 00 } //1
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*2+(#a_01_5  & 1)*10+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*2+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1) >=42
 
}