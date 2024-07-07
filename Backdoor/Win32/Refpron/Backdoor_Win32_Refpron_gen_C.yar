
rule Backdoor_Win32_Refpron_gen_C{
	meta:
		description = "Backdoor:Win32/Refpron.gen!C,SIGNATURE_TYPE_PEHSTR,12 00 12 00 0a 00 00 "
		
	strings :
		$a_01_0 = {63 6f 6d 73 61 33 32 2e 73 79 73 00 } //10 潣獭㍡⸲祳s
		$a_01_1 = {57 61 72 6e 4f 6e 48 54 54 50 53 54 6f 48 54 54 50 52 65 64 69 72 65 63 74 } //2 WarnOnHTTPSToHTTPRedirect
		$a_01_2 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //2 URLDownloadToFileA
		$a_01_3 = {2f 69 6e 73 74 61 6c 6c 20 2f 73 69 6c 65 6e 74 } //2 /install /silent
		$a_01_4 = {31 37 34 2e 31 33 33 2e 37 32 2e 32 35 30 } //1 174.133.72.250
		$a_01_5 = {31 37 34 2e 31 33 33 2e 31 32 36 2e 32 } //1 174.133.126.2
		$a_01_6 = {37 34 2e 35 35 2e 33 37 2e 32 31 30 } //1 74.55.37.210
		$a_01_7 = {37 34 2e 35 34 2e 32 30 31 2e 32 31 30 } //1 74.54.201.210
		$a_01_8 = {6a 73 61 63 74 69 76 69 74 79 2e 63 6f 6d } //1 jsactivity.com
		$a_01_9 = {62 66 6b 71 2e 63 6f 6d } //1 bfkq.com
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*2+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=18
 
}