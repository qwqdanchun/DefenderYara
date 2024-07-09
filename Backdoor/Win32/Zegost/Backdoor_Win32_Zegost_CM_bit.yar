
rule Backdoor_Win32_Zegost_CM_bit{
	meta:
		description = "Backdoor:Win32/Zegost.CM!bit,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 09 00 00 "
		
	strings :
		$a_03_0 = {7e 11 8a 14 01 80 c2 ?? 80 f2 ?? 88 14 01 41 3b ce 7c ef } //10
		$a_01_1 = {4c 6f 61 64 65 72 2e 64 6c 6c 00 44 61 74 61 } //3
		$a_01_2 = {5c 5c 2e 5c 64 68 77 72 74 34 } //2 \\.\dhwrt4
		$a_01_3 = {51 51 47 61 6d 65 5c 78 78 2e 64 61 74 } //2 QQGame\xx.dat
		$a_01_4 = {49 20 61 6d 20 76 69 72 75 73 21 20 46 75 63 6b 20 79 6f 75 } //1 I am virus! Fuck you
		$a_01_5 = {43 4f 4d 53 50 45 43 00 5c 53 6f 75 67 6f 75 2e 6b 65 79 } //1
		$a_01_6 = {5b 42 61 63 6b 73 70 61 63 65 5d 00 5b 43 61 70 73 20 4c 6f 63 6b 5d } //1
		$a_01_7 = {33 36 30 73 64 2e 65 78 65 } //1 360sd.exe
		$a_01_8 = {5c 5c 2e 5c 50 48 59 53 49 43 41 4c 44 52 49 56 45 30 } //1 \\.\PHYSICALDRIVE0
	condition:
		((#a_03_0  & 1)*10+(#a_01_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=15
 
}