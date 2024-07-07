
rule Trojan_Win32_Alureon_DV{
	meta:
		description = "Trojan:Win32/Alureon.DV,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 08 00 00 "
		
	strings :
		$a_01_0 = {68 74 74 70 3a 2f 2f 25 73 2f 6b 78 2e 70 68 70 00 } //2
		$a_01_1 = {25 73 26 61 73 5f 61 63 63 74 3d 25 73 26 63 72 3d 25 73 00 } //2 猥愦彳捡瑣┽♳牣┽s
		$a_01_2 = {44 69 73 61 62 6c 65 41 6e 74 69 53 70 79 77 61 72 65 00 } //1
		$a_01_3 = {57 69 6e 44 65 66 65 6e 64 00 } //1 楗䑮晥湥d
		$a_01_4 = {61 64 6d 69 6e 3b 3b 72 6f 6f 74 3b 41 64 6d 69 6e 3b 31 32 33 34 00 } //1
		$a_01_5 = {43 72 65 64 46 72 65 65 00 } //1
		$a_01_6 = {2e 65 78 65 3f 00 } //1 攮數?
		$a_01_7 = {67 65 74 67 72 61 62 } //1 getgrab
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=4
 
}