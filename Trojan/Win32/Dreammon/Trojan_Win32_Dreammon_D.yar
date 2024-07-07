
rule Trojan_Win32_Dreammon_D{
	meta:
		description = "Trojan:Win32/Dreammon.D,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 07 00 00 "
		
	strings :
		$a_01_0 = {69 6e 69 2e 6f 66 66 69 63 65 73 75 70 64 61 74 65 2e 6e 65 74 00 } //5
		$a_01_1 = {69 6e 69 2e 6f 66 66 69 63 65 32 30 30 35 75 70 64 61 74 65 73 2e 6e 65 74 00 } //5
		$a_01_2 = {25 73 3f 74 79 70 65 3d 25 73 26 76 65 72 3d 25 73 26 74 69 6d 65 3d 25 64 26 67 72 6f 75 70 3d 25 73 26 70 76 65 72 3d 25 73 26 68 6f 73 74 3d 25 73 00 } //5
		$a_01_3 = {68 64 64 5f 73 6d 61 72 74 70 69 70 65 00 } //1 摨彤浳牡灴灩e
		$a_01_4 = {6f 6c 65 73 6d 61 72 74 70 61 72 73 65 2e 78 6d 6c 00 } //1
		$a_01_5 = {6d 73 73 6d 61 72 74 70 6c 75 67 2e 69 6e 69 00 } //1
		$a_01_6 = {73 6d 61 72 74 2f 73 6d 61 72 74 6d 61 69 6e 2e 70 68 70 00 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=12
 
}