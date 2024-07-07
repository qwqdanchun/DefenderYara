
rule PWS_Win32_AolWinspy_B{
	meta:
		description = "PWS:Win32/AolWinspy.B,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {56 42 39 38 5c 56 42 36 2e 4f 4c 42 } //1 VB98\VB6.OLB
		$a_01_1 = {37 00 38 00 45 00 31 00 42 00 44 00 44 00 31 00 2d 00 39 00 39 00 34 00 31 00 2d 00 31 00 31 00 63 00 66 00 2d 00 39 00 37 00 35 00 36 00 2d 00 30 00 30 00 41 00 41 00 30 00 30 00 43 00 30 00 30 00 39 00 30 00 38 00 } //1 78E1BDD1-9941-11cf-9756-00AA00C00908
		$a_01_2 = {44 61 72 74 46 74 70 2e 64 6c 6c } //1 DartFtp.dll
		$a_01_3 = {44 61 72 74 46 74 70 43 74 6c 2e 46 74 70 } //1 DartFtpCtl.Ftp
		$a_01_4 = {73 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 44 00 62 00 67 00 43 00 6c 00 72 00 5c 00 37 00 2e 00 31 00 5c 00 66 00 6f 00 6e 00 74 00 73 00 5c 00 6d 00 72 00 75 00 } //1 software\microsoft\DbgClr\7.1\fonts\mru
		$a_01_5 = {57 00 72 00 69 00 74 00 65 00 20 00 41 00 4f 00 4c 00 20 00 4d 00 61 00 69 00 6c 00 20 00 54 00 6f 00 20 00 } //1 Write AOL Mail To 
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}