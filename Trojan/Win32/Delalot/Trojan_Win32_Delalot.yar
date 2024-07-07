
rule Trojan_Win32_Delalot{
	meta:
		description = "Trojan:Win32/Delalot,SIGNATURE_TYPE_PEHSTR,18 00 18 00 08 00 00 "
		
	strings :
		$a_01_0 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 69 6d } //10 taskkill /f /im
		$a_01_1 = {73 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 } //10 shutdown -s
		$a_01_2 = {65 72 61 73 65 20 22 43 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 } //3 erase "C:\Program Files
		$a_01_3 = {40 00 64 00 65 00 6c 00 20 00 5c 00 71 00 20 00 5c 00 73 00 20 00 43 00 3a 00 5c 00 2a 00 2e 00 64 00 6f 00 63 00 } //1 @del \q \s C:\*.doc
		$a_01_4 = {40 00 64 00 65 00 6c 00 20 00 5c 00 71 00 5c 00 20 00 73 00 20 00 43 00 3a 00 5c 00 2a 00 2e 00 74 00 78 00 74 00 } //1 @del \q\ s C:\*.txt
		$a_01_5 = {40 00 64 00 65 00 6c 00 20 00 5c 00 71 00 20 00 5c 00 73 00 20 00 43 00 3a 00 5c 00 2a 00 2e 00 6d 00 70 00 33 00 } //1 @del \q \s C:\*.mp3
		$a_01_6 = {40 00 64 00 65 00 6c 00 20 00 5c 00 71 00 20 00 5c 00 73 00 20 00 43 00 3a 00 5c 00 2a 00 2e 00 6a 00 70 00 67 00 } //1 @del \q \s C:\*.jpg
		$a_01_7 = {40 00 64 00 65 00 6c 00 20 00 5c 00 71 00 20 00 5c 00 73 00 20 00 43 00 3a 00 5c 00 2a 00 2e 00 70 00 64 00 66 00 } //1 @del \q \s C:\*.pdf
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=24
 
}