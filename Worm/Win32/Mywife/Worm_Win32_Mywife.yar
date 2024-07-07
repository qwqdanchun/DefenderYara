
rule Worm_Win32_Mywife{
	meta:
		description = "Worm:Win32/Mywife,SIGNATURE_TYPE_PEHSTR,0e 00 0b 00 0f 00 00 "
		
	strings :
		$a_01_0 = {63 41 70 70 48 69 64 65 72 00 } //2 䅣灰楈敤r
		$a_01_1 = {53 70 72 65 61 64 5f 4e 65 74 77 6f 72 6b 00 } //2
		$a_01_2 = {54 68 65 5f 42 65 67 69 6e 00 } //2 桔彥敂楧n
		$a_01_3 = {57 4f 52 4d 5f 45 6e 67 69 6e } //4 WORM_Engin
		$a_01_4 = {42 6c 61 63 6b 57 6f 72 6d 2e } //4 BlackWorm.
		$a_01_5 = {74 69 6d 62 6f 6d 62 00 } //2 楴扭浯b
		$a_01_6 = {32 00 41 00 44 00 30 00 30 00 45 00 44 00 36 00 } //2 2AD00ED6
		$a_01_7 = {72 65 67 41 50 49 00 } //1
		$a_01_8 = {43 4e 65 74 77 6f 72 6b 45 6e 75 6d 00 } //1
		$a_01_9 = {42 6c 6f 63 6b 49 6e 70 75 74 00 } //1
		$a_01_10 = {57 4e 65 74 45 6e 75 6d 52 65 73 6f 75 72 63 65 41 00 } //1 乗瑥湅浵敒潳牵散A
		$a_01_11 = {48 69 64 65 41 70 70 6c 69 63 61 74 69 6f 6e } //1 HideApplication
		$a_01_12 = {71 6c 28 fd f5 00 00 00 00 db 6c 2c fd f5 10 00 00 00 c4 f5 10 00 00 00 c7 c4 04 } //1
		$a_01_13 = {6c 14 00 04 7a ff 6c 0c 00 0a } //1
		$a_01_14 = {6c 28 00 f5 03 00 00 00 c7 6c 28 00 f5 04 00 00 00 c7 c5 1c } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*4+(#a_01_4  & 1)*4+(#a_01_5  & 1)*2+(#a_01_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1+(#a_01_14  & 1)*1) >=11
 
}