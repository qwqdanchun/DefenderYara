
rule HackTool_Win32_VB_EA{
	meta:
		description = "HackTool:Win32/VB.EA,SIGNATURE_TYPE_PEHSTR_EXT,35 00 35 00 09 00 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //10 MSVBVM60.DLL
		$a_00_1 = {44 65 74 65 63 74 69 76 65 20 32 6f 6f 33 } //10 Detective 2oo3
		$a_00_2 = {6d 4d 73 6e 50 61 63 6b 65 74 73 54 6f 74 61 6c } //10 mMsnPacketsTotal
		$a_00_3 = {56 65 72 73 69 6f 6e 20 32 2e 30 20 62 79 20 6b 61 6f 73 } //10 Version 2.0 by kaos
		$a_00_4 = {4d 20 53 20 4e 20 2e 20 44 20 45 20 54 20 45 20 43 20 54 20 49 20 56 20 45 } //10 M S N . D E T E C T I V E
		$a_00_5 = {68 74 74 70 3a 2f 2f 77 77 77 2e 38 74 68 2d 77 6f 6e 64 65 72 2e 6e 65 74 } //1 http://www.8th-wonder.net
		$a_00_6 = {68 74 74 70 3a 2f 2f 6b 61 6f 73 2e 38 74 68 77 2e 63 6f 6d } //1 http://kaos.8thw.com
		$a_00_7 = {32 00 63 00 34 00 39 00 66 00 38 00 30 00 30 00 2d 00 63 00 32 00 64 00 64 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 61 00 64 00 36 00 2d 00 30 00 30 00 38 00 30 00 63 00 37 00 65 00 37 00 62 00 37 00 38 00 64 00 } //1 2c49f800-c2dd-11cf-9ad6-0080c7e7b78d
		$a_00_8 = {39 00 33 00 36 00 38 00 32 00 36 00 35 00 45 00 2d 00 38 00 35 00 46 00 45 00 2d 00 31 00 31 00 64 00 31 00 2d 00 38 00 42 00 45 00 33 00 2d 00 30 00 30 00 30 00 30 00 46 00 38 00 37 00 35 00 34 00 44 00 41 00 31 00 } //1 9368265E-85FE-11d1-8BE3-0000F8754DA1
	condition:
		((#a_01_0  & 1)*10+(#a_00_1  & 1)*10+(#a_00_2  & 1)*10+(#a_00_3  & 1)*10+(#a_00_4  & 1)*10+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1) >=53
 
}