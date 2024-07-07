
rule TrojanDropper_Win32_VB_DR{
	meta:
		description = "TrojanDropper:Win32/VB.DR,SIGNATURE_TYPE_PEHSTR,08 00 08 00 09 00 00 "
		
	strings :
		$a_01_0 = {45 00 6e 00 43 00 72 00 59 00 50 00 74 00 33 00 44 00 } //1 EnCrYPt3D
		$a_01_1 = {62 79 20 73 6b 53 74 75 64 } //1 by skStud
		$a_01_2 = {4d 00 65 00 6c 00 74 00 2e 00 62 00 61 00 74 00 } //1 Melt.bat
		$a_01_3 = {42 69 6e 64 65 64 } //1 Binded
		$a_01_4 = {52 43 34 63 72 79 70 74 } //1 RC4crypt
		$a_01_5 = {54 00 65 00 6d 00 70 00 20 00 44 00 69 00 72 00 65 00 63 00 74 00 6f 00 72 00 79 00 } //1 Temp Directory
		$a_01_6 = {40 00 45 00 63 00 68 00 6f 00 20 00 6f 00 66 00 66 00 } //1 @Echo off
		$a_01_7 = {47 00 6f 00 74 00 6f 00 20 00 42 00 65 00 67 00 69 00 6e 00 } //1 Goto Begin
		$a_01_8 = {41 00 70 00 70 00 44 00 69 00 72 00 } //1 AppDir
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1) >=8
 
}