
rule Ransom_Win32_Mallox_AD_MTB{
	meta:
		description = "Ransom:Win32/Mallox.AD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,ffffffdc 00 ffffffdc 00 06 00 00 "
		
	strings :
		$a_03_0 = {8a 62 ff 8a 02 8a 4a 01 8a 6a 02 88 65 90 01 01 88 45 90 01 01 88 4d 90 01 01 88 6d 90 01 01 f6 c3 90 01 01 75 90 01 01 0f b6 c8 0f b6 45 90 01 01 8a 80 90 01 04 88 45 90 01 01 0f b6 45 90 01 01 8a 80 90 01 04 88 45 90 01 01 0f b6 45 90 01 01 8a 80 90 01 04 88 45 90 00 } //10
		$a_03_1 = {8b c3 c1 e8 02 8a a0 90 01 04 32 a1 90 01 04 8a 4d 90 01 01 8a 6d 90 01 01 8a 42 90 01 01 32 c4 88 42 90 01 01 8a 42 90 01 01 32 45 90 01 01 88 42 90 01 01 8a 42 90 01 01 32 c1 88 42 90 01 01 8a 42 90 01 01 32 c5 43 88 42 90 01 01 83 c2 04 83 fb 90 01 01 0f 82 90 00 } //10
		$a_03_2 = {8a 1c 03 8b 4d 90 01 01 8a 14 01 8a 08 88 5d 90 01 01 8b 5d 90 01 01 8a 1c 03 88 5d 90 01 01 75 90 01 01 0f b6 db 8a 9b 90 01 04 0f b6 c9 88 55 90 01 01 8a 91 90 01 04 0f b6 4d 90 01 01 8a 89 90 01 04 88 5d 90 01 01 0f b6 5d 90 01 01 8a 9b 90 01 04 88 5d 90 01 01 8b 5d 90 01 01 c1 eb 90 01 01 32 93 90 01 04 8b 5d 90 00 } //10
		$a_03_3 = {8a 1c 33 32 da 8b 55 90 01 01 88 1c 3a 8a 50 90 01 01 32 d1 88 50 90 01 01 8a 0e 32 4d 90 01 01 83 c0 04 88 4e 90 01 01 8b 4d 90 01 01 8a 0c 31 32 4d 90 01 01 ff 45 90 01 01 88 0f 83 c6 04 83 c7 04 83 7d 90 01 02 0f 82 90 00 } //10
		$a_01_4 = {5c 00 73 00 79 00 73 00 6e 00 61 00 74 00 69 00 76 00 65 00 5c 00 76 00 73 00 73 00 61 00 64 00 6d 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //100 \sysnative\vssadmin.exe
		$a_01_5 = {64 00 65 00 6c 00 65 00 74 00 65 00 20 00 73 00 68 00 61 00 64 00 6f 00 77 00 73 00 20 00 2f 00 61 00 6c 00 6c 00 20 00 2f 00 71 00 75 00 69 00 65 00 74 00 } //100 delete shadows /all /quiet
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_03_3  & 1)*10+(#a_01_4  & 1)*100+(#a_01_5  & 1)*100) >=220
 
}