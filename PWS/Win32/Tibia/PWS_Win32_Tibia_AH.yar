
rule PWS_Win32_Tibia_AH{
	meta:
		description = "PWS:Win32/Tibia.AH,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 08 00 00 "
		
	strings :
		$a_02_0 = {68 74 74 70 3a 2f 2f 74 69 62 69 61 2d 69 6e 6a 65 63 74 2e 63 6f 6d 2f [0-08] 2e 70 68 70 } //10
		$a_00_1 = {6c 6f 67 69 6e 30 31 2e 74 69 62 69 61 2e 63 6f 6d } //10 login01.tibia.com
		$a_00_2 = {2f 63 20 61 74 74 72 69 62 20 2b 73 20 2b 68 } //10 /c attrib +s +h
		$a_00_3 = {69 6e 66 6e 61 6d 65 3d } //1 infname=
		$a_00_4 = {26 69 6e 66 69 64 3d } //1 &infid=
		$a_00_5 = {26 70 61 73 73 3d } //1 &pass=
		$a_00_6 = {26 61 63 63 3d } //1 &acc=
		$a_00_7 = {26 6e 69 63 6b 3d } //1 &nick=
	condition:
		((#a_02_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1) >=33
 
}