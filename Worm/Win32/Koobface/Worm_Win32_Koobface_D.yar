
rule Worm_Win32_Koobface_D{
	meta:
		description = "Worm:Win32/Koobface.D,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_00_0 = {6d 61 72 6b 32 2e 64 61 74 00 } //4 慭歲⸲慤t
		$a_02_1 = {53 54 41 52 54 00 00 00 61 32 32 90 02 04 2e 63 6f 6d 90 00 } //2
		$a_01_2 = {6e 69 63 6b 3d 25 73 26 6c 6f 67 69 6e 3d 25 73 26 73 75 63 63 65 73 73 } //2 nick=%s&login=%s&success
		$a_01_3 = {46 42 54 41 52 47 45 54 50 45 52 50 4f 53 54 } //2 FBTARGETPERPOST
		$a_00_4 = {2f 66 62 2f 65 72 72 6f 72 2e 70 68 70 00 } //2
		$a_01_5 = {00 66 61 63 25 73 6f 6b 2e 63 6f 6d 2f 00 } //2 昀捡猥歯挮浯/
		$a_01_6 = {00 6d 79 73 70 61 63 65 2e 63 6f 6d 2f 00 } //1 洀獹慰散挮浯/
		$a_01_7 = {53 65 6e 64 54 6f 00 00 68 74 74 70 3a 2f 2f 77 77 77 2e 25 73 2f 6d 61 69 6c 2f 4d 61 69 6c 43 6f 6d 70 6f 73 65 2e 6a 73 70 } //1
	condition:
		((#a_00_0  & 1)*4+(#a_02_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_00_4  & 1)*2+(#a_01_5  & 1)*2+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=10
 
}