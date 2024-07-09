
rule Trojan_Win32_Trickbot_O{
	meta:
		description = "Trojan:Win32/Trickbot.O,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {25 00 53 00 79 00 73 00 74 00 65 00 6d 00 44 00 72 00 69 00 76 00 65 00 25 00 5c 00 [0-0a] 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //1
		$a_02_1 = {25 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 6f 00 6f 00 74 00 25 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 [0-0a] 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //1
		$a_00_2 = {74 00 6f 00 6c 00 65 00 72 00 2e 00 70 00 6e 00 67 00 } //1 toler.png
		$a_02_3 = {25 00 73 00 5c 00 43 00 24 00 5c 00 [0-0a] 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //1
		$a_02_4 = {25 00 73 00 5c 00 41 00 44 00 4d 00 49 00 4e 00 24 00 5c 00 [0-0a] 73 00 76 00 63 00 2e 00 65 00 78 00 65 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}