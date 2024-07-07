
rule PWS_Win32_Wowsteal_AO{
	meta:
		description = "PWS:Win32/Wowsteal.AO,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {63 3a 5c 70 72 6f 67 72 61 7e 31 5c } //1 c:\progra~1\
		$a_01_1 = {73 76 63 00 53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //1
		$a_01_2 = {73 75 62 6d 69 74 00 00 70 61 73 73 77 6f 72 64 00 00 00 00 57 6f 57 2e 63 6f 6d 20 41 63 63 6f 75 6e 74 2f 50 61 73 73 77 6f 72 64 20 52 65 74 72 69 65 76 61 6c 00 00 65 6d 61 69 6c 00 00 00 61 63 63 6f 75 6e 74 4e 61 6d 65 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}
rule PWS_Win32_Wowsteal_AO_2{
	meta:
		description = "PWS:Win32/Wowsteal.AO,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 "
		
	strings :
		$a_01_0 = {73 6f 66 74 79 69 6e 66 6f 72 77 6f 77 31 } //2 softyinforwow1
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4f 4b 4d 45 5c 25 73 } //2 SOFTWARE\OKME\%s
		$a_01_2 = {77 6f 72 6c 64 6f 66 77 61 72 63 72 61 66 74 } //1 worldofwarcraft
		$a_01_3 = {73 65 63 72 65 74 51 75 65 73 74 69 6f 6e 41 6e 73 77 65 72 } //1 secretQuestionAnswer
		$a_01_4 = {2f 67 65 74 2e 61 73 70 } //1 /get.asp
		$a_01_5 = {25 73 3f 75 3d 25 73 26 70 3d 25 73 26 61 63 74 69 6f 6e 3d 25 73 } //1 %s?u=%s&p=%s&action=%s
		$a_01_6 = {25 73 3f 75 3d 25 73 26 70 3d 25 73 26 75 72 6c 3d 25 73 26 61 63 74 69 6f 6e 3d 25 73 } //1 %s?u=%s&p=%s&url=%s&action=%s
		$a_01_7 = {25 73 3f 75 3d 25 73 26 61 3d 25 73 26 6d 3d 25 73 26 75 72 6c 3d 25 73 26 61 63 74 69 6f 6e 3d 25 73 } //1 %s?u=%s&a=%s&m=%s&url=%s&action=%s
		$a_01_8 = {25 73 3f 75 73 3d 25 73 26 70 73 3d 25 73 26 6c 76 3d 25 73 26 73 65 3d 25 73 26 71 75 3d 25 73 26 6f 73 3d 25 73 } //1 %s?us=%s&ps=%s&lv=%s&se=%s&qu=%s&os=%s
		$a_01_9 = {25 73 3f 75 73 3d 25 73 26 70 73 3d 25 73 26 6c 76 3d 25 73 26 73 65 3d 25 73 26 71 75 3d 25 73 26 6f 73 3d 25 73 26 6d 6f 3d 25 73 } //1 %s?us=%s&ps=%s&lv=%s&se=%s&qu=%s&os=%s&mo=%s
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=10
 
}