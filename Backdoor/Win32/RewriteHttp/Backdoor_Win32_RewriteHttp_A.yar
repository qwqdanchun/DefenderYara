
rule Backdoor_Win32_RewriteHttp_A{
	meta:
		description = "Backdoor:Win32/RewriteHttp.A,SIGNATURE_TYPE_PEHSTR_EXT,36 00 36 00 0d 00 00 "
		
	strings :
		$a_81_0 = {43 48 74 74 70 4d 6f 64 75 6c 65 } //50 CHttpModule
		$a_81_1 = {43 4d 44 7c } //1 CMD|
		$a_81_2 = {57 52 46 7c } //1 WRF|
		$a_81_3 = {50 49 4e 7c } //1 PIN|
		$a_81_4 = {49 4e 4a 7c } //1 INJ|
		$a_81_5 = {44 4d 50 7c } //1 DMP|
		$a_81_6 = {51 75 65 72 79 3d } //1 Query=
		$a_81_7 = {45 42 3a 25 64 21 } //1 EB:%d!
		$a_81_8 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 } //1 CreateProcessA
		$a_81_9 = {25 30 32 64 2f 25 30 32 64 2f 25 30 34 64 20 25 30 32 64 3a 25 30 32 64 3a 25 30 32 64 20 7c 20 25 73 } //1 %02d/%02d/%04d %02d:%02d:%02d | %s
		$a_81_10 = {63 6d 64 2e 65 78 65 } //1 cmd.exe
		$a_81_11 = {2f 63 20 25 73 } //1 /c %s
		$a_81_12 = {63 72 65 64 77 69 7a 2e 65 78 65 } //1 credwiz.exe
	condition:
		((#a_81_0  & 1)*50+(#a_81_1  & 1)*1+(#a_81_2  & 1)*1+(#a_81_3  & 1)*1+(#a_81_4  & 1)*1+(#a_81_5  & 1)*1+(#a_81_6  & 1)*1+(#a_81_7  & 1)*1+(#a_81_8  & 1)*1+(#a_81_9  & 1)*1+(#a_81_10  & 1)*1+(#a_81_11  & 1)*1+(#a_81_12  & 1)*1) >=54
 
}