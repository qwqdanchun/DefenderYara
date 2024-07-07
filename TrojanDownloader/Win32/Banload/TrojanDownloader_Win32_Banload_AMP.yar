
rule TrojanDownloader_Win32_Banload_AMP{
	meta:
		description = "TrojanDownloader:Win32/Banload.AMP,SIGNATURE_TYPE_PEHSTR_EXT,ffffffd6 01 ffffffc2 01 09 00 00 "
		
	strings :
		$a_01_0 = {42 5a 4f 45 36 59 4f 46 38 30 52 48 37 59 51 48 37 58 4f 45 35 56 4d 43 35 57 4d 45 35 56 4d 43 33 54 4a 32 56 4c 43 32 } //300 BZOE6YOF80RH7YQH7XOE5VMC5WME5VMC3TJ2VLC2
		$a_01_1 = {34 34 45 32 37 36 41 42 36 35 46 43 33 36 45 42 31 37 42 33 45 33 37 42 42 42 31 42 44 45 31 46 44 39 30 38 32 32 33 31 44 46 37 } //100 44E276AB65FC36EB17B3E37BBB1BDE1FD9082231DF7
		$a_01_2 = {30 42 45 36 32 38 44 43 39 36 42 39 44 38 45 43 36 36 39 38 33 } //10 0BE628DC96B9D8EC66983
		$a_01_3 = {42 35 35 33 43 43 35 41 44 45 30 33 31 31 32 43 33 37 34 36 42 46 34 31 44 44 30 37 30 46 33 44 } //50 B553CC5ADE03112C3746BF41DD070F3D
		$a_01_4 = {34 33 44 43 37 33 46 33 30 37 36 34 45 44 30 43 32 32 35 42 41 46 41 43 42 36 32 33 } //50 43DC73F30764ED0C225BAFACB623
		$a_01_5 = {36 33 39 31 35 45 38 32 41 43 32 39 44 33 30 45 33 32 41 33 32 30 44 37 30 33 } //50 63915E82AC29D30E32A320D703
		$a_01_6 = {39 34 34 41 45 38 31 31 43 30 31 33 44 42 31 43 43 43 } //10 944AE811C013DB1CCC
		$a_01_7 = {31 36 32 39 32 31 32 32 32 33 41 34 34 35 46 43 32 46 41 36 33 38 43 45 36 42 45 44 36 44 38 37 42 42 31 36 30 46 } //10 1629212223A445FC2FA638CE6BED6D87BB160F
		$a_01_8 = {35 31 38 34 41 44 35 43 38 42 43 44 31 39 43 37 36 38 45 39 36 36 39 39 } //10 5184AD5C8BCD19C768E96699
	condition:
		((#a_01_0  & 1)*300+(#a_01_1  & 1)*100+(#a_01_2  & 1)*10+(#a_01_3  & 1)*50+(#a_01_4  & 1)*50+(#a_01_5  & 1)*50+(#a_01_6  & 1)*10+(#a_01_7  & 1)*10+(#a_01_8  & 1)*10) >=450
 
}