
rule Trojan_Win32_VB_AAK{
	meta:
		description = "Trojan:Win32/VB.AAK,SIGNATURE_TYPE_PEHSTR,2b 00 2b 00 08 00 00 "
		
	strings :
		$a_01_0 = {48 69 64 65 46 69 6c 65 45 78 74 } //10 HideFileExt
		$a_01_1 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //10 Scripting.FileSystemObject
		$a_01_2 = {53 00 68 00 6f 00 77 00 53 00 75 00 70 00 65 00 72 00 48 00 69 00 64 00 64 00 65 00 6e 00 } //10 ShowSuperHidden
		$a_01_3 = {56 42 35 21 36 26 76 62 36 63 68 73 2e 64 6c 6c } //10 VB5!6&vb6chs.dll
		$a_01_4 = {49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 45 00 58 00 45 00 20 00 66 00 69 00 7a 00 76 00 68 00 77 00 32 00 74 00 6c 00 3f 00 75 00 35 00 69 00 2c 00 5e 00 5e 00 2b 00 6b 00 68 00 67 00 6a 00 62 00 5d 00 28 00 28 00 6b 00 6d 00 72 00 6a 00 6a 00 } //1 IEXPLORE.EXE fizvhw2tl?u5i,^^+khgjb]((kmrjj
		$a_01_5 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 74 00 79 00 64 00 6f 00 77 00 6e 00 } //1 Software\Microsoft\Windows\tydown
		$a_01_6 = {49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 52 00 53 00 2e 00 45 00 58 00 45 00 } //1 IEXPLORERS.EXE
		$a_01_7 = {49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 52 00 53 00 53 00 2e 00 42 00 41 00 4b 00 } //1 IEXPLORERSS.BAK
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*10+(#a_01_3  & 1)*10+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=43
 
}