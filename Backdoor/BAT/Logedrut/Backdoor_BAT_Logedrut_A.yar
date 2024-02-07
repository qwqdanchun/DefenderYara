
rule Backdoor_BAT_Logedrut_A{
	meta:
		description = "Backdoor:BAT/Logedrut.A,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1c 00 08 00 00 10 00 "
		
	strings :
		$a_01_0 = {53 68 61 72 70 53 65 72 76 65 72 2e 65 78 65 } //02 00  SharpServer.exe
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //02 00  牆浯慂敳㐶瑓楲杮䌀敲瑡䑥捥祲瑰牯
		$a_01_2 = {67 65 74 5f 41 62 73 6f 6c 75 74 65 55 72 69 00 67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //02 00  敧彴扁潳畬整牕i敧彴硅捥瑵扡敬慐桴
		$a_01_3 = {47 65 74 44 72 69 76 65 73 00 67 65 74 5f 49 73 52 65 61 64 79 } //02 00 
		$a_01_4 = {73 00 74 00 65 00 70 00 3d 00 31 00 26 00 69 00 64 00 3d 00 } //02 00  step=1&id=
		$a_01_5 = {62 00 75 00 66 00 66 00 65 00 72 00 74 00 79 00 70 00 65 00 3d 00 } //02 00  buffertype=
		$a_01_6 = {7b 00 7b 00 22 00 64 00 22 00 3a 00 22 00 7b 00 30 00 7d 00 22 00 2c 00 22 00 74 00 73 00 22 00 3a 00 7b 00 31 00 7d 00 2c 00 22 00 66 00 73 00 22 00 3a 00 7b 00 32 00 7d 00 2c 00 22 00 64 00 74 00 22 00 3a 00 7b 00 33 00 7d 00 7d 00 7d 00 } //02 00  {{"d":"{0}","ts":{1},"fs":{2},"dt":{3}}}
		$a_01_7 = {26 00 73 00 74 00 61 00 72 00 74 00 70 00 6f 00 73 00 3d 00 } //00 00  &startpos=
		$a_00_8 = {87 10 00 00 08 7f f5 d8 d9 98 1f d2 32 d8 8b ed d0 84 00 00 5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}