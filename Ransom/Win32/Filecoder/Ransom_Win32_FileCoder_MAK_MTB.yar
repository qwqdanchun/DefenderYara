
rule Ransom_Win32_FileCoder_MAK_MTB{
	meta:
		description = "Ransom:Win32/FileCoder.MAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 0a 00 00 "
		
	strings :
		$a_80_0 = {41 6c 6c 20 79 6f 75 72 20 66 69 6c 65 73 20 68 61 73 20 62 65 65 6e 20 65 6e 63 72 79 70 74 65 64 } //All your files has been encrypted  10
		$a_80_1 = {57 61 6c 6c 70 61 70 65 72 } //Wallpaper  10
		$a_80_2 = {52 45 41 44 4d 45 2e 74 78 74 } //README.txt  10
		$a_02_3 = {77 00 72 00 69 00 74 00 65 00 20 00 72 00 6f 00 20 00 65 00 6d 00 61 00 69 00 6c 00 20 00 90 02 10 40 00 64 00 69 00 73 00 72 00 6f 00 6f 00 74 00 2e 00 6f 00 72 00 67 00 90 00 } //10
		$a_02_4 = {77 72 69 74 65 20 72 6f 20 65 6d 61 69 6c 20 90 02 10 40 64 69 73 72 6f 6f 74 2e 6f 72 67 90 00 } //10
		$a_80_5 = {22 4f 53 22 3a 20 22 25 73 22 } //"OS": "%s"  2
		$a_80_6 = {22 43 6f 6d 70 4e 61 6d 65 22 3a 20 22 25 73 22 } //"CompName": "%s"  2
		$a_80_7 = {22 65 78 74 22 3a 20 22 25 73 22 } //"ext": "%s"  2
		$a_80_8 = {22 70 72 6f 63 65 73 73 65 73 22 } //"processes"  2
		$a_80_9 = {22 64 72 69 76 65 73 22 } //"drives"  2
	condition:
		((#a_80_0  & 1)*10+(#a_80_1  & 1)*10+(#a_80_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*10+(#a_80_5  & 1)*2+(#a_80_6  & 1)*2+(#a_80_7  & 1)*2+(#a_80_8  & 1)*2+(#a_80_9  & 1)*2) >=42
 
}