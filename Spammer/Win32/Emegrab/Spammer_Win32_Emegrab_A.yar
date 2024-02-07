
rule Spammer_Win32_Emegrab_A{
	meta:
		description = "Spammer:Win32/Emegrab.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 09 00 00 02 00 "
		
	strings :
		$a_03_0 = {6a 06 6a 01 6a 02 ff 15 90 01 02 01 05 8b e8 83 fd ff 0f 84 90 01 02 00 00 68 d6 04 00 00 66 c7 44 24 08 02 00 90 00 } //02 00 
		$a_01_1 = {81 39 52 61 72 21 75 06 b8 01 00 00 00 c3 8a 01 3c 37 75 0c 80 79 01 7a 75 06 b8 02 00 00 00 c3 3c 42 75 0c } //03 00 
		$a_03_2 = {ff d6 8b 44 24 90 01 01 33 d2 b9 4e 15 00 00 f7 f1 8b c2 3d 13 09 00 00 7d 0e 47 81 ff e8 03 00 00 7c da b8 13 09 00 00 90 00 } //01 00 
		$a_01_3 = {2e 30 2d 39 2d 5d 7b 31 2c 7d 2e 28 3f 3a 69 6e 66 6f 7c 72 75 7c 6e 65 74 7c 62 69 7a 7c 63 6f 6d 7c 73 75 7c 6f 72 67 29 29 } //01 00  .0-9-]{1,}.(?:info|ru|net|biz|com|su|org))
		$a_03_4 = {39 34 2e 37 35 2e 90 10 03 00 2e 90 10 03 00 00 90 00 } //01 00 
		$a_01_5 = {3f 62 61 73 65 3d 00 00 69 6e 64 65 78 2e 70 68 70 00 00 00 47 45 54 20 2f 00 } //01 00 
		$a_01_6 = {45 6d 61 69 6c 47 72 61 62 62 65 72 2e 65 78 65 00 } //01 00 
		$a_01_7 = {46 54 50 5f 47 52 41 42 42 45 52 31 00 } //01 00 
		$a_01_8 = {70 63 72 65 5f 63 61 6c 6c 6f 75 74 00 70 63 72 65 5f 63 6f 6d 70 69 6c 65 00 70 63 72 65 5f 63 6f 6d 70 69 6c 65 32 00 70 63 72 65 5f 65 78 65 63 00 70 63 72 65 5f 66 72 65 65 00 70 63 72 65 5f 6d 61 6c 6c 6f 63 00 70 63 72 65 5f 73 74 61 63 6b 5f 66 72 65 65 00 70 63 72 65 5f 73 74 61 63 6b 5f 6d 61 6c 6c 6f 63 00 } //00 00  捰敲损污潬瑵瀀牣彥潣灭汩e捰敲损浯楰敬2捰敲敟數c捰敲晟敲e捰敲浟污潬c捰敲獟慴正晟敲e捰敲獟慴正浟污潬c
	condition:
		any of ($a_*)
 
}