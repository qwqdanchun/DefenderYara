
rule Trojan_Win32_Startpage_AFD{
	meta:
		description = "Trojan:Win32/Startpage.AFD,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {2e 74 65 70 22 20 2f 50 20 45 76 65 72 79 6f 6e 65 3a 52 00 fe 25 25 5c 63 6d 64 2e 65 78 65 20 2f 63 20 65 63 68 6f 20 59 7c 20 63 61 63 6c 73 20 22 } //1
		$a_01_1 = {68 74 74 70 3a 2f 2f 25 37 37 25 37 37 25 37 37 25 32 45 25 36 35 25 37 41 25 33 31 25 33 37 25 33 33 25 32 45 25 36 33 25 36 46 25 36 44 2f 74 61 6f 62 61 6f 2f } //1 http://%77%77%77%2E%65%7A%31%37%33%2E%63%6F%6D/taobao/
		$a_01_2 = {68 74 74 70 3a 2f 2f 25 37 39 25 36 46 25 37 35 25 37 38 25 33 31 25 32 45 25 36 33 25 36 46 25 36 44 2f 3f } //1 http://%79%6F%75%78%31%2E%63%6F%6D/?
		$a_01_3 = {5c c1 b4 bd d3 5c d0 a1 d3 ce cf b7 2e 75 72 6c 00 } //1
		$a_01_4 = {5c c1 b4 bd d3 5c cc d4 b1 a6 cd f8 2e 75 72 6c 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}