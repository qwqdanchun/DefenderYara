
rule Trojan_AndroidOS_Browbot_R{
	meta:
		description = "Trojan:AndroidOS/Browbot.R,SIGNATURE_TYPE_DEXHSTR_EXT,06 00 06 00 09 00 00 "
		
	strings :
		$a_03_0 = {68 61 70 70 79 61 70 69 73 2e 63 6f 6d 2f 64 61 74 61 5f 90 01 02 2f 90 00 } //2
		$a_03_1 = {62 75 74 74 6f 6e 52 65 73 75 6d 65 5f 90 01 02 00 90 00 } //2
		$a_03_2 = {62 75 74 74 6f 6e 43 68 65 63 6b 50 65 72 6d 69 73 73 69 6f 6e 5f 90 01 02 00 90 00 } //2
		$a_03_3 = {73 65 6e 64 65 72 70 68 6f 6e 65 5f 90 01 02 00 90 00 } //2
		$a_03_4 = {53 6d 73 52 65 63 65 69 76 65 72 41 63 74 69 76 69 74 79 5f 90 01 02 00 90 00 } //2
		$a_03_5 = {73 6f 75 72 63 65 7a 5f 90 01 02 00 90 00 } //2
		$a_01_6 = {61 70 69 6e 65 74 63 6f 6d 2e 63 6f 6d 2f 64 61 74 61 } //2 apinetcom.com/data
		$a_03_7 = {64 61 74 61 5f 90 01 02 2f 69 6e 73 74 61 6c 6c 5f 90 01 02 00 90 00 } //2
		$a_01_8 = {61 38 70 2e 6e 65 74 2f 74 71 66 58 44 6e } //2 a8p.net/tqfXDn
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2+(#a_03_5  & 1)*2+(#a_01_6  & 1)*2+(#a_03_7  & 1)*2+(#a_01_8  & 1)*2) >=6
 
}