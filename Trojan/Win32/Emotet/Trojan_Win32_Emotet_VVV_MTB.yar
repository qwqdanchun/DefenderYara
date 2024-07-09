
rule Trojan_Win32_Emotet_VVV_MTB{
	meta:
		description = "Trojan:Win32/Emotet.VVV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 1d 00 00 "
		
	strings :
		$a_02_0 = {25 ff 00 00 00 bb ?? ?? ?? ?? 03 c2 99 f7 fb 8a 1f 8a 44 14 ?? 32 d8 88 1f } //1
		$a_81_1 = {54 36 73 72 70 36 54 50 63 50 38 62 51 41 34 50 6d 38 33 38 43 62 76 73 6b 32 50 4e 38 44 } //1 T6srp6TPcP8bQA4Pm838Cbvsk2PN8D
		$a_02_2 = {81 e1 ff 00 00 00 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8a 45 00 8a 94 14 ?? ?? ?? ?? 32 c2 88 45 00 } //1
		$a_81_3 = {37 57 5a 47 61 39 6e 4e 53 4c 32 33 6c 79 69 73 4b 66 69 57 44 4d 77 39 70 72 42 35 54 64 42 4c } //1 7WZGa9nNSL23lyisKfiWDMw9prB5TdBL
		$a_02_4 = {0f b6 c3 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8b 85 ?? ?? ?? ?? 8a 8c 15 ?? ?? ?? ?? 30 08 } //1
		$a_81_5 = {36 31 69 58 35 77 6f 33 73 34 52 32 56 30 4e 47 7a 54 78 4e 59 52 4a 4e 69 6e 46 74 46 4d 50 68 48 6b 36 35 30 } //1 61iX5wo3s4R2V0NGzTxNYRJNinFtFMPhHk650
		$a_02_6 = {99 f7 f9 8a 03 8d 4c 24 ?? c7 84 24 ?? ?? ?? ?? ff ff ff ff 8a 94 14 ?? ?? ?? ?? 32 c2 88 03 90 09 05 00 b9 } //1
		$a_81_7 = {69 73 63 45 33 34 7a 52 79 48 76 52 39 61 34 46 54 38 34 35 56 7a 66 79 31 4b 55 38 30 34 68 44 45 69 } //1 iscE34zRyHvR9a4FT845Vzfy1KU804hDEi
		$a_02_8 = {0f b6 44 04 ?? 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8b 44 24 ?? 8a 4c 14 ?? 30 08 } //1
		$a_81_9 = {51 77 33 31 70 6d 78 45 43 4a 78 51 79 32 6d 37 35 6c 4d 35 69 35 6c 41 77 7a 56 67 63 6a 72 63 69 6d 6f 74 58 44 } //1 Qw31pmxECJxQy2m75lM5i5lAwzVgcjrcimotXD
		$a_81_10 = {75 6a 57 30 4f 43 79 30 50 70 74 42 34 5a 75 78 4d 55 45 4d 78 32 52 53 75 35 30 6d 56 4f 52 61 7a 34 73 30 4a 69 58 } //1 ujW0OCy0PptB4ZuxMUEMx2RSu50mVORaz4s0JiX
		$a_02_11 = {0f b6 4c 24 ?? 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8b 4c 24 ?? 8b 44 24 ?? 83 c1 01 89 4c 24 ?? 8a 54 14 ?? 30 54 08 } //1
		$a_81_12 = {65 6c 68 75 35 32 6f 30 34 30 4a 4c 4f 4a 74 70 7a 37 44 4e 61 79 4b 52 4f 72 4d 70 4a 6a 4e 72 59 } //1 elhu52o040JLOJtpz7DNayKROrMpJjNrY
		$a_02_13 = {0f b6 d3 03 c2 99 b9 ?? ?? ?? ?? f7 f9 8b 4c 24 ?? 8b 44 24 ?? 83 c1 01 89 4c 24 ?? 8a 54 14 ?? 30 54 08 } //1
		$a_81_14 = {70 31 62 45 44 68 36 46 41 6f 52 4b 68 6a 79 63 7a 67 73 61 77 79 4d 30 53 59 6e 4e 42 33 33 75 42 4c 6c 47 46 49 } //1 p1bEDh6FAoRKhjyczgsawyM0SYnNB33uBLlGFI
		$a_02_15 = {03 c2 8b ac 24 ?? ?? ?? ?? 99 f7 f9 8b 8c 24 ?? ?? ?? ?? 8a 04 29 8a 94 14 ?? ?? ?? ?? 32 c2 88 04 29 90 09 05 00 b9 } //1
		$a_02_16 = {0f b6 44 04 ?? 0f b6 4c 24 ?? 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8b 4c 24 ?? 8b 84 24 ?? ?? ?? ?? 8a 54 14 ?? 30 14 01 } //1
		$a_81_17 = {58 38 56 4d 48 35 39 58 38 6b 6d 4d 39 76 30 42 75 64 49 23 4b 64 71 25 76 2a 6c 43 35 66 30 56 } //1 X8VMH59X8kmM9v0BudI#Kdq%v*lC5f0V
		$a_02_18 = {0f b6 54 24 ?? 03 c2 99 b9 ?? ?? ?? ?? f7 f9 8b 4c 24 ?? 8b 44 24 ?? 83 c1 01 89 4c 24 ?? 8a 54 14 ?? 30 54 08 } //1
		$a_81_19 = {4f 5a 46 61 4f 63 68 74 32 7a 57 58 65 41 48 42 45 43 48 46 42 6c 6c 54 41 78 4c 6f 70 7a 50 31 62 30 36 67 72 42 32 59 } //1 OZFaOcht2zWXeAHBECHFBllTAxLopzP1b06grB2Y
		$a_02_20 = {81 e1 ff 00 00 00 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8a 03 8a 54 14 ?? 32 c2 88 03 90 09 04 00 8a 44 34 } //1
		$a_81_21 = {41 75 59 67 46 68 46 6e 56 68 48 59 79 33 79 39 70 6e 43 73 71 45 48 51 51 37 6e 30 42 73 59 5a 6f 56 6a 4b 5a 6d 54 } //1 AuYgFhFnVhHYy3y9pnCsqEHQQ7n0BsYZoVjKZmT
		$a_02_22 = {33 c9 8a 8c 2c ?? ?? ?? ?? 25 ff 00 00 00 03 c1 b9 ?? ?? ?? ?? 99 f7 f9 8b 8c 24 ?? ?? ?? ?? 8b b4 24 ?? ?? ?? ?? 8a 04 31 8a 94 14 ?? ?? ?? ?? 32 c2 88 04 31 } //1
		$a_81_23 = {74 6b 30 45 76 62 32 61 57 74 57 6d 47 79 65 30 4c 36 57 43 46 49 41 74 45 35 56 45 67 61 4a 45 70 72 67 34 54 6d 48 42 33 44 49 4f 4b 52 } //1 tk0Evb2aWtWmGye0L6WCFIAtE5VEgaJEprg4TmHB3DIOKR
		$a_02_24 = {0f b6 07 0f b6 cb 03 c1 99 8b ce 83 4d ?? ff f7 f9 8b 45 ?? 8a 8c 15 ?? ?? ?? ?? 30 08 } //1
		$a_02_25 = {0f b6 cb 03 c1 99 b9 ?? ?? ?? ?? f7 f9 8a 5d 00 8d 4c 24 ?? 8a 94 14 ?? ?? ?? ?? 32 da 88 5d 00 } //1
		$a_81_26 = {33 39 6b 53 46 33 56 51 6a 56 33 79 75 71 30 6d 49 44 6b 75 6b 77 37 35 72 55 69 7a 43 4a 5a 66 68 36 } //1 39kSF3VQjV3yuq0mIDkukw75rUizCJZfh6
		$a_02_27 = {03 c1 8b cf 99 f7 f9 8b 45 ?? 83 4d ?? ff 8a 8c 15 ?? ?? ?? ?? 30 08 90 09 04 00 0f b6 4d } //1
		$a_81_28 = {6a 62 77 71 52 61 36 39 6b 52 62 4e 59 36 52 52 54 52 61 4f 31 61 6a 69 30 6c 4e 7a 48 6a 53 42 56 66 68 79 37 6b 78 6d } //1 jbwqRa69kRbNY6RRTRaO1aji0lNzHjSBVfhy7kxm
	condition:
		((#a_02_0  & 1)*1+(#a_81_1  & 1)*1+(#a_02_2  & 1)*1+(#a_81_3  & 1)*1+(#a_02_4  & 1)*1+(#a_81_5  & 1)*1+(#a_02_6  & 1)*1+(#a_81_7  & 1)*1+(#a_02_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_02_11  & 1)*1+(#a_81_12  & 1)*1+(#a_02_13  & 1)*1+(#a_81_14  & 1)*1+(#a_02_15  & 1)*1+(#a_02_16  & 1)*1+(#a_81_17  & 1)*1+(#a_02_18  & 1)*1+(#a_81_19  & 1)*1+(#a_02_20  & 1)*1+(#a_81_21  & 1)*1+(#a_02_22  & 1)*1+(#a_81_23  & 1)*1+(#a_02_24  & 1)*1+(#a_02_25  & 1)*1+(#a_81_26  & 1)*1+(#a_02_27  & 1)*1+(#a_81_28  & 1)*1) >=1
 
}